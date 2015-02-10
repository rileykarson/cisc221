#include "221dropFunc.h"

int pieceDrop(int *myArray, int arrayRow, int arrayColumn, int dropColumn, int playCount){
	int stopFlag = 0;
	int index = dropColumn-1;
	while (stopFlag == 0){
		if ((index + arrayColumn) <= (arrayRow*arrayColumn)){
			if ((index+arrayColumn) == 1 || (index+arrayColumn) ==2 ){
				if ((playCount%2)==2){
					myArray[index] = 1;
					stopFlag = 1;
				}else{
					myArray[index] = 2;
					stopFlag = 2;
				}
			}
			else{
				if ((playCount%2)==2){
					myArray[index] = 1;
					stopFlag = 1;
				}
				else{
					myArray[index] = 2;
					stopFlag = 1;
				}
			}			
		}
		else{
			index += dropColumn;
		}
	}
	return index;
}
