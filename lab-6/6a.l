%{
#include<stdio.h>
int s_c=0, ch_c=0; 
%}

%%

([ ])+ s_c++; //space counter
. ch_c++;	 //characters counter

%%
int yywrap(){}

int main()
{
	yylex();	
	printf("\nNo. of spaces=%d", s_c);
	printf("\nNo. of characters=%d", ch_c);
	
}
