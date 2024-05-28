#pragma once

class J3DMtxBuffer {
public:
    void calcDrawMtx(u32, const Vec &, const Mtx &);
    void swapNrmMtx();
};
