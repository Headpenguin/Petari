#pragma once
#include <revolution/types.h>
#include <JSystem/JKernel/JKRHeap.hpp>

class J3DModelX;

struct DL {
    u8 *_0;
    u16 _4;
};

class DLchanger {
public:
    inline DLchanger() {
        mDL = new DL[2];
        mNumDL = 2;
        mCurrDL = 0;
        for(u32 i = 0; i < mNumDL; i++) {
            mDL[i]._0 = new (32) u8[0x100];
        }
    }
    void addDL(J3DModelX *);
    DL* swap();

    DL *mDL;
    u8 mNumDL;
    u8 mCurrDL;
};
