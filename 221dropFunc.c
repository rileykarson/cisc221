#include "221dropFunc.h"
#include <stdio.h>
int pieceDrop(int *myArray, int arrayRow, int arrayColumn, int dropColumn, int playCount){
	int stopFlag = 0;
	int index = dropColumn-1;
	printf("%d\n", index);
	while (stopFlag == 0){
		
		if  ((index+arrayColumn) >= (arrayRow*arrayColumn)){
			if ((playCount%2)==0){
				myArray[index] = 2;
				stopFlag = 1;
			}
			else{
				myArray[index] = 1;
				stopFlag = 1;
			}
		}
		else if ((myArray[index+arrayColumn]) != 0){
			if ((myArray[index]) != 0){
				return 0;
			}
			if ((playCount%2)==0){
				myArray[index] = 2;
				stopFlag = 1;
			}else{
				myArray[index] = 1;
				stopFlag = 1;
			}
		}			
		else{
			index+=arrayColumn;
		}
	}
	printf("%d\n", index);
	return index;

}

