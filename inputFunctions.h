/*initialPrompt takes pointers to column, row and symbol variables, and
prompts the user for these values and updates the values at the pointers*/
int initialPrompt(int *columns, int *rows, char *symbol);

/*prompt for numCols takes an int number of columns in the grid, prompts the user for column
that they would like to drop the piece and returns that column */
int promptForNextDrop(int numCols);