/*lex code to find the length of the longest word*/

%{
int length = 0; 
%}

%%
[a-zA-Z]+ {
if (yyleng > length) {
	length = yyleng;
}}
%%
int yywrap()
{
}
int main() {
yylex();
printf("Length of largest word is: %d", length);
printf("\n");
return 0;
}
