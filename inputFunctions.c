#include "inputFunctions.h"
#include <stdio.h>

int initialPrompt(int *columns, int *rows, char *symbol1, char *symbol2){
        printf("Welcome to connect 4!\n");
        int scanCorrect = 0;//signals that the loop to stop if scanf worked
        int scanCheck;//keeps track of return value of scanf
        printf("Enter number of columns in grid: ");
        while (scanCorrect == 0){
                scanCheck = scanf(" %d",columns);
                fgetc(stdin);
                if (scanCheck != 1){//improper input
                        printf("Incompatible input please enter a new column number: ");
                }
                else if ((*columns >10)||(*columns <1)){
                        printf("Column entered is out of bounds enter a column number between 1 and 10 inclusive: ");
                }
                else {
                        scanCorrect = 1;//proper input
                }
        }
        scanCorrect = 0;
        printf("Enter number of rows in grid: ");
        while (scanCorrect == 0){
                scanCheck = scanf("%d",rows);
                fgetc(stdin);
                if (scanCheck != 1){
                        printf("Incompatible input please enter a new row number: ");
                }
                else if ((*rows >10)||(*rows <1)){
                        printf("Rows entered is out of bounds enter a row number between 1 and 10 inclusive: ");
                }
                else {
                        scanCorrect = 1;
                }
        }

        scanCorrect = 0;
        printf("Enter the symbol that player 1 would like to play with: ");
        while (scanCorrect == 0){
                scanCheck = scanf(" %c",symbol);
                fgetc(stdin);
                if (scanCheck != 1){
                        printf("Incompatible input please enter a new symbol: ");
                }
                else {
                        scanCorrect = 1;
                }
        }

        scanCorrect = 0;
        printf("Enter the symbol that player 2 would like to play with: ");
        while (scanCorrect == 0){
                scanCheck = scanf(" %c",symbol);
                fgetc(stdin);
                if (scanCheck != 1){
                        printf("Incompatible input please enter a new symbol: ");
                }
                else {
                        scanCorrect = 1;
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
        printf("Enter a column that you would like to drop the next piece: ");
        while(scanCorrect == 0){
                scanCheck = scanf("%d",&dropCol);
                fgetc(stdin);
                if (scanCheck != 1){
                        printf("Column entered is not valid please try again: ");
                }
                else if((dropCol <1)||(dropCol >numCols)){
                        printf("Column entered is out of bounds please enter a column that is between 1 and %d inclusive: ",numCols);
                }
                else {
                        scanCorrect = 1;
                }
        }
return numCols;
}
