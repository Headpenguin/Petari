#pragma once

#include "Game/NameObj/NameObj.hpp"

class DrawAdaptor : NameObj {
public:
    DrawAdaptor(const MR::FunctorBase &, int);
    u32 _C;
};
