#include "Game/Map/HitInfo.h"
#include "Game/LiveActor/Binder.h"

HitInfo &HitInfo::operator=(const HitInfo &rOther) {
    mParentTriangle.mParts = rOther.mParentTriangle.mParts;
    mParentTriangle.mIdx = rOther.mParentTriangle.mIdx;
    mParentTriangle.mSensor = rOther.mParentTriangle.mSensor;
    mParentTriangle.mNormals[0] = rOther.mParentTriangle.mNormals[0];
    mParentTriangle.mNormals[1] = rOther.mParentTriangle.mNormals[1];
    mParentTriangle.mNormals[2] = rOther.mParentTriangle.mNormals[2];
    mParentTriangle.mNormals[3] = rOther.mParentTriangle.mNormals[3];
    mParentTriangle.mPos[0] = rOther.mParentTriangle.mPos[0];
    mParentTriangle.mPos[1] = rOther.mParentTriangle.mPos[1];
    mParentTriangle.mPos[2] = rOther.mParentTriangle.mPos[2];
    _60 = rOther._60;
    _64 = rOther._64;
    _70 = rOther._70;
    _7C = rOther._7C;
    _88 = rOther._88;

    return *this;
}

Binder::Binder(TMtx34f *mtx, const TVec3f *v1, const TVec3f *v2, f32 a, f32 b, unsigned int c) :
_c(mtx), _10(v1), _14(v2), _18(a), _1c(b), _24(c), _30(0,0,0), _c8(131076.953125f),
_158(131076.953125f), _1e8(131076.953125f) {
	if(!_24) _2c = NULL;
	else {
		new HitInfo[_24];
	}
	clear();
	_1ec |= 0xc0;
	_1ec &= 3;
}
