#pragma once

#include "Game/LiveActor/LiveActor.h"
#include "Game/Player/Mario.h"

class FootPrint;
class JAIAudible;
class MarioNullBck;
class XjointTransform;
class MarioParts;
class RushEndInfo;
class MarioConst;
class MarioEffect;
class MarioAnimator;
class MarioMessenger;
class CollisionShadow;

namespace MR {
	unsigned int getFrameBufferWidth();
}

class MarioActor : public LiveActor {
public:
	MarioActor(const char*);
	~MarioActor();
	void init(const JMapInfoIter&);
	void init2(const TVec3f&, const TVec3f&, long);
	void initAfterPlacement();
	void initAfterOpeningDemo();
	void calcBaseFrontVec(const TVec3f&);
	void playSound(const char*, long);
	void changeAnimation(const char*, const char*);
	void changeAnimationNonStop(const char*);
	void changeAnimationUpper(const char*);
	void stopAnimation(const char*);
	bool isAnimationRun(const char*) const;
	void changeNullAnimation(const char*, signed char);
	void clearNullAnimation(signed char);
	bool isStopNullAnimation() const;
	void changeGameOverAnimation();
	XjointTransform* getJointCtrl(const char*) const;
	void updateRotationInfo();
	void exeWait();
	void movement();
	void control();
	void control2();
	void controlMain();
	void updateBehavior();
	void updateBindRatio();
	bool isInPunchTimerRange() const;
	void updatePunching();
	bool doRush();
	void updateSwingTimer();
	void updateSwingAction();
	bool checkClapCatchStart();
	void updateRealMtx();
	void setUpperRotateY(f32);
	void decLife(unsigned short);
	void decLifeLarge();
	void decLifeMiddle();
	void decLifeSmall();
	void resetWaterLife();
	void updateLife();
	void incLife(unsigned long);
	void changeMaxLife(long);
	bool doPressing();
	void careMovingObject();
	bool doStun();
	void scaleMtx(MtxPtr);
	void updateBaseScaleMtx();
	void getRealMtx(f32 (*) [4], const char*);
	void getGlobalJointMtx(const char*);
	void calcAnimInMovement();
	void forceSetBaseMtx(f32 (*) [4]);
	void calcAnim();
	void calcAndSetBaseMtx();
	void setBlendMtxTimer(unsigned short);
	void getGroundPos(TVec3f* dst) const;
	void getShadowPos() const;
	
	bool isTurning() const;
	bool isJumping() const;
	bool isJumpRising() const;
	bool isPunching() const;
	bool isItemSwinging() const;
	bool isDamaging() const;
	bool isNeedDamageFog() const;
	bool isStaggering() const;
	bool isSleeping() const;
	bool isRefuseTalk() const;
	bool isDebugMode() const;

	void jumpHop();
	void calcCenterPos();
	void calcHeadPos();
	void setPress(unsigned char, int);
	void getResourceTable() const;

	bool isEnableMoveMario() const;
	bool isEnableNerveChange() const;

	void forcceGameOver();
	void forceGameOverAbyss();
	void forceGameOverBlackHole();
	void forceGameOverNonStop();
	void forceGameOverSink();

	void updateCameraInfo();
	bool binderFilter(const Triangle*);
	
	void setPunchHitTimer(unsigned char);
	void initEffect();
	void addSoundObjHolder();
	void initParts();
	void initMorphStringTable();
	void setupSensors();
	void updateTransForCamera();

	void initMember();

	void init2D();

	void initDrawAndModel();

	void resetPadSwing();
	void initActionMatrix();

	TVec3f& getGravityVec();
	TVec3f& getGravityVector();
	void updateGravityVec(bool, bool);
	void changeTeresaAnimation(const char *, long);

	void playEffect(const char *);
	void stopEffect(const char *);

	void updateActionTrigger();
	void updateControllerSwing();
	void updateControllerSwingLeft();
	void update2D();
	void updateTakingPosition();
	void updateSearchLight();
	void updateThrowing();
	void updateBeeWingAnimation();
	void updateFairyStar();
	void updatePlayerMode();
	void updateEffect();
	void updateThrowVector();
	void updateForCamera();
	void updateTornado();

	bool tryJumpRush();
	void initForJump();
	void lockOnDPD();
	bool tryCoinPull();
	bool tryThrow();
	bool tryStandardRush();
	void checkPriorRushTarget();
	unsigned char selectAction(const char *) const;
	bool tryRushInRush();
	void bodyClap();
	bool selectWaterInOut(const char *) const;
	bool selectWaterInOutRush(const HitSensor *) const;
	void playEffectRT(const char *, const TVec3f &, const TVec3f &);
	void emitEffectWaterColumn(const TVec3f &, const TVec3f &);
	bool selectRecoverFlyMeter(const HitSensor *) const;
	void endRush(const RushEndInfo *);
	void stopSpinTicoEffect(bool);
	void stopEffectForce(const char *);
	bool isRequestRush() const;
	bool isRequestSpinJump2P() const;
	bool tryReleaseBombTeresa();
	bool isEnableSpinPunch();
	bool trySpinPunch();
	void shootFireBall();
	void doFreezeAttack();
	void setBlink(const char *);
	void resetSensorCount();
	void getStickValue(f32 *, f32 *);

	inline u32 getHealth() const {
		return mHealth;
	}

	inline const Mario::MovementStates& getMovementStates() const {
		return mMario -> mMovementStates;
	}

	inline const Mario::DrawStates& getDrawStates() const {
		return mMario -> mDrawStates;
	}

	inline const Mario::DrawStates& getPrevDrawStates() const {
		return mMario -> mPrevDrawStates;
	}


	//variables

	struct Wierd {
		u32 _0[0xc];
	};

	char _8c;

	//probably alignment

	u32 _90;
	u32 _94[0x40];
	u32 _194;
	u32 _198;
	u32 _19c;

	//probably alignment
	
	char _1a0;
	char _1a1;

	//probably alignment

	f32 _1a4;
	short _1a8;
	short _1aa;
	f32 _1ac;
	Color8 _1b0;
	char _1b4;
	bool _1b5;

	//probably alignment
	
	u32 _1b8;
	MarioMessenger* _1bc;
	bool _1c0;
	bool _1c1;
	bool _1c2;
	bool _1c3;
	short _1c4;
	short _1c6;
	f32 _1c8;
	f32 _1cc;
	char _1d0;
	char _1d1;
	f32 _1d4;

	struct FBO {
		u32 _0;
		u32 _4;
	};
	
	FBO* _1d8;
	FBO* _1dc;
	bool _1e0;
	char _1e1;
	char _1e2;

	//probably alignment
	
	f32 _1e4;
	short _1e8;

	//probably alignment
	
	f32 _1ec;
	TVec3f _1f0;
	TVec3f _1fc;
	f32 _208;
	u32 _20c;
	char _210;
	char _211;

	// probably alignment
	
	CollisionShadow* _214;
	u32 _218;
	u32 _21c;
	u32 _220;
	u32 _224;
	u32 _228;
	u32 _22c;
	Mario* mMario; // _230
	MarioAnimator* mMarioAnim; // _234
	MarioEffect* mMarioEffect; // _238
	MarioConst* mConst; // _23C
	TVec3f _240;
	TVec3f _24c;
	TVec3f _258;
	TVec3f _264;
	TVec3f _270;
	TVec3f _27c;
	TVec3f _288;
	TVec3f _294;
	TVec3f _2a0;
	TVec3f _2ac;
	TVec3f _2b8;
	TVec3f _2c4;
	TVec3f _2d0;
	TVec3f _2dc;
	TVec3f _2e8;
	TVec3f _2f4;
	TVec3f _300;
	TVec3f _30c;
	TVec3f _318;
	TVec3f _324;
	short _330;
	short _332;
	short _334;
	short _336;
	short _338;

	//probably alignment
	
	TVec3f _33c;
	TVec3f _348;
	TVec3f _354;
	TVec3f _360;
	GravityInfo* _36c;
	char _370;

	//probably alignment
	
	f32 _374;
	u16 _378;

	// probably alignment

	u32 _37c;
	u32 mHealth;
	u32 _384;
	u32 _388;
	u16 _38c;
	u32 _390;
	u32 _394;
	u32 _398;
	u8 _39c;
	u8 _39d;

	//probably alignment

	u32 _3a0;
	u32 _3a4;
	u16 _3a8;
	u16 _3aa;
	u16 _3ac;

	//probably alignment

	float _3b0;
	TVec3f _3b4;
	bool _3c0;
	bool _3c1;

	// probably alignment

	TVec3f _3c4;
	u16 _3d0;
	u16 _3d2;
	u16 _3d4;
	u16 _3d6;
	u16 _3d8;
	u16 _3da;
	u16 _3dc;
	char _3de;
	char _3df;
	u32 mMaxHealth;
	bool _3e4;
	bool _3e5;
	bool _3e6;
	bool _3e7;
	bool _3e8;

	// probably alignment
	
	TMtx34f _3ec;
	u32 _41c;
	u32 _420;
	u32 _424;
	u32 _428[4];

	// FAKE DUMMY VAR PADDING

	u32 _438[0xc];

	// END FAKE DUMMY VAR PADDING
	
	union {
		TVec3f _468;
		JGeometry::TVec3<long> _468l;
	};
	u32 _474;
	f32 _478;
	u32 _47c;
	char _480;
	char _481;
	bool _482;
	char _483;
	TVec3f _484;
	f32 _490;
	u32 _494;
	FixedPosition* _498;
	FixedPosition* _49c;
	u32 _4a0;
	u32 _4a4;
	u32 _4a8;
	f32 _4ac;
	f32 _4b0;
	f32 _4b4;
	TVec3f _4b8;
	TVec3f _4c4;
	u32 _4c8[0x80];

	// array padding?
	
	char _6d0;
	f32 _6d4;
	f32 _6d8;
	u32 _6dc[0x40];
	u16 _7dc;
	short _7de;
	short _7e0;
	char _7e2;

	// probably alignment

	u32 _7e4[0x40];
	char _8e4[0x40];
	HitSensor* _924;
	u32 _928;
	u32 _92c;
	u32 _930;
	bool _934;
	bool _935;

	//probably alignment

	TVec3f _938;
	u8 _944;
	u8 _945;
	u16 _946;
	u16 _948;
	u16 _94a;
	u16 _94c;
	u16 _94e;
	char _950;
	char _951;

	//probably alignment

	u32 _954[8];
	char _974;

	//probably alignment

	TVec3f _978;
	f32 _984;
	char _988;
	char _989;

	//probably alignment
	
	u32 _98c;
	char _990;

	//probably alignment
	
	u32 _994;
	u32 _998;
	u32 _99c;
	u32 _9a0;
	MarioParts* _9a4;
	f32 _9a8;
	f32 _9ac;
	f32 _9b0;
	short _9b4;

	//probably alignment

	u32 _9b8;
	u32 _9bc;
	u32 _9c0;
	u32 _9c4;
	u32 _9c8;
	f32 _9cc;
	f32 _9d0;
	u32 _9d4;
	TVec3f _9d8;
	u32 _9e4;
	u32 _9e8;
	u32 _9ec;
	bool _9f0;
	bool _9f1;
	short _9f2;
	TVec3f _9f4;
	u32 _a00;
	u32 _a04;
	char _a08;
	char _a09;
	char _a0a;
	char _a0b;
	char _a0c;
	u32 _a10;
	u32 _a14;
	TVec3f _a18;
	char _a24;
	char _a25;

	//proabaly alignment
	
	u32 _a28[6];
	u32 _a40;
	u32 _a44;
	u32 _a48;
	u32 _a4c;
	u32 _a50;
	u32 _a54;
	char _a58;
	char _a59;
	char _a5a;
	char _a5b;
	u32 _a5c;
	bool _a60;
	bool _a61;
	bool _a62;

	//probably alignment

	u32 _a64;
	f32 _a68;
	u16 _a6c;
	bool _a6e;

	//probably alignment

	u32 _a70[8];
	u32 _a90[8];
	TMtx34f _ab0;
	TMtx34f _ae0;
	short _b10;
	short _b12;
	short _b14;

	//probably alignment

	TVec3f _b18;
	f32 _b24;
	f32 _b28;
	f32 _b2c;
	f32 _b30;
	f32 _b34;
	f32 _b38;
	f32 _b3c;
	f32 _b40;
	u32 _b44;
	FootPrint* _b48;
	u32 _b4c;
	short _b50;

	//probably alignment

	u32 _b54[3];
	short _b60;
	//prob align
	u32 _b64;
	char _b68;
	//prob align
	short _b6a;
	u32 _b6c;
	short _b70;
	char _b72;
	//prob align
	short _b74;
	//prob align
	u32 _b78;
	u32 _b7c;
	u32 _b80;
	u32 _b84;
	short _b88;
	//prob align
	MarioNullBck* mNullAnimation;
	bool _b90;
	bool _b91;
	s8 _b92;

	//probably alignment

	u16 _b94;
	char _b96;

	// NOT REAL MEMBER

	u32 fake;

	// END OF NOT REAL MEMBER

	
	short _b9c;
	short _b9e;
	u32 _ba0;
	u32 _ba4;
	u32 _ba8;
	TVec3f _bac;
	TVec3f _bb8;
	u16 _bc4;
	TMtx34f _bc8;
	TMtx34f _bf8;
	Wierd* _c28;
	TMtx34f _c2c;
	TMtx34f _c5c;
	TMtx34f _c8c;
	TMtx34f _cbc;
	TMtx34f _cec;
	TMtx34f _d1c;
	TMtx34f _d4c;
	TMtx34f _d7c;
	TMtx34f _dac;
	TMtx34f _ddc;
	TMtx34f _e0c;
	TMtx34f _e3c;
	TMtx34f _e6c;
	short _e9c;
	f32 _ea0;
	bool _ea4;
	bool _ea5;
	bool _ea6;
	TMtx34f _ea8;
	TVec3f _ed8;
	u32 _ee4;
	bool mSuperKinokoCollected; // _ee8
	bool mPowerupCollected; // _ee9
	bool mTransforming; // _eea
	bool _eeb;
	bool _eec;
	bool _eed;
	bool _eee;
	//probably alignment
	u16 _ef0;
	u16 _ef2;
	u16 _ef4;
	u16 _ef6;
	u32 _ef8;
	u32 _efc;
	char _f00;

	//probably alignment

	u32 _f04;
	u32 _f08;
	bool _f0c;
	char _f0d;
	short _f0e;
	short _f10;
	short _f12;
	short _f14;
	short _f16;
	short _f18;
	short _f1a;
	short _f1c;
	short _f1e;
	char _f20;
	char _f21;

	//probably alignment

	u32 _f24;
	short _f28;

	//probably alignment

	TVec3f _f2c;
	char _f38;

	//probably alignment
	
	union {
		JAIAudible* _f3c;
		TVec3f* _f3c_vec;
	};
	u16 _f40;
	u16 _f42; 
	bool _f44;

	//probably alignment

	u32 _f48;
	u32 _f4c;
	TVec3f _f50;
	TVec3f _f5c;
	TVec3f _f68;
	char _f74;

	//probably alignment

	TVec3f _f78;
	TVec3f _f84;
	TVec3f _f90;
	TVec3f _f9c;
	TVec3f _fa8;
	const Nerve* _fb4;
	u16 _fb8;
	u32 _fbc;
	u32 _fc0;
	u32 _fc4;
	u32 _fc8;
	bool _fcc;
	bool _fcd;
};

namespace NrvMarioActor {
	NERVE(MarioActorNrvWait);
	NERVE(MarioActorNrvGameOver);
	NERVE(MarioActorNrvGameOverAbyss);
	NERVE(MarioActorNrvGameOverAbyss2);
	NERVE(MarioActorNrvGameOverFire);
	NERVE(MarioActorNrvGameOverBlackHole);
	NERVE(MarioActorNrvGameOverSink);
	NERVE(MarioActorNrvTimeWait);
	NERVE(MarioActorNrvNoRush);
}
