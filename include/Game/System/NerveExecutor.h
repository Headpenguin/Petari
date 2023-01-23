#pragma once

#include "Game/LiveActor/Spine.h"
#include "Inline.h"

class NerveExecutor {
public:
	inline NerveExecutor() : mSpine(0) {}
    NerveExecutor(const char *);
    INLINE_FUNC_DECL(NerveExecutor, const char* a1) : mSpine(0) {}

    inline virtual ~NerveExecutor() {};

    void initNerve(const Nerve *);
    void updateNerve();
    void setNerve(const Nerve *);
    bool isNerve(const Nerve* ) const;
    s32 getNerveStep() const;

    Spine* mSpine; // _4
};
