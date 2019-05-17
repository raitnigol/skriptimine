#define _XOPEN_SOURCE
#include <unistd.h>
#include <string.h>
#include <stdio.h>

int main() {

	char salt[]  = "bv";
	char passwd[] = "aaaa";	
	char encrypted[] = "bvcHehqYb7dGo";

	char c1;
	char c2;
	char c3;
	char c4;
	
	for (c1 = 'a' ; c1 <= 'z' ; c1++ ) {	
		passwd[0] = c1;
		for (c2 = 'a' ; c2 <= 'z' ; c2++ ) {
			passwd[1] = c2;
			for (c3 = 'a' ; c3 <= 'z' ; c3++ ) {
				passwd[2] = c3;
				for (c4 = 'a' ; c4 <= 'z' ; c4++ ) {
					passwd[3] = c4;
					if (!strcmp(encrypted,crypt(passwd,salt))) {
						printf("parool on: %s\n",passwd);								
					}
				}
			}
		}
	}
}
