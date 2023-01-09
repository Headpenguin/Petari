#pragma once

#include "Game/System/NerveExecutor.h"
#include "Inline.h"

class ActorStateBaseInterface : public NerveExecutor
{
public:
	ActorStateBaseInterface() : NerveExecutor(0), mIsDead(0) {}
	//INLINE_FUNC_DECL_NO_ARG(ActorStateBaseInterface) : CALL_INLINE_FUNC(NerveExecutor, 0), mIsDead(0) {}
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
    virtual ~ActorStateBase();
};
