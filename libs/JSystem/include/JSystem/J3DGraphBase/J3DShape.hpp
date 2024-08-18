#pragma once

#include <revolution/types.h>

#include "JSystem/J3DGraphBase/J3DMaterial.hpp"

class J3DShape {
public:
    virtual void draw() const;
    virtual void drawFast() const;
    virtual void simpleDraw() const;
    virtual void simpleDrawCache() const;

    void loadPreDrawSetting() const;

    void initialize();

    u32 _4;
    u16 _8;
    u16 _A;
    u32 _C;
    f32 _10;
    f32 _14;
    f32 _18;
    f32 _1C;
    f32 _20;
    f32 _24;
    f32 _28;
    u32 _2C;
    u32 _30;
    u8 _34;
    u32 _38;
    u32 _3C;
    J3DCurrentMtx _40;
    u8 _48;
    u32 _4C;
    u32 _50;
    u32 _54;
    u32 _58;
    u32 _5C;
    u32 *_60;
    
    static u32 sOldVcdVatCmd;
};
