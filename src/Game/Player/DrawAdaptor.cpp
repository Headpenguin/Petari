#include "Game/Player/DrawAdaptor.hpp"
#include "Game/Util/ObjUtil.hpp"

DrawAdaptor::DrawAdaptor(const MR::FunctorBase &drawFunc, int i) : NameObj("ドロー2D") {
    mDrawFunc = drawFunc.clone(nullptr);
    MR::connectToScene(this, -1, -1, -1, i);
}
