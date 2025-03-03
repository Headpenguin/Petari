#include "Game/Enemy/Onimasu.hpp"
#include "math_types.hpp"

Onimasu::Onimasu(const char *pName) : LiveActor(pName) {
   _BC.x = 1.0f;
   _BC.y = 0.0f;
   _BC.z = 0.0f;
   JGeometry::setTVec3f(&gZeroVec.x, &_F8.x);
    _8C.identity();
    _C8.set<f32>(0.0f, 0.0f, 0.0f, 1.0f);
    _D8.set<f32>(0.0f, 0.0f, 0.0f, 1.0f);
    _E8.set<f32>(0.0f, 0.0f, 0.0f, 1.0f);
}
