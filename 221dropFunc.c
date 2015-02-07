#include "221dropFunc.h"

int pieceDrop(int *myArray, int arrayRow, int arrayColumn, int dropColumn){
	int stopFlag = 0;
	int index = dropColumn-1;
	while (stopFlag == 0){
		if (index + arrayColumn <= arrayRow*arrayColumn){
			if ((index+arrayColumn) == 1){
				myArray[index] = 1;
				stopFlag = 1;				
			}
			else{
				myArray[index] = 1;
				stopFlag = 1;
			}			
		}
		else{
			index += dropColumn;
		}
	}
	return index;
}