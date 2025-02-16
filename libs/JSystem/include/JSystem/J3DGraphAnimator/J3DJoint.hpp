#pragma once

#include <revolution.h>

class J3DMtxCalc;

class J3DJoint {
public:
    void* mJointData;       // 0x0
    void* mJointCallback;   // 0x4
    u8 _8[0x54-0x8];
    J3DMtxCalc *mMtxCalc; // 0x54
    u8 _58[4];
};