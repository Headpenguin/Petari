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

bool CubeGravity::calcEdgeGravity(const TVec3f &rPosition, s32 area, TVec3f *pDest, f32 *pScalar) const {
	// Insn 20
	if(((area & 1) ^ ((area & 0x80000000) >> 31)) - ((area & 0x80000000) >> 31) || area == 13) return false;
	TVec3f stack_140, stack_134, xDir, yDir, zDir, trans, stack_f8;
	mPosition.getXDir(xDir);
	mPosition.getYDir(yDir);
	mPosition.getZDir(zDir);
	switch(area) {
		case 1:
			TVec3f stack_e0;
			stack_140 = xDir;
			JGeometry::negateInternal(&yDir.x, &stack_e0.x);
			//TVec3f stack_ec = 
			stack_134 = stack_e0 - zDir;
			break;
		case 3:
			TVec3f stack_c8;
			stack_140 = yDir;
			JGeometry::negateInternal(&xDir.x, &stack_c8.x);
			TVec3f stack_d4 = stack_c8 - zDir;
			stack_134 = stack_d4;
			break;
		case 5:
			stack_140 = yDir;
			TVec3f stack_bc = xDir - zDir;
			stack_134 = stack_bc;
			break;
		case 7:
			stack_140 = xDir;
			TVec3f stack_b0 = yDir - zDir;
			stack_134 = stack_b0;
			break;
		case 9:
			TVec3f stack_98;
			stack_140 = zDir;
			JGeometry::negateInternal(&zDir.x, &stack_98.x);
			TVec3f stack_8c = stack_98 - yDir;
			stack_134 = stack_8c;
			break;
		case 11:
			//TVec3f stack_74;
			stack_140 = zDir;
			//JGeometry::negateInternal(&xDir.x, &stack_74.x);
			TVec3f stack_80 = xDir + yDir;
			//stack_80 += yDir;
			stack_134 = stack_80;
			break;
		case 15:
			TVec3f stack_74;
			stack_140 = zDir;
			JGeometry::negateInternal(&xDir.x, &stack_74.x);
			TVec3f stack_68 = stack_74;
			stack_68 += yDir;
			stack_134 = stack_68;
			break;
		case 17:
			TVec3f stack_50;
			stack_140 = xDir;
			//JGeometry::negateInternal(&yDir.x, &stack_50.x);
			stack_50 = xDir;
			//TVec3f stack_5c = stack_50;
			stack_50 += yDir;
			stack_134 = stack_50;
			break;
		case 19:
			TVec3f stack_38;
			stack_140 = yDir;
			JGeometry::negateInternal(&xDir.x, &stack_38.x);
			TVec3f stack_44 = stack_38;
			stack_44 += zDir;
			stack_134 = stack_44;
			break;
		case 21:
			TVec3f stack_2c;
			stack_140 = yDir;
			JGeometry::negateInternal(&xDir.x, &stack_2c.x);
			TVec3f stack_2b = xDir;
			stack_2b += zDir;
			stack_134 = stack_2b;
			break;
		case 23:
			stack_140 = xDir;
			TVec3f stack_20 = yDir;
			stack_20 += zDir;
			stack_134 = stack_20;
			break;
		case 25:
			stack_140 = xDir;
			TVec3f stack_something = yDir;
			stack_something += zDir;
			stack_134 = stack_something;
			break;
		default:
			return false;
	}
	mPosition.getTrans(trans);
	stack_134 += trans;
	MR::normalizeOrZero(&stack_140);
	TVec3f stack_14 = stack_134 - rPosition;
	JMAVECScaleAdd(stack_140.toVec(), stack_14.toVec(), stack_f8.toVec(), -stack_140.dot(stack_14));
	TVec3f stack_8 = stack_134 - trans;
	pDest -> normalize(stack_8);
	*pScalar = 0f;
	return true;
}

