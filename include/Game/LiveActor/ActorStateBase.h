#pragma once

#include "Game/System/NerveExecutor.h"
#include "Inline.h"

class ActorStateBaseInterface : public NerveExecutor
{
public:
    inline ActorStateBaseInterface(const char* pName) : CALL_INLINE_FUNC(NerveExecutor, pName), mIsDead(0) {

    }

    inline ActorStateBaseInterface() : mIsDead(0) {}

    virtual inline ~ActorStateBaseInterface() {

    }

    virtual void init();
    virtual void appear();
    virtual void kill();
    virtual bool update();
    virtual void control();

    u8 mIsDead; // _8
};

template<typename T>
class ActorStateBase : public ActorStateBaseInterface {
public:
    inline ActorStateBase(const char *pName) : ActorStateBaseInterface(pName) {

    }

    virtual ~ActorStateBase() {

    }
};
