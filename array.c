#include <stdio.h>

int* makeArray(rows, columns)
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

