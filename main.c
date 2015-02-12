#include "win.h"
#include "221dropFunc.h"
#include "inputFunctions.h"
#include "ascii.h"
#include "array.h"
#include "stdio.h"

/*
	* Main Function
	* Purpose: Initialise variables and call the game loop.
	* Parameters: None.
	* Return: 0, signalling program success.
*/
int main(){
	int rows;
	int columns;
	char symbol1;
	char symbol2;
	//Resources modified in place.
	initialPrompt(&rows, &columns, &symbol1, &symbol2);
	int *arr = makeArray(rows, columns);
	int winFlag = 0;
	int playCount = 1;
	while(winFlag == 0){
		int dropCol = promptForNextDrop(columns);
		int pos = pieceDrop(arr, rows, columns, dropCol, playCount);
		if (pos >= 0){
			winFlag = win(arr, rows, columns, pos);
			playCount += 1;
		}
		else{
			printf("Please enter a not full column\n");
		}
		ascii(arr, rows, columns, symbol1, symbol2);
	}
	return 0;
}
