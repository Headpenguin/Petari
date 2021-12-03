#pragma once

#include <revolution.h>
#include "Game/Util/JMapInfoIter.h"

class JMapIdInfo {
public:
    JMapIdInfo(s32, s32);
    JMapIdInfo(s32, const JMapInfoIter &);

    bool operator==(const JMapIdInfo &) const;

    s32 _0;
    s32 mZoneID;
};