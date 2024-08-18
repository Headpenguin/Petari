#pragma once

#include "Game/NameObj/NameObj.hpp"

class CollisionShadow : NameObj {
public:
    CollisionShadow(f32, f32);

    void setMode(u32);
    void create(const TVec3f &, const TVec3f &, const TVec3f &);

    u8 _C;
    f32 _10;
    f32 _14;
    f32 _18;
    f32 _1C;
    f32 _20;
    TVec3f _24;
    TVec3f _30;
    TVec3f _3C;
    TVec3f _48;
    u32 _54;
    u8 _58[0x34C - 0x58];
};
