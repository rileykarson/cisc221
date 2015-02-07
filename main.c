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
	char symbol;
	//Resources modified in place.
	initalPrompt(&rows, &columns, &symbol);
	int *arr = makeArray(rows, columns);
	int win = 0;
	while(win == 0){
		int dropCol = promptForNextDrop(columns);
		int pos = pieceDrop(arr, rows, columns, dropCol);
		win = win(arr, rows, columns, pos);
		ascii(arr);
	}
	return 0;
}