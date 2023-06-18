#pragma once

class Triangle;

typedef bool (*TriangleFunc)(const Triangle *);

class TriangleFilterBase {
public:
    TriangleFilterBase(TriangleFunc function) {
        mFunction = function;
    }

    virtual bool isInvalidTriangle(const Triangle *) const = 0;

    TriangleFunc mFunction; // _4
};

class TriangleFilterFunc : public TriangleFilterBase {
public:
    TriangleFilterFunc(TriangleFunc func) : TriangleFilterBase(func) {

    }

    virtual bool isInvalidTriangle(const Triangle *) const;
};

namespace MR {
    TriangleFilterFunc* createTriangleFilterFunc(TriangleFunc);
};

template<typename T>
class TriangleFilterDelegator: public TriangleFilterBase {
	public:
	TriangleFilterDelegator(const T *parent, const char *name, volatile u16 flags) : TriangleFilterBase((TriangleFunc)parent), mName(name), mFlags(flags) {}
	//vtable?
	const char *mName;
	volatile u16 mFlags;
	virtual bool isInvalidTriangle(const Triangle *) const;
};
