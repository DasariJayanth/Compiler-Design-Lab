%{
#include <stdio.h>
%}
%%
[a-z A-Z _]([a-z A-Z 0-9 _])*    {printf("Valid");}
.*    {printf("invalid");}
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}
