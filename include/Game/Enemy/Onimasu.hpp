#pragma once

#include <Game/LiveActor/LiveActor.hpp>

class OnimasuFunction {
public:
    static void getPolygonOnRailPoint(TVec3f *, TVec3f *, const LiveActor *, int);
};

class Onimasu : public LiveActor {
public:

    virtual ~Onimasu();

    Onimasu(const char *);
    
    virtual void initFromRailPoint() = 0;
    virtual void incrementNextPoint() = 0;
    virtual void collectRailPointInfo() = 0;
    virtual int getNextPointNo() const = 0;
    virtual int getLastPointNo() const = 0;
    virtual TVec3f* getLastPointNormal() const = 0;
    virtual TVec3f* getNextPointNormal() const = 0;
    virtual void startMoveInner();
    virtual void updatePoseInner();

    void init(const JMapInfoIter &);
    void initAfterPlacement();
    void calcAndSetBaseMtx();


    int getTimeToNextPoint() const;

    TMtx34f _8C;
    TVec3f _BC;
    TVec4f _C8;
    TVec4f _D8;
    TVec4f _E8;
    TVec3f _F8;
};