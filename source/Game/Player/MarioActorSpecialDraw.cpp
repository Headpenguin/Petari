#include "Game/Player/DLchanger.hpp"

DL* DLchanger::swap() {
    mCurrDL = (mCurrDL + 1) % mNumDL;
    return mDL + mCurrDL;
}
