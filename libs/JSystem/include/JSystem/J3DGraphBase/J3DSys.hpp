#pragma once

#include <revolution.h>
#include "JSystem/J3DGraphAnimator/J3DModel.hpp"

class J3DTexture;

class J3DSys {
public:
    Mtx mViewMtx;   // 0x0
    u32 _30;
    u32 mFlags; // 0x34
    J3DModel *mCurrentModel; // 0x38
    J3DMatPacket* _3C;
    u32 _40;
    u32 _44;
    u32 _48[2];
    u32 _50;
    u32 _54;
    J3DTexture *_58;
    
    static Mtx mCurrentMtx;
};

extern J3DSys j3dSys;

u32 j3dDefaultViewNo; // 0xdc38(r13)
