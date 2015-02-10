#include <stdio.h>
#include "ascii.h"

void ascii(int *arr, int rows, int columns, char symbol1, char symbol2 )
{
	int vpos = 0;
	int topLine;
	int hpos  = 0;
	for (topLine = 0; topLine < columns; topLine ++)
	{
		printf("%s", "--- ");
	}
	printf("\n");
	for (vpos = 0; vpos < rows; vpos++)// Increments up building column
	{
		for(hpos = 0; hpos < columns; hpos++)
		{
				if (arr[vpos*columns + hpos] == 1)
				{
					printf("|%c|", symbol1 );
				}
				if (arr[vpos*columns + hpos] == 2)
				{
					printf("|%c|", symbol2);
				}
				else
				{
					printf("|_|");
				}
			}
		printf("\n");//Generates new line
	}
}
