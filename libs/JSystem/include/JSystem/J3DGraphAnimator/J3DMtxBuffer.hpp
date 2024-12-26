#pragma once

#include "JSystem/J3DGraphAnimator/J3DJointTree.hpp"

class J3DMtxBuffer {
public:
    void calcDrawMtx(u32, const Vec &, const Mtx &);
    void calcNrmMtx();
    s32 createDoubleDrawMtx(J3DModelData *, u32);
    void swapNrmMtx();
    /* 0x00 */ J3DJointTree* mJointTree;
    /* 0x04 */ u8* mpScaleFlagArr;
    /* 0x08 */ u8* mpEvlpScaleFlagArr;
    /* 0x0C */ Mtx* mpAnmMtx;
    /* 0x10 */ Mtx* mpWeightEvlpMtx;
    /* 0x14 */ Mtx** mpDrawMtxArr[2];
    /* 0x1C */ Mtx33** mpNrmMtxArr[2];
    /* 0x24 */ Mtx33*** mpBumpMtxArr[2];
    /* 0x2C */ u32 mFlags;
    /* 0x30 */ u32 mCurrentViewNo;
    /* 0x34 */ Mtx* mpUserAnmMtx;
};
