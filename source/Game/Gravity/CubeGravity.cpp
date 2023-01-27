#include "Game/Gravity.h"

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

	_28.identity();
	_58.identity();
}

void CubeGravity::setCube(const TPos3f & cube) {
	_28 = cube;
	
	updateIdentityMtx();
}

void CubeGravity::updateMtx(const TPos3f &rMtx) {
	_58.concat(rMtx, _28);
	TVec3f dir;
	_58.getXDir(dir);
	_88 = VECMag(dir.toCVec());
	_58.getYDir(dir);
	_8C = VECMag(dir.toCVec());
	_58.getZDir(dir);
	_90 = VECMag(dir.toCVec());
}

bool CubeGravity::calcOwnGravityVector(TVec3f *pDest, f32 *pScalar, const TVec3f &rPosition) const {
	//Stack size: 0x20 (8 for lr + sp => 0x1c for data)
	int area = calcGravityArea(rPosition);
	if(area < 0) return false; // Note: Result of calcGravityArea probably should be stored in 1f
	TVec3f dst;
	float scalar;
	if(!calcFaceGravity(rPosition, area, &dst, &scalar) && !calcCornerGravity(rPosition, area, &dst, &scalar) && !calcEdgeGravity(rPosition, area, &dst, &scalar)) return false;
		
		if(isInRangeDistance(scalar)) return false; //bc fails

		if(pDest != NULL) //bc success
			*pDest = dst;

		if(pScalar != NULL) //bc success
			*pScalar = scalar;
		return true;
}

int CubeGravity::calcGravityArea(const TVec3f &rPosition) const {
	TVec3f dirX, dirY, dirZ, trans;
	_58.getXDir(dirX);
	_58.getYDir(dirY);
	_58.getZDir(dirZ);
	_58.getTrans(trans);
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
