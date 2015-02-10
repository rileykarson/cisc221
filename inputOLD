#include "inputFunctions.h"
#include <stdio.h>

/*initialPrompt takes pointers to column, row and symbol variables, and
prompts the user for these values and updates the values at the pointers*/
int initialPrompt(int *columns, int *rows, char *symbol){
        printf("Welcome to connect 4!\n");
        int scanCorrect = 0;//signals that the loop to stop if scanf worked
        int scanCheck;//keeps track of return value of scanf
        printf("Enter number of columns in grid: \n");
        while (scanCorrect == 0){
                scanCheck = scanf("%d",columns);
                if (scanCheck != 0){//improper input
                        printf("Incompatible input please enter a new column number: \n");
                }
                else if ((*columns >10)||(*columns <1)){
                        printf("Column entered is out of bounds enter a column number between 1 and 10 inclusive: \n");
                }
                else {
                        scanCheck = 1;//proper input
                }
        }
        scanCorrect = 0;
        printf("Enter number of rows in grid: \n");
        while (scanCorrect == 0){
                scanCheck = scanf("%d",rows);
                if (scanCheck != 0){
                        printf("Incompatible input please enter a new row number: \n");
                }
                else if ((*rows >10)||(*rows <1)){
                        printf("Rows entered is out of bounds enter a row number between 1 and 10 inclusive: \n");
                }
                else {
                        scanCheck = 1;
                }
        }

        scanCorrect = 0;
        printf("Enter the symbol that you would like to play with: \n");
        while (scanCorrect == 0){
                scanCheck = scanf("%c",symbol);
                if (scanCheck != 0){
                        printf("Incompatible input please enter a new symbol: \n");
                }
                else {
                        scanCheck = 1;
                }
        }

return 0;
}

/*prompt for numCols takes an int number of columns in the grid, prompts the user for column
that they would like to drop the piece and returns that column */
int promptForNextDrop(int numCols){
        int dropCol;
        int scanCorrect = 0;
        int scanCheck;
        printf("Enter a column that you would like to drop the next piece: \n");
        while(scanCorrect == 0){
                scanCheck = scanf("%d",&dropCol);
                if (scanCheck != 0){
                        printf("Column entered is not valid please try again: \n");
                }
                else if((dropCol <1)||(dropCol >numCols)){
                        printf("Column entered is out of bounds please enter a column that is between 1 and %d inclusive: \n",numCols);
                }
        }
return numCols;
}
