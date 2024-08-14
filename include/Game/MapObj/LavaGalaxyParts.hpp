#pragma once

#include "Game/LiveActor/LiveActor.hpp"
#include "Game/LiveActor/MaterialCtrl.hpp"
#include "Game/LiveActor/LodCtrl.hpp"

class LavaGalaxyParts : public LiveActor {
public:
    LavaGalaxyParts(const char *);

    virtual ~LavaGalaxyParts();
    virtual void init(const JMapInfoIter &);
    virtual void initAfterPlacement();
    virtual void makeActorAppeared();
    virtual void makeActorDead();
    virtual void control();

    LodCtrl* mLodCtrl;                          // _8C
    ProjmapEffectMtxSetter* mMtxSetter;         // _90
};