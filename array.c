#include <stdio.h>
#include <stdlib.h>
#include "array.h"

int* makeArray(int rows, int columns)
{
	int arraySize = rows*columns;
	int *baseArray = malloc(sizeof(int) * arraySize);
	int dummy = 0;
	for (dummy = 0; dummy < (arraySize-1); dummy++)
	{
		baseArray[dummy] = 0;
	}
	return baseArray;
}

