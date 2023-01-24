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
