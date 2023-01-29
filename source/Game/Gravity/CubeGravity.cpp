#include "Game/Gravity.h"
#include "MathUtil.h"

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

int CubeGravity::calcGravityArea(const TVec3f &rPosition) const {
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

bool CubeGravity::calcFaceGravity(const TVec3f &rPosition, s32 _r5, TVec3f *pDest, f32 *pScalar) const {
	//if(_r5 - 4 > 12) return false;
	TVec3f stack_24;
	switch(_r5) {
		case 4:
			_58.getZDir(stack_24);
			break;
		case 10:
			_58.getYDir(stack_24);
			break;
		case 12:
			_58.getXDir(stack_24);
			break;
		case 14:
		case 18:
			_58.getXDir(stack_24);
			JGeometry::negateInternal(&stack_24.x, &stack_24.x);
		case 16:
		case 20:
			_58.getYDir(stack_24);
			JGeometry::negateInternal(&stack_24.x, &stack_24.x);
		case 27:
			_58.getZDir(stack_24);
			JGeometry::negateInternal(&stack_24.x, &stack_24.x);
		default:
			return false;
		
	}
	// Line 56
	TVec3f stack_18, stack_24, stack_c;
	f32 stack_8;
	_58.getTrans(stack_18);
	MR::separateScalarAndDirection(&stack_8, &stack_24, stack_24);
	stack_c = stack_18 - stack_24;
	fr_31 = stack_24.dot(stack_c) - stack_8;
	if(fr_31 < 0) {
		*pDest = stack_24;
		*pScalar = 0;
	}
	else {
		stack_24 = stack_24; //wtf
		*pScalar = fr_31;
	}
	return true;
}
