#include "JSystem/JAudio2/JASSeqCtrl.h"
#include "JSystem/JAudio2/JASTrack.h"

JASSeqParser JASSeqCtrl::sDefaultParser = JASSeqParser();

JASSeqCtrl::JASSeqCtrl() {
	JASSeqReader::init();
	_3C = &sDefaultParser;
	_40 = 0;
	_44 = 0;
	_48 = 0;
	_4C = 0;
	_4E = 0;
	_50 = 0;
	_51 = false;
	_54 = 0;
	_58 = 0;
	JASSeqReader::init();
}

void JASSeqCtrl::init() {
	JASSeqReader::init();
	_3C = &sDefaultParser;
	_40 = 0;
	_44 = 0;
	_48 = 0;
	_4C = 0;
	_4E = 0;
	_50 = 0;
	_54 = 0;
	_58 = 0;
	_51 = false;
}

void JASSeqCtrl::start(void *passMeForFun, u32 offset) {
	JASSeqReader::init();
	_4 = mSeqData + offset;
}

int JASSeqCtrl::tickProc(JASTrack *track) {
	if(!mSeqData) return 0;
	interrupt(JASSeqCtrl::INTR_6);
	timerProcess();
	if(_51) {
		if(!track->checkNoteStop(0)) return 0;
		_51 = false;
	}
	if(_40 > 0) _40--;
	checkIntr();
	
	while((!_40 || _44) && !_51) {
		if(_3C->parse(track) < 0) return -1;
	}

	return 0;
}

void JASSeqCtrl::interrupt(JASSeqCtrl::IntrType interrupt) {
	u32 mask = 1 << interrupt;
	if(!(_4E & mask)) return;
	_4C |= mask;
}

void JASSeqCtrl::setIntrMask(u32 mask) {
	_4E |= mask;
}

void JASSeqCtrl::clrIntrMask(u32 mask) {
	_4E &= ~mask;
}

bool JASSeqCtrl::retIntr() {
	if(!_44) return false;
	_4 = _44;
	_44 = 0;
	return true;
}

s32 JASSeqCtrl::findIntr() {
	u32 intr = _4E & _4C;
	for(u32 i = 0; intr != 0; i++) {
		if(intr & 1) {
			_4C &= ~(1 << i);
			return i;
		}
		else intr >>= 1;
	}
	return -1;
}

void JASSeqCtrl::checkIntr() {
	s32 intr;
	if(!_44 && (intr = findIntr()) >= 0) {
		intr = intr * 3 + _48;
		u32 offset = calcSeekAmt(intr);
		_44 = _4;
		_4 = mSeqData + offset;
	}
}

void JASSeqCtrl::timerProcess() {
	if(_54 != 0) {
		if(!--_54) {
			interrupt(INTR_5);
			if(_50) {
				if(--_50) {
					_54 = _58;
				}
			}
			else _54 = _58;
		}
	}
}

JASSeqParser::JASSeqParser() {}