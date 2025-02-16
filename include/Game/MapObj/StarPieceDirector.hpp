#pragma once

#include "Game/LiveActor/LiveActorGroup.hpp"

class StarPiece;

class StarPieceDirector : public LiveActorGroup {
public:

    StarPiece* getDeadStarPiece();

    u8 _18[0x94C];
};
