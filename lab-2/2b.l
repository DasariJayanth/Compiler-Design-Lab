/* Lex program for decimal to binary conversion */

%{
#include<stdio.h>
int num, r, a=1, b=0;
%}

DIGIT [0-9]
%%
{DIGIT}+ { num=atoi(yytext);
			while (num > 0)
			{
			r= num % 2;
			b+= r*a;
			a*= 10;
			num/= 2;
			}
			printf("%d", b);
                        b=0;
                        a=1;
			}
		
%%
int yywrap()
{
}
int main()
{
	yylex();
	return 0;
}	
