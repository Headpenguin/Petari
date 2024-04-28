#pragma once

#include <revolution/types.h>

class J3DModelX;

struct DLchangerInternal {
    void *_0;
    u8 _4[4];
};

class DLchanger {
public:
    inline DLchanger() {
        _0 = new DLchangerInternal[2];
        _4 = 2;
        _5 = 0;
        for(u32 i = 0; i < _4; i++) {
            _0[i]._0 = new (32) u8[0x100];
        }
    }
    void addDL(J3DModelX *);
    void swap();

    DLchangerInternal *_0;
    u8 _4;
    u8 _5;
};
