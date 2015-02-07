#include <stdio.h>
#include "array.h"

int* makeArray(int rows, int columns)
{
	int arraySize = rows*columns;
	int baseArray[arraySize];
	int dummy = 0;
	for (dummy = 0; dummy < (arraySize-1); dummy++)
	{
		baseArray[dummy] = 0;
	}
	return baseArray;
}

