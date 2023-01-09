#pragma once

#include "Game/LiveActor/Spine.h"
#include "Inline.h"

class NerveExecutor {
public:
    NerveExecutor(const char *);
    //INLINE_FUNC_DECL(NerveExecutor, const char* a) : _0, mSpine(0) {}

    virtual ~NerveExecutor();

    void initNerve(const Nerve *);
    void updateNerve();
    void setNerve(const Nerve *);
    bool isNerve(const Nerve* ) const;
    s32 getNerveStep() const;

	s32 _0; // This is probably wrong
    Spine* mSpine; // _4
};
