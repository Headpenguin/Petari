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

	_88 = 1f; // FIX THIS
	_8C = 1f;
	_90 = 1f;
	mActiveFaces = 63;
	//Use the function to construct both TMtx34f
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

/*bool CubeGravity::calcOwnGravityVector(TVec3f *pDest, f32 *pScalar, const TVec3f &rPosition) const {
	//Stack size: 0x20 (8 for lr + sp => 0x1c for data)
	calcGravityArea(rPosition);
	
}*/

u8 CubeGravity::calcGravityArea(const TVec3f &rPosition) const {
	//Stack size: 0x70
	TVec3f dirX, dirY, dirZ, trans;
	_58.getXDir(dirX);
	_58.getYDir(dirY);
	_58.getZDir(dirZ);
	_58.getTrans(trans);
	TVec3f _8 = rPosition - trans;
	u8 sum;
	float xDot = _8.dot(dirX) / _88, yDot = _8.dot(dirY) / _8C, zDot = _8.dot(dirZ) / _90;
	if(xDot >= -_88) { // bc succeeds
		if(xDot <= _88) { // bc fails
			sum += 1;
			//goto ydot comp
		}
		else if(mActiveFaces & 1 == 1) {
			sum += 2;
			//goto ydot comp
		}
		else return -1;
	}
	/*else if(mActiveFaces & 2 == 2) { // bc succeeds
		sum = 0;
		// goto ydot comp
	}
	else return -1;*/
	else if(mActiveFaces & 2 != 2) return -1;
	//jdiv nfdn bgjhnfcdvjhn
	if(yDot >= -_8C) { // bc succeeds
		if(yDot <= _8C) { // bc fails
			sum += 3;
			//goto ydot comp
		}
		else if(mActiveFaces & 4 == 4) {
			sum += 6;
			//goto ydot comp
		}
		else return -1;
	}
	else if(mActiveFaces & 8 != 8) { // bc succeeds
		return -1;
	}
	//fdnhjukfdhhnfgfdjugdfn
	if(zDot >= -_90) { // bc succeeds
		if(zDot <= _90) { // bc fails
			sum += 9;
			//goto ydot comp
		}
		else if(mActiveFaces & 16 == 16) {
			sum += 18;
			//goto ydot comp
		}
		else return -1;
	}
	else if(mActiveFaces & 32 != 32) return -1; // bc succeeds
		
	return sum;
}
