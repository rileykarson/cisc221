#include "win.h"
#include "221dropFunc.h"
#include "inputFunctions.h"
#include "ascii.h"
#include "array.h"

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
		winFlag = win(arr, rows, columns, pos);
		ascii(arr, rows, columns);
		playCount += 1;
	}
	return 0;
}
