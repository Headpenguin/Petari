#include "Game/Player/Mario.h"

void Mario::clearSlope() {
	_8F0 = 0f;
	_C &= 0xefffffff;
	_8F8.zero();
	_280 = 0f;
	_910.zero();
	_284.zero();
	_3C2 = 0;
	_2C4.zero();
	_3C4 = 0;
	_904.zero();
}
