#include "Game/Gravity.h"
#include "Game/Util/MathUtil.h"
#include "JSystem/JMath/JMath.h"

template<>
bool TVec3f::isZero() const {
	register const TVec3f *rSrc = this;
	register f32 sum;

	__asm {
		psq_l     f1, 0(rSrc), 0, 0
		lfs       sum, 8(rSrc)
		ps_mul    f1, f1, f1
		ps_madd   sum, sum, sum, f1
		ps_sum0   sum, sum, f1, f1
	};

	return sum <= 0.0000038146973f;
}

CubeGravity::CubeGravity() : PlanetGravity() {

	_88 = 1f;
	_8C = 1f;
	_90 = 1f;
	mActiveFaces = 63;

	mCube.identity();
	mPosition.identity();
}

void CubeGravity::setCube(const TPos3f & cube) {
	mCube = cube;
	
	updateIdentityMtx();
}

void CubeGravity::updateMtx(const TPos3f &rMtx) {
	mPosition.concat(rMtx, mCube);
	TVec3f dir;
	mPosition.getXDir(dir);
	_88 = VECMag(dir.toCVec());
	mPosition.getYDir(dir);
	_8C = VECMag(dir.toCVec());
	mPosition.getZDir(dir);
	_90 = VECMag(dir.toCVec());
}

bool CubeGravity::calcOwnGravityVector(TVec3f *pDest, f32 *pScalar, const TVec3f &rPosition) const {
	//Stack size: 0x20 (8 for lr + sp => 0x1c for data)
	int area = calcGravityArea(rPosition);
	if(area < 0) return false; // Note: Result of calcGravityArea probably should be stored in 1f
	TVec3f dst;
	float scalar;
	if (
		!calcFaceGravity(rPosition, area, &dst, &scalar)
		&& !calcCornerGravity(rPosition, area, &dst, &scalar)
		&& !calcEdgeGravity(rPosition, area, &dst, &scalar)
	) return false;
		
	if(isInRangeDistance(scalar)) return false; //bc fails

	if(pDest != NULL) //bc success
		*pDest = dst;

	if(pScalar != NULL) //bc success
		*pScalar = scalar;
	return true;
}

int CubeGravity::calcGravityArea(const TVec3f &rPosition) const { // Area as in region, not area as in Area = Base * h
	TVec3f dirX, dirY, dirZ, trans;
	mPosition.getXDir(dirX);
	mPosition.getYDir(dirY);
	mPosition.getZDir(dirZ);
	mPosition.getTrans(trans);
	TVec3f stack_8 = rPosition - trans;
	int sum;
	float xDot = stack_8.dot(dirX) / _88, yDot = stack_8.dot(dirY) / _8C, zDot = stack_8.dot(dirZ) / _90;

	if(xDot < -_88) {
		if((mActiveFaces & 2) != 2) return -1;
		sum = 0;
	}
	else {
		if(xDot <= _88) {
			sum = 1;
		}
		else {
			if((mActiveFaces & 1) != 1) return -1;
			sum = 2;
		}
	}

	if(yDot < -_8C) {
		if((mActiveFaces & 8) != 8) return -1;
	}
	else {
		if(yDot <= _8C) {
			sum += 3;
		}
		else {
			if((mActiveFaces & 4) != 4) return -1;
			sum += 6;
		}
	}
	
	if(zDot < -_90) {
		if((mActiveFaces & 32) != 32) return -1;
	}
	else {
		if(zDot <= _90) {
			sum += 9;
		}
		else {
			if((mActiveFaces & 16) != 16) return -1;
			sum += 18;
		}
	} 
		
	return sum;
}

bool CubeGravity::calcFaceGravity(const TVec3f &rPosition, s32 area, TVec3f *pDest, f32 *pScalar) const {
	TVec3f stack_24;
	switch(area) {
		case 4:
			mPosition.getZDir(stack_24);
			break;
		case 10:
			mPosition.getYDir(stack_24);
			break;
		case 12:
			mPosition.getXDir(stack_24);
			break;
		case 14:
			mPosition.getXDir(stack_24);
			JGeometry::negateInternal(&stack_24.x, &stack_24.x);
			break;
		case 16:
			mPosition.getYDir(stack_24);
			JGeometry::negateInternal(&stack_24.x, &stack_24.x);
			break;
		case 22:
			mPosition.getZDir(stack_24);
			JGeometry::negateInternal(&stack_24.x, &stack_24.x);
			break;
		default:
			return false;
		
	}
	TVec3f stack_18;
	f32 stack_8;
	mPosition.getTrans(stack_18);
	MR::separateScalarAndDirection(&stack_8, &stack_24, stack_24);
	float fr_31 = stack_24.dot(stack_18 - rPosition) - stack_8;
	if(fr_31 < 0f) fr_31 = 0f;
	*pDest = stack_24;
	*pScalar = fr_31;
	return true;
}

void helperFunc1(const TVec3f& a, TVec3f& b, const TVec3f& c) {
	JMAVECScaleAdd(a.toCVec(), c.toCVec(), b.toVec(), -a.dot(c));
}

TVec3f negate(const TVec3f& in) {
       TVec3f tmp;
       JGeometry::negateInternal(&in.x, &tmp.x);
       return tmp;
}


inline TVec3f translate(const TVec3f& a, const TVec3f& b) {
	TVec3f tmp = a;
	tmp += b;
	return tmp;
}

bool CubeGravity::calcEdgeGravity(const TVec3f &rPosition, s32 area, TVec3f *pDest, f32 *pScalar) const {
	if(!(((area & 1) ^ ((area & 0x80000000) >> 31)) - ((area & 0x80000000) >> 31)) || area == 13) return false;
	TVec3f stack_140, stack_134, xDir, yDir, zDir, trans, stack_f8;
	mPosition.getXDir(xDir);
	mPosition.getYDir(yDir);
	mPosition.getZDir(zDir);
	switch(area) {
		case 1:
			stack_140 = xDir;
			stack_134 = negate(yDir) - zDir;
			break;
		case 3:
			stack_140 = yDir;
			stack_134 = negate(xDir) - zDir;
			break;
		case 5:
			stack_140 = yDir;
			stack_134 = xDir - zDir;
			break;
		case 7:
			stack_140 = xDir;
			stack_134 = yDir - zDir;
			break;
		case 9:
			stack_140 = zDir;
			stack_134 = negate(xDir) - yDir;
			break;
		case 11:
			stack_140 = zDir;
			stack_134 = xDir + yDir;
			break;
		case 15:
			stack_140 = zDir;
			stack_134 = translate(negate(xDir), yDir);
			break;
		case 17:
			stack_140 = zDir;
			stack_134 = translate(xDir, yDir);
			break;
		case 19:
			stack_140 = xDir;
			stack_134 = translate(negate(yDir), zDir);
			break;
		case 21:
			stack_140 = yDir;
			stack_134 = translate(negate(xDir), zDir);
			break;
		case 23:
			stack_140 = yDir;
			stack_134 = translate(xDir, zDir);
			break;
		case 25:
			stack_140 = xDir;
			stack_134 = translate(yDir, zDir);
			break;
		default:
			return false;
	}
	mPosition.getTrans(trans);
	stack_134 += trans;
	MR::normalizeOrZero(&stack_140);
	helperFunc1(stack_140, stack_f8, stack_134 - rPosition);
	if(stack_f8.isZero()) {
		pDest -> normalize(stack_134 - trans);
		*pScalar = 0f;
	}
	else {
		*pScalar = pDest -> normalize(stack_f8);
	}
	return true;
	
}

bool CubeGravity::calcCornerGravity(const TVec3f &rPosition, s32 area, TVec3f *pDest, f32 *pScalar) const {
	TVec3f stack_140, xDir, yDir, zDir, trans;
	mPosition.getXDir(xDir);
	mPosition.getYDir(yDir);
	mPosition.getZDir(zDir);
	switch(area) {
		case 0:
			stack_140 = negate(xDir) - yDir - zDir;
			break;
		case 2:
			stack_140 = xDir - yDir - zDir;
			break;
		case 6:
			stack_140 = translate(negate(xDir), yDir) - zDir;
			break;
		case 8:
			stack_140 = translate(xDir, yDir) - zDir;
			break;
		case 18:
			stack_140 = translate(negate(xDir) - yDir, zDir);
			break;
		case 20:
			stack_140 = translate(xDir - yDir, zDir);
			break;
		case 24:
			stack_140 = translate(translate(negate(xDir), yDir), zDir);
			break;
		case 26:
			stack_140 = translate(translate(xDir, yDir), zDir);
			break;
		default:
			return false;
	}
	mPosition.getTrans(trans);
	stack_140 += trans;
	TVec3f stack_104 = stack_140 - rPosition;
	if(stack_104.isZero()) {
		*pScalar = 0f;
		pDest -> normalize(stack_140 - trans);
	}
	else {
		*pScalar = pDest -> normalize(stack_104);
	}
	return true;
}
