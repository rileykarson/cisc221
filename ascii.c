#include <stdio.h>
#include "ascii.h"

void ascii(int *arr, int rows, int columns)
{
	int outDummy = 0;
	int innerDummy = 0; 
	int topLine = columns;
	int dummy = 0; 
	for (topLine = 0; topLine < columns; topLine ++)
	{
		printf("%s", "--- ");
	}
	printf("\n");
	for (innerDummy = 0; innerDummy < rows; innerDummy++)// Increments up building column
	{
		for (outDummy = 0; outDummy < columns; outDummy++)//Generates Rows 
		{
			printf("%s", "|  |");

		}
		printf("\n");
		for( dummy = 0; dummy < columns; dummy++)
			{
				printf("%s", "|__|");
			}
		printf("\n");//Generates new line
	}
}