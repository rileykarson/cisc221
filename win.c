#include "win.h"
#include <stdio.c>

#define UP 1
#define DOWN -1
#define RIGHT 1
#define LEFT -1
#define NOMOVEMENT 0


int win(int *arr, int rows, int columns, int position){
	int vertical = 0;
	int horizontal = 0;
	int diagonalAlpha = 0; //Bottom Left to Top Right
	int diagonalBeta = 0; //Top Left to Bottom Right

	vertical = 1 + checkSpaces(arr, rows, columns, position, UP, NOMOVEMENT) + checkSpaces(arr, rows, columns, position, DOWN, NOMOVEMENT);
	return vertical;
}

int checkSpaces(int *arr, int rows, int columns, int position, int vshift, int hshift) {
	int pos = position;
	int counter = 0;
	while (pos > 0 && pos < rows*columns){
		pos = pos + (rows*vshift), hshift;
		printf("Checking %d", pos);
		i = i + 1;
	}
	return i;
}