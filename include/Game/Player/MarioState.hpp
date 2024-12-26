#pragma once

#include "Game/Player/MarioModule.hpp"

#define STATE_MARIO_SWIM 6
#define STATE_MARIO_FP_VIEW 18

class MarioState : public MarioModule {
public:
    MarioState(MarioActor *, u32);

    virtual void init();
    virtual bool proc(u32);
    virtual bool start();
    virtual bool close();
    virtual bool update();
    virtual bool notice();
    virtual bool keep();
    virtual bool postureCtrl(MtxPtr);
    virtual void hitWall(const TVec3f &, HitSensor *);
    virtual void hitPoly(u8, const TVec3f &, HitSensor *);
    virtual bool passRing(const HitSensor *);
    virtual f32 getBlurOffset() const;
    virtual void draw3D() const;

    u32 _8; // MarioState *next; // _8
    u32 _C; // u32 status; // _C
    u8 _10;
};
