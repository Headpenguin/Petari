#pragma once

#include "Game/LiveActor/LiveActor.hpp"

class StarPieceHostInfo {
public:
    NameObj *mHost;
    u32 _4;
    u32 mCount; // 0x08
    u32 _C;
};

class StarPiece : public LiveActor {
public:

    StarPiece(const char *);
    
    virtual void init(const JMapInfoIter &rIter);
    virtual void initAfterPlacement();
    virtual void appear();
    virtual void makeActorAppeared();
    virtual void kill();
    virtual void makeActorDead();
    virtual void startClipped();
    virtual void control();
    virtual void calcAndSetBaseMtx();
    virtual void attackSensor(HitSensor *, HitSensor *);
    virtual bool receiveOtherMsg(u32, HitSensor *, HitSensor *);

    bool throwToTargetCore(const TVec3f &, const TVec3f &, const TVec3f &, f32, bool);

    void exeThrow();
    void exeThrowFall();

    u8 _8C[0xA8 - 0x8C];
    TVec3f mOrigin; // 0xA8
    TVec3f mDestination; // 0xB4
    u8 _C0[0xDC - 0xC0];
    StarPieceHostInfo *mHostInfo; // 0xDC
    u8 _E0[0xEC - 0xE0];
};

