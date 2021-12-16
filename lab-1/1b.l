%{
#include<stdio.h>
int v=0;
int c=0;
%}
%%
"a"|"e"|"i"|"o"|"u"|"A"|"E"|"I"|"O"|"U" {v++;}
[a-zA-z] {c++;}
%%
int yywrap()
{
}
int main()
{
printf("Enter the String: ");
yylex();
printf("No. of vowels= %d and No. of Consonents= %d",v,c);
return 0;
}