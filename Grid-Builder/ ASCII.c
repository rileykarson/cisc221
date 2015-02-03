#include <stdio.h>

int main()
{
	int inputCol = 10;
	int inputRow = 10; 
	int outDummy = 0;
	int innerDummy = 0; 
	int topLine = inputCol;
	int dummy = 0; 
	for (topLine = 0; topLine < inputCol; topLine ++)
	{
		printf("%s", "--- ");
	}
	printf("\n");
	for (innerDummy = 0; innerDummy < inputRow; innerDummy++)// Increments up building column
	{
		for (outDummy = 0; outDummy < inputCol; outDummy++)//Generates Rows 
		{
			printf("%s", "|  |");

		}
		printf("\n");
		for( dummy = 0; dummy < inputCol; dummy++)
			{
				printf("%s", "|__|");
			}
		
		printf("\n");//Generates new line
		
	}
	
	return 0;
	
}
