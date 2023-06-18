#include "Game/Map/HitInfo.h"
#include "Game/Player/MarioActor.h"
#include "Game/Gravity.h"
#include "Game/LiveActor/Binder.h"
#include "Game/Util/CameraUtil.h"
#include "Game/Player/MarioHolder.h"
#include "Game/Util/FootPrint.h"
#include "JSystem/JAudio2/JAIAudible.h"

Triangle &Triangle::operator=(const Triangle &rOther) {
    mParts = rOther.mParts;
    mIdx = rOther.mIdx;
    mSensor = rOther.mSensor;
    mNormals[0] = rOther.mNormals[0];
    mNormals[1] = rOther.mNormals[1];
    mNormals[2] = rOther.mNormals[2];
    mNormals[3] = rOther.mNormals[3];
    mPos[0] = rOther.mPos[0];
    mPos[1] = rOther.mPos[1];
    mPos[2] = rOther.mPos[2];

    return *this;
}

MarioActor::MarioActor(const char* pName) : LiveActor(pName), _1b0(0xffffffff) {
	//vtable?
	initMember();
	_230 = new Mario(this);
	_930 = 0;
	__468 = 0;
	_3e0 = 3;
	_380 = 3;
	_384 = 8;

	if(MR::isPlayerLuigi()) {
		_3e0 = 3;
		_380 = 3;
	}
	
	if(MR::isGalaxyDarkCometAppearInCurrentStage()) {
		_3e0 = 1;
		_380 = 1;
	}
	init2D();
	_989=0;
	_41c=0;
	_420=0;
	_37c=0;
	_92c=0;
	_388=0;
	_38c=0;
	_390=0;
	_394=0;
	_398=0;
	_3a4=0;
	_3a8=0;
	_3aa=0;
	_944=0;
	_946=0;
	_bc4=0;
	_948=0;
	_94c=0;
	_94e=0;
	_94a=0;
	_47c=0;
	_3dc=0;
	_3d8=0;
	_3da=0;
	_3ac=0;
	_b94=0;
	_378=0;
	_6d4=0f;
	_ee8=0;
	_ee9=0;
	_eea=0;
	_950=0;
	_951=0;
	_974=0;
	_39c=0;
	_3b0=0.000003814697265625f;

	_3b4.zero();

	_3c1=0;
	_211=0;
	__46c=0;
	__470=0;
	_474=0;
	_924=0;
	_928=0;
	_480=0;
	_481=0;
	_482=0;
	_483=0;
	
	_484.zero();
	
	_b92=0;
	_3d4=0;
	_3d6=0;
	_3d2=1;
	_3df=0;
	_3de=0;
	_eeb=1;
	_9d4=0;

	_9cc=0f;
	_9d0=0f;

	_9d8.zero();

	_9f1=0;
	_9f2=0;
	_ea4=0;
	_ea5=0;
	_fcc=0;
	_fcd=0;

	_ea8.identity();
	_3ec.identity();

	_1f0.zero();
	_1fc.zero();

	_f4c = 0;
	_208 = 1000f;

	_f50.zero();
	_f5c.zero();
	_f68.zero();

	for(int i = 0; i < 6; i++) {
		_a28[i] = 0;
	}

	_a61=0;

	_a64=0xff;
	
	_a68=1f;

	_a6c=0;
	_b48=NULL;
	_934=0;
	_7e2=0;
	_ef6=0;
	_424=0;
	_4a4=0;
	_6d0=0;
	_3a0=0;
	_efc=0;
	_ef8=0;
	_e9c=0;
	
	_ea0=1f;

	_3c4.zero();

	_3d0=0;
	_7de=0;
	_3c0=0;
	_b90=0;
	_b91=0;
	_39d=0;
	_b96=0;
	_ef0=0;
	_ef2=0;
	_ef4=0x78;
	_1aa=0;
	_1ac=0f;

	_1b0.set(0xff, 0xff, 0xff, 0);

	_1b5=0;
	_988=0;

	_f10=2;
	_f12=2;

	_f14=3;
	_f16=3;

	_f18=0xb;

	_f1a=3;

	_f0e=7;

	resetPadSwing();

	_f0d=0;

	_f1c=0x3c;
	_f1e=0x3c;

	_1e1=0;
	_f24=0;
	_f28=0;

	_c2c.identity();
	_c5c.identity();
	_d1c.identity();
	_d4c.identity();
	_d7c.identity();

	_1b4 = 0;
	_1c3 = 0;
	_1e0 = 0;
}



void MarioActor::init2(const TVec3f &a, const TVec3f &b, long num) { //Recheck floats between f90c(r2) vs f908(r2) to make sure those ones are correct
	_8c = 1;
	//?
	//?
	mPosition.set(a);
	mRotation.set(b);
	mScale.set(TVec3f(1f, 1f, 1f));
	_230 -> setHeadAndFrontVecFromRotate(mRotation);
	_230 -> _290 = _230 -> _310;
	updateBaseScaleMtx();
	_a18 = mRotation;
	initDrawAndModel();
	//_c28 = new sizeof=0x30 [MR::getJointNumber(this)];
	MR::connectToScene(this, 0x25, 0x9, 0x14, 0x22);
	MR::initLightCtrlForPlayer(this);
	_234 = new MarioAnimator(this);
	_238 = new MarioEffect(this);
	_214 = new CollisionShadow(100f,360f);
	_23c = new MarioConst();
	//? if(
	_230 -> initAfterConst();
	_36c = new GravityInfo();
	_374 = 0f;
	initNerve(&NrvMarioActor::MarioActorNrvWait::sInstance);
	_fb4 = 0; //int
	_fb8 = 0; //short
	initActionMatrix();
	initBinder(60f, 1f, 8);
	_2c4.x = 0f;
	_2c4.y = 70f;
	_2c4.z = 0f;
	mBinder -> _1ec &= 0xfffffe7f;
	MR::setBinderOffsetVec(this, &_2c4, false);
	mBinder -> setTriangleFilter(new TriangleFilterDelegator<MarioActor>(this, mName, NameObj::mFlags));
	mBinder -> _1ec |= 0x10;
	initEffect();
	MR::invalidateClipping(this);

	// Tvec3f?
	_240 = 0f;
	_244 = -1f;
	_248 = 0f;
	
	_24c = _240;
	_334 = 0;//s
	_336 = 0;//s
	_338 = 0;//s
	
	_264.zero();
	_270 = mPosition;
	calcCenterPos();
	initSound(0x10, 0);
	addSoundObjectHolder();
	initParts();
	initMorphStringTable();
	MR::declareGlobalEventCameraAbyss("0xc");
	MR::declareBlackHoleCamera("0x17");
	MR::declareGlobalEventCameraDead("0x26", 0.34999999404f, 0x78, 0x3c);
	MR::declareGlobalEventCamera("0x31");
	MR::declareGlobalEventCamera("0x3e");
	MR::declareGlobalEventCamera("0x4d");
	MR::declareGlobalEventCamera("0x5a");
	MR::declareEventCameraProgrammable("0x63");
	_2b8 = mPosition;
	_33c = mPosition;
	_348.zero();
	_354.zero();
	setupSensors();
	MR::getMarioHolder() -> setMarioActor(this);
	_1bc = new MarioMessenger(getSensor("0x72"));
	_300 = _230 -> _1F0;
	_2d0 = _300;
	_330 = 0;
	_332 = 0;
	MR::setGameCameraTargetToPlayer();
	_a0c = 0;
	_b48 = new FootPrint("0x78", 0x100, -1/*short*/);
	_b48 -> setTexture(MR::getTexFromArc("Footprint.bti", this));
	if(num == 2) {
		_230 -> changeAnimationNonStop("0x90");
	}
	else if(num != 1) {
		_230 -> changeAnimation(NULL, 0x9d);
	}
	else {
		_230 -> changeAnimation(NULL, 0x8b);
	}
	updateTransForCamera();
	_f44 = 1;//char
	_984 = 0f;
	_978.zero();
	_27c.zero();
	_288.zero();
	_498 = new FixedPosition(this, "HandR", TVec3f(0f, 0f, 0f), TVec3f(0f, 0f, 0f));
	_49c = new FixedPosition(this, "HandR", TVec3f(76.3300018311f, 15.6899995804f, 88.9899978638f),
		TVec3f(1.79999995232f, 52.5099983215f, 39.5800018311f));
	_494 = 0; //i
	_4b0 = 35f;
	_4b4 = 60f;
	_4b8 = 0f;
	_4bc = 0f;
	_4c0 = 0f;
	TVec3f stack_8 = -_4b8;
	_4c4 = stack_8;
	_482 = 1; //c
	appear();
	_482 = 0; //c -- do we change this to control appearances?
	_1c6 = 0;//s
	_1c8 = 0f;
	_1cc = 0f;
	_1d0 = 0;//c
	_1d1 = 0;//c
	_a24 = 0;//c
	_a25 = 0;//c
	_1d8 = new MarioActor::FBO[8*MR::getFrameBufferWidth()];
	_1dc = new MarioActor::FBO[8*MR::getFrameBufferWidth()];
	_1e4 = 0f;
	_1e8 = 0;//s
	_1ec = 0f;
	//??????????????wtf is going on here
	_f3c = new JAIAudible[0x1e](); //??????????????????
	_f40 = 0; //s
	_f42 = 0; //s
	for(int i = 0; i < 0x1e; i++) {
		_f3c[i]._0 = 1f;
		_f3c[i]._4 = 0f;
		_f3c[i]._8 = 0f;
	}
	_8c = 0; //c -- is this to indicate that we are in the process of initialization?
	
	
}
