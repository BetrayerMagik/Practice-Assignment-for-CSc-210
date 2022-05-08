#include <stdio.h> 
void Akbar_clearUsingIndex(int[], int); 
void Akbar_clearArrayPointers(int *array, int size);
void Akbar_displayArray(int Array[], int size);

int main() 
{ 
	static int Array[10] ={1,2,3,4,5,6,7,8,9,-1}; 
	int size = 10; 
	Akbar_clearUsingIndex(Array, size); 
	printf("Array after calling Akbar_clearUsingIndex function:\n");
	Akbar_displayArray(Array, size);
	
	Akbar_clearArrayPointers(&Array, size);
	printf("\nArray after calling Akbar_clearArrayPointers function:\n");
	Akbar_displayArray(&Array, size);
	printf("\nSo, both functions run correctly because both have same output.\n");
} 

void Akbar_clearUsingIndex(int Array[], int size) 
{ 
	int i; 
	for (i = 0; i < size; i +=1) 
		Array[i] = 0; 
} 

void Akbar_clearArrayPointers(int *array, int size) 
{ 
	int *p; 
	for (p = &array[0]; p < &array[size]; p = p + 1) 
		*p = 0; 
}

void Akbar_displayArray(int Array[], int size){
	int i; 
	for (i = 0; i < size; i +=1) 
		printf("%d ", Array[i]); 
}
