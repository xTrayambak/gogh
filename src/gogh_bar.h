#ifndef GOGH_BAR_H_
#define GOGH_BAR_H_

#include <LSolidColorView.h>

using namespace Louvre;

class GoghOutput;

class GoghBar : public LObject
{
public:
	GoghBar(GoghOutput *output);
	~GoghBar();

	GoghOutput *output = nullptr;
	LSolidColorView view;

	void slideIntoView(UInt32 ms);

	void update();
};

#endif
