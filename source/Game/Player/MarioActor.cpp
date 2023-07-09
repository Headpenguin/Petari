#include "Game/Map/HitInfo.h"
#include "Game/Player/MarioActor.h"
#include "Game/Gravity.h"
#include "Game/LiveActor/Binder.h"
#include "Game/Util/CameraUtil.h"
#include "Game/Player/MarioHolder.h"
#include "Game/Util/FootPrint.h"
#include "JSystem/JAudio2/JAIAudible.h"
#include "JSystem/JMath/JMath.h"
#include "Game/Player/MarioNullBck.h"
#include "Game/Enemy/KariKariDirector.h"
#include "Game/Animation/XanimePlayer.h"
#include "Game/Map/CollisionParts.h"
#include "Game/Player/MarioParts.h"
#include "Game/Map/WaterInfo.h"
#include "Game/Player/MarioSwim.h"
#include "Game/Screen/GameSceneLayoutHolder.h"
#include "Game/Player/RushEndInfo.h"

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

	_3c1=false;
	_211=0;
	__46c=0;
	__470=0;
	_474=0;
	_924=NULL;
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

	_9f1=false;
	_9f2=false;
	_ea4=false;
	_ea5=false;
	_fcc=false;
	_fcd=false;

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

	_a61=false;

	_a64=0xff;
	
	_a68=1f;

	_a6c=0;
	_b48=NULL;
	_934=false;
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
	_3c0=false;
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

	_1b5=false;
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
	_1e0 = false;
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

void MarioActor::initAfterPlacement() {
	updateGravityVec(true, true);
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

void MarioActor::playSound(const char *name, long num) {
	_230 -> playSound(name, num);
}

void MarioActor::changeAnimation(const char *name, const char *newName) {
	_230 -> changeAnimation(name, newName);
}

void MarioActor::changeAnimationNonStop(const char *name) {
	_230 -> changeAnimationNonStop(name);
}

void MarioActor::changeAnimationUpper(const char *name) {
	if(_230 -> _71C) {
		if(isAnimationRun("基本")) {
			_230 -> changeAnimationUpper(name, NULL);
			return;
		}
	}
	_230 -> changeAnimation(name, (const char *)NULL);
}

void MarioActor::stopAnimation(const char *name) {
	_230 -> stopAnimation(name, (const char *)NULL);
}

bool MarioActor::isAnimationRun(const char *name) const {
	return _230 -> isAnimationRun(name);
}

void MarioActor::changeNullAnimation(const char *name, signed char num) {
	_b8c -> appear();
	MR::startBck(_b8c, name, NULL);
	_b92 = num;
}

bool MarioActor::isStopNullAnimation() const {
	if(!MR::isBckStopped(_b8c)) {
		return MR::isDead(_b8c);
	}
	return true;
}

void MarioActor::changeGameOverAnimation() {
	int r30 = 0;
	if(_230 -> isStatusActive(0x12)) _230 -> closeStatus(NULL);

	if(_230 -> isAnimationRun("0x001")) r30 = 0;
	if(_230 -> isAnimationRun("0x002")) r30 = 0;
	if(_230 -> isAnimationRun("0x003")) r30 = 0;
	if(_230 -> isAnimationRun("0x004")) r30 = 0;
	if(_230 -> isAnimationRun("0x005")) r30 = 1;
	if(_230 -> isAnimationRun("0x006")) r30 = 1;
	if(_230 -> isAnimationRun("0x007")) r30 = 2;
	if(_230 -> isAnimationRun("0x008")) r30 = 2;
	if(_230 -> isAnimationRun("0x009")) r30 = 3;
	if(_230 -> isAnimationRun("0x00a")) r30 = 3;
	if(_230 -> isAnimationRun("0x00b")) r30 = 3;
	if(_230 -> isAnimationRun("0x00c")) r30 = 4;
	if(_230 -> isAnimationRun("0x00d")) r30 = 4;
	if(_230 -> isAnimationRun("0x00e")) r30 = 4;
	if(_230 -> isAnimationRun("0x00f")) r30 = 5;
	if(_230 -> isAnimationRun("0x010")) r30 = 5;
	if(_230 -> isAnimationRun("0x011")) r30 = 6;
	if(_230 -> isAnimationRun("0x012")) r30 = 6;
	if(!_230 -> isAnimationRun("0x013") && !_230 -> isStatusActive(0xd));
	else r30 = -1;
	if(_230 -> isSwimming()) r30 = 7;
	if(isNerve(&NrvMarioActor::MarioActorNrvGameOverSink::sInstance)) r30 = 8;
	if(MR::getKariKariClingNum() && _230 -> _8_1) r30 = 4;
	if(_39d == 2) r30 = 9;
	if(_39d == 1) r30 = 10;

	switch(r30) {
		case 0:
			_230 -> changeAnimationNonStop("0x015");
			break;
		case 1:
			_230 -> changeAnimationNonStop("0x016");
			break;
		case 2:
			_230 -> changeAnimationNonStop("0x017");
			break;
		case 3:
			_230 -> changeAnimationNonStop("0x018");
			break;
		case 4:
			_230 -> changeAnimationNonStop("0x019");
			break;
		case 5:
			if(_230 -> _8_1) _230 -> changeAnimationNonStop("0x01a");
			else _230 -> changeAnimationNonStop("0x01b");
			break;
		case 6:
			_230 -> changeAnimationNonStop("0x01c");
			break;
		case 7:
			_230 -> changeAnimationNonStop("0x01d");
			break;
		case 8:
			_230 -> changeAnimationNonStop("0x01e");
			break;
		case 9:
			_230 -> changeAnimationNonStop("0x01f");
			break;
		case 10:
			_230 -> changeAnimationNonStop("0x020");
			break;
	}
	_b90 = 1;
	stopEffect("0x021");
	_a6e = 0;
}

XjointTransform* MarioActor::getJointCtrl(const char *name) const {
	XanimeCore *core = _234 -> _c -> mCore;
	return core -> getJointTransform(MR::getJointIndex(this, name));
}

bool MarioActor::isTurning() const {
	return _230 -> _8_3;
}
bool MarioActor::isDebugMode() const {
	return _230 -> _8_16;
}

void MarioActor::updateRotationInfo() {
	TRot3f stack_44;
	PSMTXConcat(getBaseMtx(), _e3c.toMtxPtr(), stack_44.toMtxPtr());
	MR::makeRTFromMtxPtr(NULL, &mRotation, stack_44.toMtxPtr(), true);
	if(mRotation.z > 90f && mRotation.x > 90f) {
		f32 diff = 180f - mRotation.y;
		mRotation.z = 0f;
		mRotation.y = diff;
		mRotation.x = 0f;
	}
	stack_44.getEuler(_318);
	_318.scaleInline(57.2957763672f);
	stack_44.getEuler(_324);
	_324.scaleInline(57.2957763672f);
	if(MR::isSameDirection(_240, _230 -> _208, .01f)) _a18 = mRotation;
	else {
		TPos3f stack_14;
		TVec3f stack_8 = -_240;
		MR::makeMtxUpFront(&stack_14, stack_8, _230 -> _208);
		MR::makeRTFromMtxPtr(NULL, &_a18, stack_14.toMtxPtr(), true);
		if(_a18.z > 90f && _a18.x > 90f) {
			f32 diff = 180f - _a18.y;
			_a18.z = 0f;
			_a18.y = diff;
			_a18.x = 0f;
		}
	}
}

void MarioActor::exeWait() {
	if(_fb8 != 0) {
		_fb8--;
		if(_fb8 == 0) {
			setNerve(_fb4);
			_fb4 = NULL;
		}
	}
}

void MarioActor::movement() {
	__46c = 0;
	_378++;
	_1e1 = 0;
	PSMTXCopy(_ae0.toMtxPtr(), _ab0.toMtxPtr());
	PSMTXCopy(MR::getCameraViewMtx(), _ae0.toMtxPtr());
	updateCameraInfo();
	_4a8 = 0;
	_4ac = 0.785398185253f;
	LiveActor::movement();
	TVec3f stack_134(mPosition);
	stack_134 -= _294;
	TVec3f stack_128(stack_134);
	stack_128 -= mVelocity;
	_27c = stack_134;
	TVec3f stack_11c(_288);
	_288 = stack_128;
	if(MR::isOppositeDirection(_288, stack_11c, 0.01f)) {
		f32 mag_288 = PSVECMag(_288.toCVec());
		f32 magStack_11c = PSVECMag(stack_11c.toCVec());
		if (
			!MR::isNearZero(mag_288, 0.001f)
			&& !MR::isNearZero(magStack_11c, 0.001f)
			&& MR::isNearZero(mag_288 - magStack_11c, 1f)
		) {
			mPosition -= _288 % 0.5f;
		}
	}
	if(PSVECMag(stack_128.toCVec()) > 0.1f) {
		if(!(_230 -> _8_a)) {
			if(!MR::isNearZero(mVelocity, 0.001f)) {
				f32 diffMag = PSVECMag(_294.translateOpposite(_270).toCVec());
				f32 vMag = PSVECMag(mVelocity.toCVec());
				if(PSVECMag(stack_128.toCVec()) > 2f * (diffMag + vMag)) _230 -> stopWalk();
			}
		}
		if(_230 -> _8_23 && PSVECMag(mVelocity.toCVec()) < PSVECMag(stack_134.toCVec())) {
			if(stack_134.dot(getGravityVec()) < -0f) {
				TVec3f stack_110;
				MR::vecKillElement(mVelocity, getGravityVec(), &stack_110);
				if(MR::isNearZero(stack_110, 0.001f)) {
					MR::vecKillElement(stack_134, getGravityVec(), &stack_110);
				}
				stack_110.setLength(PSVECMag(stack_134.toCVec()));
				_230 -> push(stack_110);
				if(_230 -> _3BC <= 2) {
					f32 scale = PSVECMag(stack_128.toCVec());
					if(scale > 10f) scale = 10f;
					_230 -> _2D4 += -getGravityVec() % scale;
				}
			}
		}
		else if(isSlipping()) {
			TVec3f stack_104(_230 -> _8F8);
			MR::normalizeOrZero(&stack_104);
			TVec3f stack_f8;
			f32 fr30 = MR::vecKillElement(stack_134, stack_104, &stack_f8);
			f32 fr29 = MR::vecKillElement(mVelocity, stack_104, &stack_f8);
			if(PSVECMag(mVelocity.toCVec()) > 20f && fr30 < fr29 * 0.5f) {
				if(_230 -> isAnimationRun("坂すべり下向きあおむけ")) {
					_230 -> push(_230 -> _208 % 5f);
				}
				else if(_230 -> isAnimationRun("坂すべり上向きうつぶせ")) {
					_230 -> push(_230 -> _208 % -5f);
				}
				_230 -> _14 |= 0x20000000;
			}
		}
		if(isMovingVertical() && !_9f1) {
			if(stack_128.dot(getGravityVec()) < -40f) {
				TVec3f stack_ec(mPosition.translateOpposite(getGravityVec() % 100f));
				TVec3f stack_e0;
				Triangle *tmp = _230 -> getTmpPolygon();
				
				if(MR::getFirstPolyOnLineToMap(&stack_e0, tmp, stack_ec, getGravityVec() % 200f)) {
					TVec3f stack_d4;
					if (
						MR::vecKillElement(stack_e0.translateOpposite(mPosition), getGravityVec(), &stack_d4) < -5f
						&& tmp -> mParts
						&& !tmp -> mParts -> _D4
						&& _230 -> _8_3e != 1
					) {
						mPosition = stack_e0;
						_230 -> _130 = mPosition;
						_230 -> stopJump();
						_230 -> changeAnimation("基本", "落下");
						_230 -> updateGroundInfo();
					}
				}
			}
			else if(stack_128.dot(getGravityVec()) > 40f) {
				if(_230 -> _4C8 -> isValid()) {
					if(MR::isSensorPressObj(_230 -> _4C8 -> mSensor)) _230 -> _18 |= 2;
				}
				else {
					const u32 stop = mBinder -> _28;
					for(int i = 0; i < stop; i++) {
						if(MR::isSensorPressObj(mBinder -> getPlane(i) -> mSensor)) _230 -> _18 |= 2;
					}
				}
				if(_230 -> _31C.translateOpposite(mPosition).dot(getGravityVector()) < 0f) {
					bool r31 = true;
					CollisionParts *parts = _230 -> _45C -> mParts;
					if(parts && !_230 -> _45C -> mParts -> _D4) {
						TVec3f stack_c8, stack_bc, stack_b0;
						PSMTXMultVec(parts -> mInvBaseMatrix.toMtxPtr(), _230 -> _31C.toCVec(), stack_c8.toVec());
						PSMTXMultVec(parts -> mPrevBaseMatrix.toMtxPtr(), stack_c8.toCVec(), stack_bc.toVec());
						stack_b0 = _230 -> _31C.translateOpposite(stack_bc);
						if(stack_b0.dot(stack_128) > 0f) r31 = false;
					}
					if(r31) {
						mPosition = _230 -> _31C;
						_230 -> _2D4.zero();
						_230 -> _148.zero();
						if(!_230 -> _5FC && (isHoldJump() || isHoldJumpLastFrame())) {
							TVec3f stack_a4(stack_128);
							MR::normalizeOrZero(&stack_a4);
							_3b4 = stack_a4;
							setPress(0, 0);
							_3b0 = 0.1f;
						}
					}
				}
			}
		}
		else if(_230 -> _8_1) { // Probably uses an inline function
			const u32 stop = mBinder -> _28;
			bool r31 = false;
			for(u32 i = 0; i < stop; i++) {
				const Triangle *plane = mBinder -> getPlane(i);
				if(!MR::isSensorPressObj(plane -> mSensor)) continue;
				if(_230 -> _368.dot(*plane -> getNormal(0)) > 0f) {
					if(_230 -> _72C < 200f) r31 = true;
					else if(plane -> getNormal(0) -> dot(stack_134) < 0f) r31 = true;
					else r31 = false;
				}
				else if(plane -> getNormal(0) -> dot(stack_134) < 0f) r31 = true;
				else if(_230 -> _5FC) {
					if(!MR::isWallCodeNoAction(plane) && !_230 -> isOnimasuBinderPressSkip()) {
						_3b4 = _230 -> _368;
						_230 -> _10 &= ~(u32)4;
						*_230 -> _4C8 = *plane;
						setPress(2, 0);
						_3b0 = 0.1f;
					}
					r31 = true;
				}
			}
			if(r31) {
				TVec3f stack_98;
				f32 element = MR::vecKillElement(stack_134, _230 -> _368, &stack_98);
				mPosition -= _230 -> _368 % element;
			}
		}
	}
	if(_230 -> _18 >> 5 & 1) {
		_230 -> _18 &= ~(u32)0x20;
		_234 -> MarioAnimator::update();
	}
	_230 -> recordRelativePosition();
	updateTransForCamera();
	calcAnimInMovement();
	_935 = false;
	_230 -> _2D0 = 0f;
	_f3c_vec[_f40] = _230 -> _208;
	_f40 = (u16)(_f40 + 1) % _f42;
}

void MarioActor::control() {
	if(_ee8) {
		if(MR::tryStartDemoWithoutCinemaFrame(this, "マリオスーパー化")) {
			_ee8 = false;
			changeMaxLife(6);
			MR::stopAnimFrame(this);
			MR::requestPowerupHPMeter();
			_230 -> startPadVib("マリオ[変身]");
			MR::startSystemSE("SE_SY_SUPER_KINOKO_GET", -1, -1);
			_3da = 0x5a;
		}
	}
	else if(_ee9) {
		if(MR::tryStartDemoWithoutCinemaFrame(this, "マリオ変身")) {
			_ee9 = false;
			_eea = true;
			if(_3d4 == 6) {
				MR::requestMovementOn(_9a4);
				changeTeresaAnimation("change", -1);
			}
			_3d8 = 0x40;
			MR::stopAnimFrame(this);
			playEffect("変身");
			_230 -> startPadVib("マリオ[変身]");
		}
	}
	control2();
	_294 = mPosition;
}

void MarioActor::control2() {
	if((_3d8 && _3d4)  || _3da) {
		_230 -> _350.zero();
		_230 -> _35C.zero();
		_7dc = 0;
		_930 = 0;
		mVelocity.zero();
		_264.zero();
		_270 = mPosition;
		if(isMoving() && !MR::isSameMtx(_230 -> _45C -> getPrevBaseMtx() -> toMtxPtr(), _230 -> _45C -> getBaseMtx() -> toMtxPtr())) {
			_230 -> _130 = mPosition;
			_230 -> checkEnforceMove();
			mPosition = _230 -> _130;
		}
	}
	else {
		if(_bc4) _bc4--;
		_951 = 0;
		controlMain();
		if(!_ea4) {
			if(!_f44) MR::offBind(this);
			else MR::onBind(this);
		}
		_978 = mVelocity;
		if(_230 -> _18_b) mBinder -> _1ec &= ~(u32)0x40; // suspected bitfield
		else mBinder -> _1ec |= 0x40;
		if(_230 -> isDamaging()) _424 = 0;
	}
}

void MarioActor::controlMain() {
	if(_3c0) {
		_7dc = 0;
		_930 = 0;
	}
	updateActionTrigger();
	updateControllerSwing();
	updateControllerSwingLeft();
	update2D();
	if(_a61) _a6c++;
	if(!isEnableMoveMario()) {
		_7dc = 0;
		_930 = 0;
		careMovingObject();
	}
	else {
		mVelocity.zero();
		updateBehavior();
		updateRotationInfo();
		updateTakingPosition();
		updateSearchLight();
		updateThrowing();
		updateBeeWingAnimation();
		updateFairyStar();
		_930 = 0;
	}
}

void MarioActor::updateBehavior() {
	updateLife();
	updatePlayerMode();
	_37c++;
	if(_ef6) _ef6--;
	if(_3a8) _3a8--;
	if(_3ac) _3ac--;
	_264 = mPosition.translateOpposite(_270);
	_270 = mPosition;
	updateBindRatio();
	updateEffect();
	if(_b94 && !--_b94) {
		_230 -> stopAnimationUpper("ー投げ回転中", NULL);
		_230 -> stopAnimation("ー投げ回転中", (const char *)NULL);
	}
	updatePunching();
	if(!doPressing() && !doStun() && !doRush()) { //short circuiting better be intentional
		updateGravityVec(false, false);
		if(!tryJumpRush()) {
			checkPriorRushTarget();
			if(!tryThrow() && !tryStandardRush()) {
				if(_230 -> _8_1) initForJump();
				updateSwingTimer();
				updateSwingAction();
				updateThrowVector();
				lockOnDPD();
				if(!checkClapCatchStart()) {
					_7dc = 0;
					_230 -> Mario::update();
					updateForCamera();
					updateTornado();
					tryCoinPull();
					_230 -> _18_1a = true;
				}
			}
		}
	}
}

void MarioActor::updateBindRatio() {
	if(!_934 && !MR::isNearZero(_978.translateOpposite(_264), 0.001f)) {
		f32 fr31 = PSVECMag(_978.toCVec());
		if(fr31 / PSVECMag(_978.translateOpposite(_264).toCVec()) < 2f) {
			_984 += 0.1f;
		}
		else {
			_984 -= 0.1f;
		}
	}
	else if(!MR::isNearZero(_978, 0.001f)) _984 -= 0.01f;
	_984 = MR::clamp(_984, 0f, 1f);
}

bool MarioActor::isInPunchTimerRange() const {
	bool ret = false;
	if(_3e6) {
		ret = MR::isInRange(_945, 6f, 20f);
	}
	return ret; 
}

void MarioActor::updatePunching() {
	if(_944) {
		bool r6 = true;
		_944--;
		_945++;
		if(!_946 && !_230 -> _8_2b) r6 = false;
		if(r6 && !_230 -> isSwimming() && !_944 && selectAction("スピン回復エフェクト") == true) {
			playEffect("スピンリング");
		}
		bool r29 = isInPunchTimerRange();
		if(!_230 -> isSwimming()) r29 = true;
		if(r29) {
			const Mario::Nonsense &rNonsense = getStates();
			if(rNonsense._8_8 || rNonsense._8_1a || rNonsense._8_19) _230 -> tryWallPunch();
		}
	}
	if (
		_230 -> isAnimationRun("ハンマー投げリリース")
		&& _230 -> _8_1
		&& !_38c
		&& !_230 -> _420
		&& _230 -> Mario::isStickOn()
	) {
		_230 -> stopAnimation(NULL, (const char *)NULL);
	}
}

bool MarioActor::doRush() {
	if(_934) {
		tryCoinPull();
		tryRushInRush();
		if(!_934) return false;
		updateGravityVec(false, false);
		if(checkClapCatchStart() && _7dc) bodyClap();
		_7dc = 0;
		_7e2 = false;
		_230 -> _130 = mPosition;
		_230 -> updateGroundInfo();
		_230 -> updateCubeCode();
		_230 -> decDamageAfterTimer();
		if(selectWaterInOutRush(_924)) {
			WaterInfo stack_44;
			if(!MR::getWaterAreaObj(&stack_44, mPosition)) _230 -> forceExitSwim();
		}
		else if(!selectWaterInOut(_924 -> mActor -> mName)) {
			s32 initial = _230 -> mSwim -> _144;
			_230 -> mSwim -> checkWaterCube(false);
			if((int)_230 -> mSwim -> _144 != initial) {
				if(_230 -> mSwim -> _144 <= 1 && (u32)initial - 2 <= 1) {
					playEffectRT("水面ジャンプ水柱", _230 -> mSwim -> _160, _230 -> mSwim -> _16c);
					emitEffectWaterColumn(_230 -> mSwim -> _160, _230 -> mSwim -> _16c);
				}
				else if((u32)initial <= 1 && _230 -> mSwim -> _144 - 2 <= 1) {
					playEffectRT("水面ジャンプ水柱", -_230 -> _328, _230 -> mSwim -> _16c);
					emitEffectWaterColumn(_230 -> mSwim -> _160, _230 -> mSwim -> _16c);
				}
				if(initial == 2) {
					_384 = 8;
					MR::getGameSceneLayoutHolder().changeLifeMeterGround();
					_230 -> forceExitSwim();
				}
				else if(initial == 0) MR::getGameSceneLayoutHolder().changeLifeMeterSwim();
			}
		}
		if(_230 -> isForceStopRush()) {
			bool received = _924 -> receiveMessage(0x95, getSensor("body"));
			if(_934 && received) {
				RushEndInfo stack_20(NULL, 4, TVec3f(0f, 0f, 0f), false, 0);
				endRush(&stack_20);
			}
		}
		_234 -> setHoming();
		updateTornado();
		if(_934 && selectRecoverFlyMeter(_924)) {
			for(u32 i = 0; i < 4; i++) {
				_230 -> incAirWalkTimer();
			}
		}
		updateSwingTimer();
		return true;
	}
	else {
		_7e2 = false;
		return false;
	}
	
}

void MarioActor::updateSwingTimer() {
	if(_934) stopSpinTicoEffect(false);
	else {
		if(_948) _948--;
		if(_94c && --_94c == 6) _94e = 5;
		if(_94e && --_94e == 0) {
			_230 -> startPadVib((unsigned long)0);
			_230 -> playSound("スピン回復終了", -1);
			Color8 stack_8;
			stack_8.set(0x50, 0x80, 0xc8, 0);
			_1aa = 0xf;
			_1ac = 1.5f;
			_1b0 = stack_8;
			_1b5 = true;
		}
		if(_946) {
			if(--_946 == 0x18) {
				selectAction("スピン回復エフェクト");
				stopEffectForce("スピンリング");
			}
			if(_946 == 0xd) _94c = 0x13;
		}
	}
}

void MarioActor::updateSwingAction() {
	if(isJumping() && _3d4 != 6 && !_230 -> isStatusActive(0x18)) _946 = 0;
	bool r290 = isRequestRush();
	bool r30 = false;
	if(!r290) {
		if(r290 = isRequestSpinJump2P()) r30 = true;
	}
	_1e1 = r290;
	if(_946) {
		if(!r290) return;
		if(!isPunching()) {
			if(_948) _948 += 0x96;
			else _948 += 0x12c;
		}
		if(!r290) return;
		tryReleaseBombTeresa();
		return;
	}
	bool r29 = true;
	if(!r290) return;
	if(_230 -> isAnimationRun("壁はじき")) r29 = false;
	if(isJumping() && _230 -> _428) r29 = false;
	if(_3d4 == 9) r29 = false;
	if(_230 -> getCurrentStatus() == 1) r29 = false;
	if(_230 -> isSwimming()) r29 = false;
	if(_230 -> isStatusActive(0x18)) r29 = false;
	if(_230 -> isStatusActive(0x13)) r29 = false;
	if(__468) r29 = false;
	if(_230 -> isStatusActive(2)) r29 = false;
	if(_3c0) r29 = false;
	if(_ea4) r29 = false;
	if(!r29) return;
	u8 tmp = selectAction("スピンアタック");
	switch(tmp) {
		case 1:
			bool r291 = true;
			if(!_230 -> _8_f && isJumping() && !_230 -> isDamaging() && !_230 -> _8_2b) {
				bool tmp = false;
				if(_f0c) tmp = true;
				_230 -> trySpinJump(tmp);
				setPunchHitTimer(0x19);
				tryReleaseBombTeresa();
				if(r30) MR::start2PJumpAssistSound();
			}
			else if(!getStates()._8_f && !_230 -> isAnimationRun("地上ひねり")) {
				const char *lastAnimationName = _234 -> _10 -> getCurrentAnimationName();
				if(_3d4 == 4) {
					if(!_230 -> isAnimationRun("ハチスピン")) r291 = trySpinPunch();
				}
				else r291 = trySpinPunch();
				_974 = 0;
				if(lastAnimationName != _234 -> _10 -> getCurrentAnimationName()) {
					_230 -> playSound("パンチ風切り", -1);
				}
			}
			if(_3d4 == 4) {
				if(isJumping()) {
					if(!_230 -> isAnimationRun("ハチスピン空中")) {
						_230 -> playSound("声スピン", -1);
						_230 -> playSound("スピンジャンプ", -1);
					}
					_230 -> changeAnimation("ハチスピン空中", (const char *)NULL);
				}
				else if(!getStates()._8_a || _9f1) _230 -> changeAnimation("サマーソルト", (const char *)NULL);
				else _230 -> changeAnimation("ハチスピン", (const char *)NULL);
			}
			if(r291) _946 = _23c -> _0[_23c -> _8] -> _426 + 0x22;
			break;
		case 2:
			if(isEnableSpinPunch() && !_230 -> isSwimming()) shootFireBall();
			break;
		case 3:
			if(isEnableSpinPunch()) {
				doFreezeAttack();
				setPunchHitTimer(0x1e);
			}
			break;
		case 4:
			if(_230 -> _418 != 0) break;
			_230 -> startTeresaDisappear();
			const Constants *constants = _23c -> _0[_23c -> _8];
			_946 = constants -> _6c8 + constants -> _426;
			break;
		case 5:
			if(!isEnableSpinPunch()) break;
			if(isJumping()) _230 -> changeAnimation("ハチスピン空中", (const char *)NULL);
			else {
				if(getStates()._8_a || _9f1) _230 -> changeAnimation("サマーソルト", (const char *)NULL); //Summersault
				else _230 -> changeAnimation("ハチスピン", (const char *)NULL);
			}
			_946 = _23c -> _0[_23c -> _8] -> _426 + 0x22;
			break;
	}
}

void MarioActor::updateRealMtx() {
	updateBaseScaleMtx();
	getRealMtx(_c2c.toMtxPtr(), "HandL");
	getRealMtx(_c5c.toMtxPtr(), "HandR");
	PSMTXCopy(MR::getJointMtx(this, "HandL"), _c8c.toMtxPtr());
	PSMTXCopy(MR::getJointMtx(this, "HandR"), _cbc.toMtxPtr());
	PSMTXCopy(MR::getJointMtx(this, "Face0"), _cec.toMtxPtr());
	getRealMtx(_d1c.toMtxPtr(), "FootR");
	getRealMtx(_d4c.toMtxPtr(), "Spine1");
	getRealMtx(_d7c.toMtxPtr(), "CapPosition");
	getRealMtx(_dac.toMtxPtr(), "Hip");
	getRealMtx(_ddc.toMtxPtr(), "Spine2");
	TVec3f stack_50;
	MR::extractMtxTrans(_ddc.toMtxPtr(), &stack_50);
	if(MR::isNan(stack_50)) {
		MR::getJointMtx(this, "Spine2");
		getBaseMtx();
	}
	bool r31 = true;
	if(_230 -> isStatusActive(0x12)) r31 = false;
	if(!r31) return;
	TVec3f stack_44, stack_38;
	MR::extractMtxTrans(_d7c.toMtxPtr(), &stack_44);
	MR::extractMtxTrans(_dac.toMtxPtr(), &stack_38);
	_4b8 = stack_44.translateOpposite(stack_38);
	_4c4 = stack_38.translateOpposite(stack_44);
	if(MR::normalizeOrZero(&_4b8)) _4b8 = _230 -> _1F0;
	if(MR::normalizeOrZero(&_4c4)) _4c4 = -_230 -> _1F0;
	if(_230 -> getStates()._8_a && _230 -> _8_1) _4c4 = -_230 -> _1F0;
	_2ac = stack_44;
}

void MarioActor::decLife(unsigned short amt) {
	if(_230 -> _8_1f) return;
	if(_388 > 0 && amt > _388) return;
	if(amt) {
		_388 = amt;
		return;
	}
	if(_380) _380--;
	_388 = 0;
	if(isLuigi) {
		if(_3e0 == 3) return;
		if(_380 > 3) return;
		_3e0 = 3;
		return;
	}
	if(_3e0 == 3) return;
	if(_380 > 3) return;
	_3e0 = 3;
}

void MarioActor::decLifeLarge() {
	decLife(0);
}

void MarioActor::decLifeMiddle() {
	decLife(0);
}

void MarioActor::decLifeSmall() {
	decLife(0);
}

void MarioActor::resetWaterLife() {
	_384 = 8;
}

void MarioActor::updateLife() {
	if(!_388) return;
	if(--_388 != 0) return;
	if(!_380) return;
	_380--;
}

void MarioActor::incLife(unsigned long amt) {
	if(isEnableNerveChange() && !_3e4) {
		const u32 tmp = getHealth();
		if(_380 != _3e0) _230 -> playSound("ライフ回復", -1);
		_380 += amt;
		if(_380 >= _3e0) _380 = _3e0;
		if(tmp == 1 && _234 -> isAnimationStop()) {
			_234 -> _c -> changeTrackAnimation(3, "ノーマルウエイト");
			if(_230 -> _970 && strcmp(_230 -> _970, "DamageWait")) {
				_230 -> startBas(NULL, false, 0f, 0f);
				setBlink(NULL);
			}
		}
	}
}

void MarioActor::changeMaxLife(long max) {
	_3e0 = max;
	while(_380 != max) {
		if(_380 > max) decLife(0);
		else if(_380 < max) incLife(1);
		else break;
	}
}

bool MarioActor::doPressing() {
	if(!_390) return false;
	switch(_39c) {
		case 0:
			if(!_230 -> checkVerticalPress(false)) {
				if(--_390 == 0x1e && !_380 && isEnableNerveChange()) {
					setNerve(&NrvMarioActor::MarioActorNrvGameOver::sInstance);
				}
				if(!_390) {
					_230 -> changeAnimation("つぶれ解除", (const char *)NULL);
					_f44 = true;
				}
			}
			break;
		case 2:
		case 3:
			if(--_390 == 0x1e && !_380 && isEnableNerveChange()) {
				setNerve(&NrvMarioActor::MarioActorNrvGameOver::sInstance);
			}
			if(!_390) {
				_230 -> changeAnimation("つぶれ解除", (const char *)NULL);
				_f44 = true;
			}
			break;
		case 4:
			if(_390 > 2) _390--;
			_230 -> _8_8 = false;
			_230 -> _8_19 = false;
			_230 -> _8_1a = false;
			break;
	}
	if(_39c != 1) careMovingObject();
	_234 -> setSpeed(0f);
	_230 -> _350.zero();
	_230 -> _35C.zero();
	resetSensorCount();
	return true;
}

void MarioActor::careMovingObject() {
	if(_1e0) return;
	if (
		getStates()._8_1
		&& !MR::isSameMtx (
			_230 -> _45C -> getPrevBaseMtx() -> toMtxPtr(),
			_230 -> _45C -> getBaseMtx() -> toMtxPtr()
		)
	) {
		_230 -> _130 = mPosition;
		_230 -> checkEnforceMove();
		mPosition = _230 -> _130;
	}
	_230 -> _130 = mPosition;
	_230 -> _160.zero();
	_230 -> powerAreaMove();
	_230 -> powerRailMove();
	_230 -> _130 += _230 -> _160;
	_230 -> _160.zero();
	mPosition = _230 -> _130;
	_230 -> checkGround();
	_230 -> updateFloorCode();
}

bool MarioActor::doStun() {
	if(_38c) {
		_230 -> _18_1a = true;
		resetSensorCount();
		if (
			getStates()._8_1
			&& !MR::isSameMtx (
				_230 -> _45C -> getPrevBaseMtx() -> toMtxPtr(),
				_230 -> _45C -> getBaseMtx() -> toMtxPtr()
			)
		) {
			_230 -> _130 = mPosition;
			_230 -> checkEnforceMove();
			mPosition = _230 -> _130;
		}
		if(!--_38c) {
			f32 stack_c, stack_8;
			getStickValue(&stack_c, &stack_8);
			if(MR::isNearZero(stack_c, 0.001f) && MR::isNearZero(stack_8, 0.001f) && !getStates()._8_a) _230 -> stopWalk();
		}
		_230 -> inputStick();
		return true;
	}
	else return false;
}
