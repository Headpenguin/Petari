#pragma once

#include <revolution.h>
#include "JSystem/J3DGraphAnimator/J3DModel.hpp"

class J3DTexture;

class J3DSys {
public:
    Mtx mViewMtx;   // _0
    u32 _30;
    u32 _34;
    J3DModel* _38;
    J3DMatPacket* _3C;
    u32 _40;
    u32 _44;
    u32 _48[2];
    u32 _50;
    u32 _54;
    J3DTexture *_58;
    
    static Mtx mCurrentMtx;
};

u32 j3dDefaultViewNo; // dc38(r13)

J3DSys j3dSys;
