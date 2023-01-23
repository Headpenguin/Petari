#pragma once

#include "Game/LiveActor/Nerve.h"
#include "Game/LiveActor/ActorStateBase.h"

class ActorStateKeeper {
private:
	struct State {
		ActorStateBaseInterface* mInterface;
		const Nerve* mNerve;
		const char* mName;
	};
public:
    ActorStateKeeper(int);

    void addState(ActorStateBaseInterface *, const Nerve *, const char *);
    bool updateCurrentState();
    void startState(const Nerve *);
    void endState(const Nerve *);
    State* findStateInfo(const Nerve *);

    s32 mStatesCapacity;
    s32 mLength;
    State* mStates;           // _8
    State* mCurrentState;           // _C
};
