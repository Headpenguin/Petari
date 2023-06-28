#include "Game/Map/HitInfo.h"
#include "Game/Player/MarioActor.h"
#include "Game/Gravity.h"
#include "Game/LiveActor/Binder.h"
#include "Game/Util/CameraUtil.h"
#include "Game/Player/MarioHolder.h"
#include "Game/Util/FootPrint.h"
#include "JSystem/JAudio2/JAIAudible.h"
#include "JSystem/JMath/JMath.h"

static bool isLuigi;

inline TriangleFilterDelegator<MarioActor>::DelegateFilter getDelegate() {
	return &MarioActor::binderFilter;
}

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
	isLuigi = false;
	if(MR::isPlayerLuigi()) isLuigi = true;
	mPosition.set(a);
	mRotation.set(b);
	mScale.set(TVec3f(1f, 1f, 1f));
	_230 -> setHeadAndFrontVecFromRotate(mRotation);
	_230 -> _290 = _230 -> _310;
	updateBaseScaleMtx();
	_a18 = mRotation;
	initDrawAndModel();
	_c28 = new Wierd[MR::getJointNum(this)];
	MR::connectToScene(this, 0x25, 0x9, 0x14, 0x22);
	MR::initLightCtrlForPlayer(this);
	_234 = new MarioAnimator(this);
	_238 = new MarioEffect(this);
	_214 = new CollisionShadow(100f,360f);
	_23c = new MarioConst();
	if(isLuigi) _23c -> _8 = 1;
	_230 -> initAfterConst();
	_36c = new GravityInfo();
	_374 = 0f;
	initNerve(&NrvMarioActor::MarioActorNrvWait::sInstance);
	_fb4 = 0;
	_fb8 = 0;
	initActionMatrix();
	initBinder(60f, 1f, 8);
	_2c4.x = 0f;
	_2c4.y = 70f;
	_2c4.z = 0f;
	mBinder -> _1ec &= 0xffffff7f;
	MR::setBinderOffsetVec(this, &_2c4, false);
	//TriangleFilterDelegator<MarioActor>::DelegateFilter filter = &MarioActor::binderFilter;
	//mBinder -> setTriangleFilter(new TriangleFilterDelegator<MarioActor>(this, filter));
	TriangleFilterDelegator<MarioActor>::DelegateFilter filter = getDelegate();
	mBinder -> setTriangleFilter(new TriangleFilterDelegator<MarioActor>(this, filter));
	mBinder -> _1ec |= 0x10;
	initEffect();
	MR::invalidateClipping(this);

	_240.setInline(0f, -1f, 0f);
	
	_24c = _240;
	_334 = 0;
	_336 = 0;
	_338 = 0;
	
	_264.zero();
	_270 = mPosition;
	calcCenterPos();
	initSound(0x10, 0);
	addSoundObjHolder();
	initParts();
	initMorphStringTable();
	MR::declareGlobalEventCameraAbyss("mjikgfdnjmdf");
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
	_b48 = new FootPrint("0x78", 0x100, -1);
	_b48 -> setTexture(MR::getTexFromArc("Footprint.bti", this));
	switch(num) {
		case 1:
			_230 -> changeAnimation("0x8b", (const char *)NULL);
			break;
		case 2:
			_230 -> changeAnimationNonStop("0x90");
			break;
		default:
			_230 -> changeAnimation("0x9d", (const char *)NULL);
			break;
	}
	updateTransForCamera();
	_f44 = 1;
	_984 = 0f;
	_978.zero();
	_27c.zero();
	_288.zero();
	_498 = new FixedPosition(this, "HandR", TVec3f(0f, 0f, 0f), TVec3f(0f, 0f, 0f));
	_49c = new FixedPosition(this, "HandR", TVec3f(76.3300018311f, 15.6899995804f, 88.9899978638f),
		TVec3f(1.79999995232f, 52.5099983215f, 39.5800018311f));
	_494 = 0;
	_4b0 = 35f;
	_4b4 = 60f;
	_4b8.setInline(0f, 1f, 0f);
	_4c4 = -_4b8;
	_482 = true;
	appear();
	_482 = false; // do we change this to control appearances?
	_1c6 = 0;
	_1c8 = 0f;
	_1cc = 0f;
	_1d0 = 0;
	_1d1 = 0;
	_a24 = 0;
	_a25 = 0;
	_1d8 = new (0x20) MarioActor::FBO[MR::getFrameBufferWidth()];
	_1dc = new (0x20) MarioActor::FBO[MR::getFrameBufferWidth()];
	_1e4 = 0f;
	_1e8 = 0;
	_1ec = 0f;
	_f3c = new JAIAudible[0x1e];
	_f40 = 0;
	_f42 = 1;
	for(int i = 0; i < 0x1e; i++) {
		JAIAudible &rAudible = _f3c[i];
		rAudible._0 = 1f;
		rAudible._4 = 0f;
		rAudible._8 = 0f;
	}
	_8c = 0; //is this to indicate that we are in the process of initialization?
}

static float ZERO = 0f;

void MarioActor::init(const JMapInfoIter &rInfo) {
	long stack_8 = -1;
	if(!MR::isValidInfo(rInfo)) return;
	TVec3f stack_24, stack_18, stack_c;

	MR::getJMapInfoTrans(rInfo, &stack_24);
	MR::getJMapInfoRotate(rInfo, &stack_18);
	MR::getJMapInfoScale(rInfo, &stack_c);

	stack_18.x = ZERO + (f32)fmod(stack_18.x - ZERO + 360f, (double)360.0);
	stack_18.y = ZERO + (f32)fmod(stack_18.y - ZERO + 360f, (double)360.0);
	stack_18.z = ZERO + (f32)fmod(stack_18.z - ZERO + 360f, (double)360.0);

	if(MR::isExistJMapArg(rInfo)) {
		MR::getJMapInfoArg0NoInit(rInfo, &stack_8);
	}
	init2(stack_24, stack_18, stack_8);
}

void MarioActor::initAfterPlacement() {
	updateGravityVector(true, true);
	_230 -> _1D8 = _240;
	_230 -> _1F0 = -_240;
	_230 -> _1FC = -_240;
	_300 = _230 -> _1F0;
	_2d0 = _300;
	_2c4 = _240 % -70f;
	calcCenterPos();
	MR::updateHitSensorsAll(this);
	_360 = getGravityVector();
	_1c0 = 1;
	_9f4 = getGravityVector();
	updateCameraInfo();
	calcBaseFrontVec(-_240);
}

void MarioActor::initAfterOpeningDemo() {
	_230 -> changeAnimationNonStop("ウォークイン");
	_37c = 0;
}

void MarioActor::calcBaseFrontVec(const TVec3f &rVec) {
	TVec3f stack_24, j(0f, 1f, 0f);
	f32 y = j.dot(rVec);
	if(y < -0.99f) {
		_258.setInline(0f, 0f, 1f);
	}
	else {
		f32 stack_8;
		if(MR::makeAxisAndCosignVecToVec(&stack_24, &stack_8, rVec, j)) {
			TVec3f k(0f, 0f, 1f);
			Mtx stack_30;
			PSMTXRotAxisRad(stack_30, stack_24.toCVec(), -JMAAcosRadian(stack_8));
			PSMTXMultVecSR(stack_30, k.toCVec(), _258.toVec());
			MR::normalize(&_258);
		}
		else {
			_258.setInline(0f, 0f, 1f);
		}
	}
}
