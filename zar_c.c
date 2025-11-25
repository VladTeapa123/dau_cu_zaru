#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){

	srand(time(0));

	int zar1 = 1 + rand() % 6;
	int zar2 = 1 + rand() % 6;

	printf("%d %d\n", zar1, zar2);

	return 0;
}
