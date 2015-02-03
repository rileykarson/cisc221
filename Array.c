#include <stdio.h>

int main()
{
	int inputCol = 7;
	int inputRow = 6;
	int arraySize = inputCol*inputRow;
	int baseArray[(inputCol * inputRow)];
	int dummy = 0;
	for (dummy = 0; dummy < (arraySize-1); dummy++)
	{
		baseArray[dummy] = 0;
		printf("%d\n", baseArray[dummy] );
	}
	return 0;
}

