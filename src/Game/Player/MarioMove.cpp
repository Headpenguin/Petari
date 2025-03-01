#include "Game/Player/Mario.hpp"

inline TVec3f scaleInlineOp(const TVec3f &a, f32 b) {
    TVec3f ret(a);
    ret.scale(b);
    return ret;
}

void Mario::calcMoveDir(float stickX, float stickY, TVec3f* moveDir, bool isDisableMove) {
    if (mMovementStates._37)
    {
        calcDir2D(stickX, stickY, moveDir);
    }
    else if (_10._15)
    {
        calcMoveDir2D(stickX, stickY, moveDir);
    }
    else if (mMovementStates._3A)
    {
        this->calcMoveDir25D(stickX, stickY, moveDir);
    }
    else if (!isDisableMove || !retainMoveDir(stickX, stickY, moveDir))
    {
        const TVec3f& screenXDir = getCamDirX(); // right
        const TVec3f& screenYDir = getCamDirY(); // up
        TVec3f screenZDir = -getCamDirZ();
        TVec3f groundXDir;
        TVec3f groundYDir;
        TVec3f groundYDirOrtho;
        TVec3f marioUpDir = -getGravityVec();
        if (!MR::isNearZero(marioUpDir, 0.001f))
        {
            float dot = _398.dot(marioUpDir);
            if (dot <= 0.0f)
            {
                _398 = marioUpDir;
            }
            else
            {
                MR::vecBlendSphere(_398, marioUpDir, &_398, 0.1f);
            }
            MR::normalizeOrZero(&_398);
        }
        
        
        f32 movementDirScreenY = screenYDir.dot(_398);
        f32 movementDirScreenZ = screenZDir.dot(_398);
        f32 absMovementDirScreenY = __fabsf(movementDirScreenY);
        f32 absMovementDirScreenZ = __fabsf(movementDirScreenZ);
        
        if (absMovementDirScreenZ > absMovementDirScreenY)
        {
            groundYDirOrtho = screenYDir;
            if (movementDirScreenZ < 0.0f)
            {
                groundYDirOrtho = -groundYDirOrtho;
            }
            PSVECCrossProduct(&groundYDirOrtho, &_398, &groundXDir);
        }
        else
        {
            groundYDirOrtho = -screenZDir;
            if (movementDirScreenY < 0.0f)
            {
                groundYDirOrtho = -groundYDirOrtho;
                PSVECCrossProduct(&screenZDir, &_398, &groundXDir);
            }
            else
            {
                PSVECCrossProduct(&(-screenZDir), &_398, &groundXDir);
            }
        }
        
        PSVECCrossProduct(&screenXDir, &_398, &groundYDir);
        
        MR::normalizeOrZero(&groundXDir);
        if (MR::isNearZero(groundXDir, 0.001f))
        {
            groundXDir = screenXDir;
        }
        
        MR::normalizeOrZero(&groundYDir);
        if (MR::isNearZero(groundYDir, 0.001f))
        {
            groundYDir = groundYDirOrtho;
        }
        
        *moveDir = groundXDir % stickX - groundYDir % stickY;
        
        if (_10._13)
        {
            TVec3f stack_5C = _130 - _6F4;
            MR::vecKillElement(stack_5C, _700, &stack_5C);
            MR::normalizeOrZero(&stack_5C);
            MR::vecKillElement(*moveDir, _700, moveDir);
            MR::vecKillElement(*moveDir, stack_5C, moveDir);
        }
    }
}