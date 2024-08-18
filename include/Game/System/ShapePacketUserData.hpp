#pragma once

class ShapePacketUserData {
public:
    void callDL() const;
};

namespace MR {
    ShapePacketUserData* getJ3DShapePacketUserData(const J3DShapePacket *);
}
