#include "Game/LiveActor/ActorStateKeeper.h"
#include "Game/LiveActor/Nerve.h"

ActorStateKeeper::ActorStateKeeper(int nervesCount)
	: mNervesCount(nervesCount), mLength(0), mNerves(NULL), mCurrentState(NULL) {
	mNerves = new State [nervesCount];
	for(s32 i = 0; i < mNervesCount; i++) {
		State& e = mNerves[i];
		e.mInterface = NULL;
		e.mNerve = NULL;
		e.mName = NULL;
	}
}

bool ActorStateKeeper::updateCurrentState() {
    return (!mCurrentState) ? false : (mCurrentState->mState)->update();
}

void ActorStateKeeper::startState(const Nerve *pNerve) {
    mCurrentState = findStateInfo(pNerve);

    if (mCurrentState) {
        ActorStateBaseInterface* interface = mCurrentState->mInterface;
        interface->appear();
    }
}

void ActorStateKeeper::endState(const Nerve *pNerve) {
    mCurrentState = findStateInfo(pNerve);

    if (mCurrentState) {
        ActorStateBaseInterface* interface = mCurrentState->mInterface;
        if (!mInterface->mIsDead) {
            mInterface->kill();
        }
    }
}

void ActorStateKeeper::addState(ActorStateBaseInterface* pInterface, const Nerve* pNerve, const char* pName) {
	State& e = mNerves[mLength];
	e.mInterface = pInterface;
	e.mNerve = pNerve;
	e.mName = pName;
	mLength += 1;
}

ActorStateKeeper::State* ActorStateKeeper::findStateInfo(const Nerve *pNerve) {
	for(int i = 0; i < mLength; i++) {
		if(mNerves[i].mNerve == pNerve) return &mNerves[i];
	}
	return NULL;
}
