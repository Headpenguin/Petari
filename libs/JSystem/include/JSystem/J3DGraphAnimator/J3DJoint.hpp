#pragma once

#include <revolution.h>

class J3DMtxCalc;

class J3DJoint {
public:
    void* mJointData;       // _0
    void* mJointCallback;   // _4
    u8 _8[0x54-0x8];
    J3DMtxCalc *mMtxCalc; // _54
    u8 _58[4];
};