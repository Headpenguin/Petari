#include "Game/AreaObj/AreaObj.hpp"
#include "Game/AreaObj/AreaObjFollower.hpp"
#include "Game/Map/SleepControllerHolder.hpp"
#include "Game/Util.hpp"
#include "Game/Player/MarioActor.hpp"
#include "Game/Player/DLchanger.hpp"
#include "Game/Player/J3DModelX.hpp"
#include "Game/Player/ModelHolder.hpp"
#include "Game/Player/TornadoMario.hpp"

void MarioActor::initDrawAndModel() {
    
    //MR::FunctorV0M<MarioActor *, void (MarioActor::*)()> shadowFunc = MR::Functor<MarioActor>(this, &MarioActor::drawShadow);
    _218 = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawShadow), 0x29);
    
    //MR::FunctorV0M<MarioActor *, void (MarioActor::*)()> silhouetteFunc = MR::Functor<MarioActor>(this, &MarioActor::drawSilhouette);
    _21C = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawSilhouette), 0x28);
    
    //MR::FunctorV0M<MarioActor *, void (MarioActor::*)()> preWipeFunc = MR::Functor<MarioActor>(this, &MarioActor::drawPreWipe);
    _220 = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawPreWipe), 0x41);
    
   // MR::FunctorV0M<MarioActor *, void (MarioActor::*)()> screenBlendFunc = MR::Functor<MarioActor>(this, &MarioActor::drawScreenBlend);
    _228 = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawScreenBlend), 0x2F);
    
   // MR::FunctorV0M<MarioActor *, void (MarioActor::*)()> indirectFunc = MR::Functor<MarioActor>(this, &MarioActor::drawIndirect);
    _22C = new DrawAdaptor(MR::Functor<MarioActor>(this, &MarioActor::drawIndirect), 0x24);
    
    if(!gIsLuigi) {
        initModelWithAnm("Luigi", "MarioAnime", true);
    }
    else {
        initModelManagerWithAnm("Mario", "MarioAnime");
    }

    J3DModelX *model = MR::getJ3DModel(this);
    model->_DD = 8;
    for(u32 i = 0; i < model->_DD; i++) {
        model->_E0[i] = new (32) u8[0xC00];
    }
    MR::initDLMakerFog(this, true);
    MR::newDifferedDLBuffer(this);
    _A28[0] = model;
    _9E4 = 0;
    _9C0 = 0;
    _B4C = 0;
    _9C8 = 0;
    _A00 = 0;
    _A04 = 0;
    _98C = 0;
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
    _A0A = 0;
    _A0B = 0;
    initShadow();
    initHand();
    initFace();
    mDL[0] = new (32) u8[0x100];
    mDL[1] = new (32) u8[0x100];
    _1A0 = 0;
    mDLchanger = new DLchanger();
    _1A4 = 0.0f;
    swapTextureInit();
    createRainbowDL();
    {
        MR::CurrentHeapRestorer restorer(MR::getSceneHeapGDDR3());
        _B7C = new JUTTexture(0x80, 0x40, GX_TF_RGB565);
        for(u32 i = 0; i < 2; i++) {
            _B80[i] = new JUTTexture(8, 8, GX_TF_IA4);
            _B80[i]._30 = 1;
            _B80[i]._31 = 1;
            _B80[i]._32 = 0;
            _B80[i]._33 = 0;
            _B80[i].init();
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

    J3DModelX *model = mModels[mCurrModel];

    if (res) {
        model->mFlags._10 = true;
    }

    if (!mFlags.mIsHiddenModel) {
        model->mFlags._1C = false;
        if (mMario->isStatusActive(0x12)) {

            if (_1A1) {
                return;
            }

            mDLchanger->addDL(model);

            MR::showJoint(model, "HandR0");
            MR::showJoint(model, "HandL0");
            MR::showJoint(model, "Face0");
        }
        else {
            if (mCurrModel == 4) {
                model->setDynamicDL(nullptr, 0);
            }
            else {
                model->setDynamicDL(mDL[mCurrDL], mDLSize);
            }
        }

        if (mAlphaEnable) {
            GXSetAlphaUpdate(1);
            GXSetDstAlpha(1, 0);
        }
        model->setDrawView(0);
        model->directDraw(nullptr);
        model->mFlags.clear();
    }

    if (mMario->isStatusActive(0x12)) {
        MR::hideJoint(model, "HandR0");
        MR::hideJoint(model, "HandL0");
        MR::hideJoint(model, "Face0");
    }

    drawHand();

    if (!MR::isHiddenModel(_A5C)) {
        J3DModelX *cool = (J3DModelX *)MR::getJ3DModel(_A5C);
        cool->setDynamicDL(mDL[mCurrDL], mDLSize);
        cool->directDraw(nullptr);
    }

    if (mAlphaEnable) {
        GXSetAlphaUpdate(0);
        GXSetDstAlpha(0, 0);
    }
}
