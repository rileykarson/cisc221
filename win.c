#include "win.h"
#include <stdio.h>

#define UP 1
#define DOWN -1
#define RIGHT 1
#define LEFT -1
#define NOMOVEMENT 0

/*
	* Win Function
	* Purpose: Determine if a game state is a win for either player.
	* Parameters: Game state array, row and column sizes, and position of latest piece added.
	* Return: 0 signalling no win, 1 signalling a winning state.
*/
int win(int *arr, int rows, int columns, int position){
	int vertical = 0;
	int horizontal = 0;
	int diagonalAlpha = 0; //Bottom Left to Top Right
	int diagonalBeta = 0; //Top Left to Bottom Right

	vertical = 1 + checkSpaces(arr, rows, columns, position, UP, NOMOVEMENT) + checkSpaces(arr, rows, columns, position, DOWN, NOMOVEMENT);
	return vertical;
}

/*
	* CheckSpaces Helper Function
	* Purpose: Determine how many sequential pieces are flipped in some direction from the latest added piece.
	* Parameters: Game state array, row and column sizes, position of latest piece added, shift amounts vertically and horizontally.
	* Return: 0 signalling no win, 1 signalling a winning state.
*/
int checkSpaces(int *arr, int rows, int columns, int position, int vshift, int hshift) {
	int pos = position;
	int counter = 0;
	int i = 0;
	while (pos > 0 && pos < rows*columns){
		pos = pos + (rows*vshift), hshift;
		printf("Checking %d", pos);
		i = i + 1;
	}
	return i;
}
