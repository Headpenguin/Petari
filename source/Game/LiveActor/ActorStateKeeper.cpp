#include "Game/LiveActor/ActorStateKeeper.h"
#include "Game/LiveActor/Nerve.h"

ActorStateKeeper::ActorStateKeeper(int nervesLength) : mNervesLength(nervesLength), _4(0), mNerves(0), mCurrentState(0) {
	char* mem = new char [mNervesLength * 12];
	mNerves = (ActorStateBaseInterface*)(mem);
	for(unsigned int i = 0; i < mNervesLength; i++) {
		mem[i] = 0;
		mem[i+1] = 0;
		mem[i+2] = 0;
	}
}

bool ActorStateKeeper::updateCurrentState() {
    return (!mCurrentState) ? false : ((ActorStateBaseInterface*)mCurrentState->mExecutor)->update();
}

void ActorStateKeeper::startState(const Nerve *pNerve) {
    mCurrentState = findStateInfo(pNerve);

    if (mCurrentState) {
        ActorStateBaseInterface* interface = (ActorStateBaseInterface*)mCurrentState->mExecutor;
        interface->appear();
    }
}

void ActorStateKeeper::endState(const Nerve *pNerve) {
    mCurrentState = findStateInfo(pNerve);

    if (mCurrentState) {
        ActorStateBaseInterface* interface = (ActorStateBaseInterface*)mCurrentState->mExecutor;
        if (!interface->mIsDead) {
            interface->kill();
        }
    }
}
