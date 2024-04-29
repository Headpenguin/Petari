#include "Game/AreaObj/AreaObj.hpp"
#include "Game/AreaObj/AreaObjFollower.hpp"
#include "Game/Map/SleepControllerHolder.hpp"
#include "Game/Util.hpp"
#include "Game/Player/MarioActor.hpp"
#include "Game/Player/DLchanger.hpp"
#include "Game/Player/J3DModelX.hpp"
#include "Game/Player/ModelHolder.hpp"
#include "Game/Player/TornadoMario.hpp"
#include "Game/Util/FootPrint.hpp"

void MarioActor::initDrawAndModel() {
    mShadowFunc = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawShadow), 0x29);
    mSilhouetteFunc = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawSilhouette), 0x28);
    mPreWipeFunc = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawPreWipe), 0x41);
    mScreenBlendFunc = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawScreenBlend), 0x2F);
    mIndirectFunc = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawIndirect), 0x24);
    
    if(gIsLuigi) {
        initModelManagerWithAnm("Luigi", "MarioAnime", true);
    }
    else {
        initModelManagerWithAnm("Mario", "MarioAnime", true);
    }

    J3DModelX *model = (J3DModelX *)MR::getJ3DModel(this);
    model->initModel();
    MR::initDLMakerFog(this, true);
    MR::newDifferedDLBuffer(this);
    mModels[0] = model;
    _9E4 = 0;
    _9C0 = 0;
    _B4C = 0;
    _9C8 = 0;
    _A00 = 0;
    _A04 = 0;
    mTornadoMario = nullptr;
    initFireBall();
    _3D2 |= 4;
    initBeeMario();
    initIceMario();
    initInvincibleMario();
    initHopperMario();
    initTeresaMario();
    _3D2 |= 0x80;
    initBoneMario();
    initTornadoMario();
    initBlur();
    mCurrModel = 0;
    _A0B = 0;
    initShadow();
    initHand();
    initFace();
    mDL[0] = new (32) u8[0x100];
    mDL[1] = new (32) u8[0x100];
    mCurrDL = 0;
    mDLchanger = new DLchanger();
    _1A4 = 0.0f;
    swapTextureInit();
    createRainbowDL();
    {
        MR::CurrentHeapRestorer restorer(MR::getSceneHeapGDDR3());
        _B7C = new JUTTexture(0x80, 0x40, GX_TF_RGB565);
        for(u32 i = 0; i < 2; i++) {
            _B80[i] = new JUTTexture(8, 8, GX_TF_IA4);
            _B80[i]->mWrapS = 1;
            _B80[i]->mWrapT = 1;
            _B80[i]->mMagType = 0;
            _B80[i]->mMinType = 0;
            _B80[i]->init();
        }
        _B88 = 0;
        updateRandomTexture(1000.0f);
        updateRandomTexture(1000.0f);
    }
    initScreenBox();
    MR::startBtp(this, "ElementEnd");
}

void MarioActor::drawMarioModel() const
{
    if (isAllHidden()) {
        return;
    }

    if (mTornadoMario) {

        if (mMario->mMovementStates._F) {
            if (mMario->_544 > 2) {
                return;
            }
        }

        // Tornado mario is a separate object from normal mario
        if (!MR::isDead(mTornadoMario) && (MR::isBckPlaying(mTornadoMario, "MarioTornadoEnd") || MR::isBckPlaying(mTornadoMario, "MarioTornadoLoop"))) {
            return;
        }
    }

    switch (mCurrModel) {
    case 3:
        return;
    default:
        break;
        return;
    }

    drawSpinInhibit();
    drawSphereMask();
    bool res = drawDarkMask();

    J3DModelX *pModel = mModels[mCurrModel];

    if (res) {
        pModel->mFlags._10 = true;
    }

    if (!mFlags.mIsHiddenModel) {
        pModel->mFlags._1C = false;
        if (mMario->isStatusActive(0x12)) {

            if (_1A1) {
                return;
            }

            mDLchanger->addDL(pModel);

            MR::showJoint(pModel, "HandR0");
            MR::showJoint(pModel, "HandL0");
            MR::showJoint(pModel, "Face0");
        }
        else {
            if (mCurrModel == 4) {
                pModel->setDynamicDL(nullptr, 0);
            }
            else {
                pModel->setDynamicDL(mDL[mCurrDL], mDLSize);
            }
        }

        if (mAlphaEnable) {
            GXSetAlphaUpdate(1);
            GXSetDstAlpha(1, 0);
        }
        pModel->setDrawView(0);
        pModel->directDraw(nullptr);
        pModel->mFlags.clear();
    }

    if (mMario->isStatusActive(0x12)) {
        MR::hideJoint(pModel, "HandR0");
        MR::hideJoint(pModel, "HandL0");
        MR::hideJoint(pModel, "Face0");
    }

    drawHand();

    if (!MR::isHiddenModel(_A5C)) {
        J3DModelX *pModel = (J3DModelX *)MR::getJ3DModel(_A5C);
        pModel->setDynamicDL(mDL[mCurrDL], mDLSize);
        pModel->directDraw(nullptr);
    }

    if (mAlphaEnable) {
        GXSetAlphaUpdate(0);
        GXSetDstAlpha(0, 0);
    }
}

void MarioActor::draw() const {
    if(_B48) {
        _B48->draw();
    }
    bool tmp = _482 || _481;
    if(!tmp && !_A61 && !_1C3) {
        if(_A0C) {
            drawWallShade(_1F0, _1FC, _208);
        }
        drawMarioModel();
        mMario->draw();
    }
}

void DLchanger::addDL(J3DModelX *pModel) {
    pModel->setDynamicDL(mDL[mCurrDL]._0, mDL[mCurrDL]._4);
}

void J3DModelX::setDynamicDL(u8 *a1, u32 a2) {
    if(!a1) a2 = 0;
    _1B8 = a1;
    _1BC = a2;
}
