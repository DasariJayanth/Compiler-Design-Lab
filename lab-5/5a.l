%{
	int pn=0;
	int nn=0;
	int f=0;
%}
%option noyywrap 

DIGIT [0-9]
%%

\+?{DIGIT}+			 pn++;
-{DIGIT}+			 nn++;

\-?{DIGIT}*\.{DIGIT}+            f++;
. ;
%%

int main()
{
	yylex();
	printf("\nNo. of positive numbers: %d", pn);
	printf("\nNo. of Negative numbers: %d", nn);
	printf("\nNo. of Fractions: %d", f);
	return 0;
}