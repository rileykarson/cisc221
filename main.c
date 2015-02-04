#include "win.h"

/*
	* Main Function
	* Purpose: Initialise variables and call the game loop.
	* Parameters: None.
	* Return: 0, signalling program success.
*/
int main(){
	int *arr;
	//TODO: Make calls to user input functions
	int *rows;
	int *columns;
	makeArray(arr, rows, columns);
	gameLoop(arr, rows, columns);
	return 0;
}