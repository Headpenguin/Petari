#pragma once

#include "Game/NameObj/NameObj.hpp"
#include "Game/Util/Functor.hpp"

class DrawAdaptor : NameObj {
public:
    DrawAdaptor(const MR::FunctorBase &, int);
    MR::FunctorBase *mDrawFunc;
};
