#pragma once

#include "Game/Animation/XanimeCore.hpp"
#include "Game/Animation/XanimeResource.hpp"
#include "JSystem/J3DGraphAnimator/J3DModel.hpp"
#include <revolution.h>

class XanimeResourceTable;

class XanimeFrameCtrl : J3DFrameCtrl {
public:
    u32 _14;
};

class XanimePlayer {
public:
    XanimePlayer(J3DModel *, XanimeResourceTable *, XanimePlayer *);
    XanimePlayer(J3DModel *, XanimeResourceTable *);

    void stopAnimation();
    void stopAnimation(const char *);

    void setModel(J3DModel *);

    void updateBeforeMovement();
    void updateAfterMovement();

    void changeAnimationBck(const char *);

    void changeInterpoleFrame(s32);

    void changeTrackAnimation(unsigned char, const char *);

    const char *getCurrentAnimationName() const;

    const char *getCurrentBckName() const;

    void setDefaultAnimation(const char *);

    void changeAnimation(const char *);
    void changeAnimation(const XanimeGroupInfo *);

    void changeCurrentAnimation(const XanimeGroupInfo *);

    void calcAnm(u16);
    void clearAnm(u16);

    inline XanimeCore *getCore() { return mCore; }

    J3DModel *mModel;            // _0
    J3DModelData *mModelData;    // _4
    u8 _8[0x20 - 8];
    XanimeFrameCtrl *_20; // probably a pointer to the active frame ctrl
    XanimeFrameCtrl _24[2];
    u8 _54[0x5C - 0x54];
    const XanimeGroupInfo *mDefaultAnimation;    // _5C
    const XanimeGroupInfo *mCurrentAnimation;    // _60
    const XanimeGroupInfo *mPrevAnimation;       // _64
    const XanimeGroupInfo *_68;
    XanimeCore *mCore;                      // _6C
    XanimeResourceTable *mResourceTable;    // _70
    u8 _74[0x4];
    s32 _78;
    bool _7C;
    bool _7D;
    bool _7E;
    u8 _7F[0x8C - 0x7F];
};