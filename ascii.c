#include <stdio.h>
#include "ascii.h"

void ascii(int *arr, int rows, int columns, char symbol1, char symbol2 )
{
<<<<<<< HEAD
	int outDummy = 0;
	int innerDummy = 0; 
	int topLine;
	int dummy = 0; 
=======
	int vpos = 0;
	int topLine;
	int hpos  = 0;
>>>>>>> b5eae55fc7952d99189e7bfd4568d42b75fa8c34
	for (topLine = 0; topLine < columns; topLine ++)
	{
		printf("%s", "--- ");
	}
	printf("\n");
	for (vpos = 0; vpos < rows; vpos++)// Increments up building column
	{
		for(hpos = 0; hpos < columns; hpos++)
		{
<<<<<<< HEAD
			printf("%s", "|  |");

		}
		printf("\n");
		for(dummy = 0; dummy < columns; dummy++)
			{
				if (arr[dummy] == 1)
				{
					printf("%c", symbol1 );
=======
				if (arr[vpos*columns + hpos] == 1)
				{
					printf("|%c|", symbol1 );
>>>>>>> b5eae55fc7952d99189e7bfd4568d42b75fa8c34
				}
				if (arr[vpos*columns + hpos] == 2)
				{
<<<<<<< HEAD
					printf("%c", symbol2);
=======
					printf("|%c|", symbol2);
>>>>>>> b5eae55fc7952d99189e7bfd4568d42b75fa8c34
				}
				else
				{
<<<<<<< HEAD
					printf("%c", "|__|");
=======
					printf("|_|");
>>>>>>> b5eae55fc7952d99189e7bfd4568d42b75fa8c34
				}
			}
		printf("\n");//Generates new line
	}
}
