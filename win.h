/*
	* Win Function
	* Purpose: Determine if a game state is a win for either player.
	* Parameters: Game state array, row and column sizes, and position of latest piece added.
	* Return: 0 signalling no win, 1 signalling a winning state.
*/
int win(int *arr, int rows, int columns, int position);