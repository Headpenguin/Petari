#pragma once

#include <revolution.h>
#include "JSystem/J3DGraphBase/J3DVertex.hpp"
#include "JSystem/J3DGraphBase/J3DMatPacket.hpp"

class J3DModelData;
class J3DMtxBuffer;

class J3DModel {
public:
    virtual void update();
    virtual void entry();
    virtual void calc();
    virtual void calcMaterial();
    virtual void calcDiffTexMtx();
    virtual void viewCalc();
    virtual ~J3DModel();

    void setBaseScale(const Vec &);
    void calcWeightEnvelopeMtx();
    MtxPtr getDrawMtxPtr();
    void prepareShapePackets();
    void calcBBoardMtx();
    void calcBumpMtx();
    void entryModelData(J3DModelData *, u32, u32);

    J3DModelData* mModelData;       // 0x4
    u32 _8;
    u32 _C;
    void (*_10)(J3DModel*, u32);
    u32 _14;
    TVec3f _18;
    Mtx _24;
    Mtx _54;
    J3DMtxBuffer *_84;
    J3DVertexBuffer mVertexBuffer;  // 0x88
    J3DMatPacket* mMaterialPacket;  // 0xC0
    J3DShapePacket* mShapePacket;   // 0xC4
    u32 _C8;
    u32 _CC;
    u32 _D0;
    u32 _D4;
    u32 _D8;
};