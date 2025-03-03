#pragma once

#include "Game/Enemy/Onimasu.hpp"

class OnimasuPivot : public Onimasu {
public:

    virtual ~OnimasuPivot();
    
    OnimasuPivot(const char *);

    void initFromRailPoint();
    void incrementNextPoint();
    void collectRailPointInfo();
    int getNextPointNo() const;
    int getLastPointNo() const;
    TVec3f* getLastPointNormal() const;
    TVec3f* getNextPointNormal() const;
    void startMoveInner();
    void updatePoseInner();

    int mNextPointNo; // 0x104
    TVec3f *mRailPoints; // 0x108
    int mRailPointsLength; // 0x10C
    TQuat4f _110;
    TQuat4f _120;
};