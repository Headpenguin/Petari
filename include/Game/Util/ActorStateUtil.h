#pragma once

class LiveActor;
class ActorStateBaseInterface;
class Nerve;

namespace MR {
    bool updateActorStateAndNextNerve(LiveActor *, ActorStateBaseInterface *, const Nerve *);
    bool updateActorState(LiveActor *, ActorStateBaseInterface *);
};