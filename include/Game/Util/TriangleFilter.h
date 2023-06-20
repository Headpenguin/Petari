#pragma once

class Triangle;

typedef bool (*TriangleFunc)(const Triangle *);

class TriangleFilterBase {
public:
    /*TriangleFilterBase(TriangleFunc function) {
        mFunction = function;
    }*/

    virtual bool isInvalidTriangle(const Triangle *) const = 0;

//    TriangleFunc mFunction; // _4 
};

class TriangleFilterFunc : public TriangleFilterBase {
public:
    /*TriangleFilterFunc(TriangleFunc func) : TriangleFilterBase(func) {

    }*/

    virtual bool isInvalidTriangle(const Triangle *) const;
};

namespace MR {
    TriangleFilterFunc* createTriangleFilterFunc(TriangleFunc);
};

template<typename T>
class TriangleFilterDelegator: public TriangleFilterBase {
	public:
	typedef bool (T::*DelegateFilter)(const Triangle *);
	TriangleFilterDelegator(T *parent, u32 _8, s32 _C, DelegateFilter filter)
		: mParent(parent), _8(_8), _C(_C), mFunc(filter) {}

	virtual bool isInvalidTriangle(const Triangle *) const;

	T *mParent; // _4
	u32 _8;
	s32 _C;
	DelegateFilter mFunc; // _10
};
