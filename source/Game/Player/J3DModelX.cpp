#include "Game/Player/J3DModelX.hpp"
#include "Game/Util/MemoryUtil.hpp"
#include <revolution/gd/GDBase.h>
#include <JSystem/J3DGraphBase/J3DSys.hpp>
#include <JSystem/J3DGraphBase/J3DShape.hpp>
#include <JSystem/J3DGraphAnimator/J3DModelData.hpp>
#include <JSystem/J3DGraphBase/J3DShapePacket.hpp>
#include <JSystem/J3DGraphBase/J3DMatPacket.hpp>
#include "Game/Util/MtxUtil.hpp"
#include "Game/Util/DirectDraw.hpp"
#include "Game/System/ShapePacketUserData.hpp"

void J3DModelX::directDraw(J3DModel *pOther) {
    j3dSys._38 = this;
    if(_8 & 4) {
        j3dSys._34 |= 4;
    }
    else {
        j3dSys._34 &= ~4;
    }
    if(_8 & 8) {
        j3dSys._34 |= 8;
    }
    else {
        j3dSys._34 &= ~8;
    }
    mModelData->syncJ3DSysFlags();
    j3dSys._58 = mModelData->mMaterialTable.mTexture;
    bool tmp = false;
    if(_1D0) {
        _1D0--;
        tmp = true;
    }
    J3DModelData *modelData;
    for(u16 i = 0; i < (modelData = mModelData)->mMaterialTable.mMaterialCount; i++) {
        J3DMaterial *material = modelData->mMaterialTable.mMaterials[i];
        _1C0 = i;
        if(pOther) {
            drawIn(material, tmp, pOther->_24, pOther);
        }
        else {
            drawIn(material, tmp, _24, nullptr);
        }
    }
    J3DShape::sOldVcdVatCmd = 0;
}

inline J3DShape* getShape(J3DModel *self, u32 idx) {
    return self->mShapePacket[idx]._28;
}

inline J3DShape* replace(J3DShapePacket *dst, J3DShape *src) {
    J3DShape *src2 = dst->_28;
    dst->_28 = src;
    dst->_28->_58 = src2->_58;
    dst->_28->_50 = src2->_50;
    return src2;
}

void J3DModelX::drawIn(J3DMaterial *material, bool a2, MtxPtr mtx, J3DModel *pModel) {
    if(material && material->mShape && !(material->mShape->_C & 1)) {
        J3DMatPacket *materialPacket = mMaterialPacket + material->_14;
        J3DShapePacketX *shapePacket;
        if(pModel) {
            shapePacket = (J3DShapePacketX *)(pModel->mShapePacket + material->mShape->_8);
        }
        else {
            shapePacket = (J3DShapePacketX *)(mShapePacket + material->mShape->_8);
        }
        j3dSys._3C = materialPacket;
        materialPacket->mDL->callDL();
        if(a2) {
            TVec3f trans;
            MR::extractMtxTrans(_24, &trans);
            TDDraw::mixFogColor(trans, _1D4, _1D8);
        }
        shapePacket->_28->loadPreDrawSetting();
        if(shapePacket->mDL) {
            shapePacket->mDL->callDL();
        }
        if(MR::getJ3DShapePacketUserData(shapePacket)) {
            MR::getJ3DShapePacketUserData(shapePacket)->callDL();
        }
        
        for(u32 i = 0; i <= 15; i++) {
            if(mFlags & 1 << i) {
                GXCallDisplayList(_130[i], _170[i]);
            }
        }
        if(_1B8) {
            _1B4 = _1B8;
            _1B8 = nullptr;
        }
    
        if(_1B4 && _1BC) {
            GXCallDisplayList(_1B4, _1BC);
        }

        u32 idx = _1C0;
        if(_1C8[idx]) {
            _1C4[idx] = _1C8[idx];
            _1C8[idx] = 0;
        }
        
        void *cool2 = _1C4[idx];
        if(cool2 && _1CC[idx]) {
            GXCallDisplayList(cool2, _1CC[idx]);
        }
        if(_120) {
            _120(_128, _1C0);
        }
        J3DShape *oldShape;
        if(_12C) {
            oldShape = replace(shapePacket, _12C->mShapePacket[material->mShape->_8]._28);
            shapePacket->_28->_40 = material->mMtx;
        }
        shapePacketDrawFast(shapePacket);
        if(_12C) {
            shapePacket->_28 = oldShape;
        }
    }
}

void J3DModelX::storeDisplayList(_GDLObj *gdl, u32 idx) {
    GDPadCurr32();
    u32 tmp = gdl->ptr - gdl->start + 0x1F & 0xFFFFFFE0;
    _130[idx] = new (32) u8[tmp];
    MR::copyMemory(_130[idx], gdl->start, tmp);
    DCStoreRange(_130[idx], tmp);
    _170[idx] = gdl->ptr - gdl->start;
    GDInitGDLObj(gdl, gdl->start, gdl->length);
}
