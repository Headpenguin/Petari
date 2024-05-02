#include "Game/Player/J3DModelX.hpp"
#include "Game/Util/MemoryUtil.hpp"
#include <revolution/gd/GDBase.h>

void J3DModelX::storeDisplayList(_GDLObj *gdl, u32 idx) {
    GDPadCurr32();
    u32 tmp = gdl->ptr - gdl->start + 0x1F & 0xFFFFFFE0;
    _130[idx] = new (32) u8[tmp];
    MR::copyMemory(_130[idx], gdl->start, tmp);
    DCStoreRange(_130[idx], tmp);
    _170[idx] = gdl->ptr - gdl->start;
    GDInitGDLObj(gdl, gdl->start, gdl->length);
}
