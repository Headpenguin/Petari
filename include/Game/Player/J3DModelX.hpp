#pragma once

#include <JSystem/J3DGraphAnimator/J3DModel.hpp>
#include <JSystem/JKernel/JKRHeap.hpp>
#include <JSystem/J3DGraphBase/J3DShapePacket.hpp>
#include <JSystem/J3DGraphAnimator/J3DMtxBuffer.hpp>
#include <revolution/gd/GDBase.h>

class J3DShapeX;
class J3DShapePacketX : public J3DShapePacket {};
class J3DMtxBuffer2 : J3DMtxBuffer {
public:
    void rotationMtx(MtxPtr mtx);
    void calcNrmMtx2();
};
class J3DShape;

class J3DModelX : public J3DModel {
public:
    J3DModelX(J3DModelData *, u32, u32);

    inline void initModel() {
        _DD = 8;
        for(u32 i = 0; i < _DD; i++) {
            _E0[i] = new (32) u8[0xC00]; // First field is a MtxPtr
        }
    }

    virtual ~J3DModelX();

    void simpleDrawShape(J3DMaterial *);
    void storeDisplayList(_GDLObj *, u32);
    void shapePacketDrawFast(J3DShapePacketX *);
    void shapeDrawFast(J3DShapeX *) const;
    void setDynamicDL(u8 *, u32);
    void setDrawView(u32);
    void directDraw(J3DModel *);
    void drawIn(J3DMaterial *, bool, MtxPtr, J3DModel *);
    void viewCalc3(u32, MtxPtr);

    u8 _DC;
    u8 _DD;
    void *_E0[8];
    u32 _100;
    u32 _104;
    u32 _108;
    u32 _10C;
    u32 _110;
    u32 _114;
    u32 _118;
    u32 _11C;
    void (*_120)(void *, u16);
    u32 _124;
    void *_128;
    J3DModel *_12C;
    void *_130[0x10];
    u32 _170[0x10];
    u32 mFlags;
    void *_1B4;
    void *_1B8;
    u32 _1BC;
    u16 _1C0;
    void **_1C4;
    void **_1C8;
    u16 *_1CC;
    u8 _1D0;
    f32 _1D4;
    u32 _1D8;
    u32 _1DC;
    s32 _1E0;
    u8 _1E4;
    u8 _1E5;
};
