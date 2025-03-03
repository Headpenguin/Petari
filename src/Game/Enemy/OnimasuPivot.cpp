#include "Game/Enemy/OnimasuPivot.hpp"
#include "math_types.hpp"

OnimasuPivot::OnimasuPivot(const char *pName) : Onimasu(pName) {
    _104 = 0;
    _108 = 0;
    _10C = 0;
    ((TVec4f)_110).set<f32>(0.0f, 0.0f, 0.0f, 1.0f);
    ((TVec4f)_120).set<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}

void OnimasuPivot::initFromRailPoint() {
    s32 numRailPoint = MR::getRailPointNum(this) / 2;
    _108 = new TVec3f[numRailPoint];
    _10C = numRailPoint;
}

inline TVec3f getRailPointPos(LiveActor *pActor, int n) {
    TVec3f ret;
    MR::calcRailPointPos(&ret, pActor, n);
    return ret;
}

void OnimasuPivot::startMoveInner() {
    TRot3f stack_50;
    TVec3f stack_44;
    MR::calcRailPointPos(&stack_44, this, getLastPointNo() * 2 + 1);

    TVec3f stack_38 = getRailPointPos(this, getLastPointNo() * 2) - stack_44;
    TVec3f stack_2C = getRailPointPos(this, _104 * 2) - stack_44;

    if(MR::isSameDirection(stack_38, stack_2C, 0.01f)) {
        stack_50.identity();
        stack_50.setRotateInline(_BC, 3.14159295521676540374755859375E-3);
        stack_50.mult(stack_38, stack_38);
    }
    MR::makeQuatFromVec(&_110, stack_38, _BC);
    MR::makeQuatFromVec(&_120, stack_2C, _BC);
}

/* nonmatching */
void OnimasuPivot::updatePoseInner() {
    f32 nextTimePoint = getTimeToNextPoint();
    f32 ratio = getNerveStep() / nextTimePoint;
    if(1.0f < ratio) {
        ratio = 1.0f;
    }

    TQuat4f stack_20(_110);
    stack_20.slerp(_120, ratio);
    TVec3f stack_14(gZeroVec);

    /*
    1.0f - 2.0f * (stack_20.x * stack_20.x) // 1 5
    f32 fr7 = 2.0f * (stack_20.x * stack_20.z) // 6
    f32 fr4 = 2.0f * (stack_20.y * stack_20.z) // 3
    f32 fr5 = 2.0f * (stack_20.w * stack_20.y) // 2
    f32 fr6 2.0f * (stack_20.w * stack_20.x) // 4
    //1
    f32 fr0 = 2.0f * (stack_20.y * stack_20.y) // 7
    //2
    //3
    //4
    //5
    //6
    //7
    f32 fr2 = fr5 - fr4
    f32 fr1 = fr7 + fr6
    f32 fr3 = fr3 - fr0
    */

    f32 fr3 = 1.0f - 2.0f * (stack_20.x * stack_20.x); // 1 5
    f32 fr7 = 2.0f * (stack_20.x * stack_20.z); // 6
    f32 fr4 = 2.0f * (stack_20.y * stack_20.z); // 3
    f32 fr5 = 2.0f * (stack_20.h * stack_20.y); // 2
    f32 fr6 = 2.0f * (stack_20.h * stack_20.x); // 4
    //1
    f32 fr0 = 2.0f * (stack_20.y * stack_20.y); // 7
    //2
    //3
    //4
    //5
    //6
    //7
    f32 fr2 = fr5 - fr4;
    f32 fr1 = fr7 + fr6;
    fr3 = fr3 - fr0;
    stack_14.set<f32>(fr1, fr2, fr3);

    f32 squareMag = stack_14.squared();
    if(squareMag <= 3.81469727e-06f) {
    }
    else {
        stack_14 *= JGeometry::TUtil<f32>::inv_sqrt(squareMag) * nextTimePoint;
    }
    TVec3f stack_8;
    MR::calcRailPointPos(&stack_8, this, getLastPointNo() * 2 + 1);
    stack_14 += stack_8;
    mPosition.set<f32>(stack_14);
}

int OnimasuPivot::getNextPointNo() const {
    return _104 * 2;
}

int OnimasuPivot::getLastPointNo() const {
    int ret = _104 - 1;
    if(ret < 0) {
        ret = MR::getRailPointNum(this) / 2 - 1;
    }
    return ret;
}

TVec3f* OnimasuPivot::getLastPointNormal() const {
    u32 idx = getLastPointNo();
    return &_108[idx];
}

TVec3f* OnimasuPivot::getNextPointNormal() const {
    return &_108[_104];
}

void OnimasuPivot::incrementNextPoint() {
    _104++;
    if(_104 == MR::getRailPointNum(this) / 2) {
        _104 = 0;
    }
}

void OnimasuPivot::collectRailPointInfo() {
    for(int i = 0; i < _10C; i++) {
        TVec3f stack_14(gZeroVec);
        TVec3f stack_8(gZeroVec);
        OnimasuFunction::getPolygonOnRailPoint(&stack_8, &stack_14, this, i * 2);
        _108[i].set<f32>(stack_14);
    }
}
