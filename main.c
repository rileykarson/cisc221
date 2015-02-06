#include "win.h"

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
		int pos = pieceDrop(arr, row, column, dropCol);
		win = win(arr, rows, columns, pos);
		ascii(arr);
	}
	return 0;
}