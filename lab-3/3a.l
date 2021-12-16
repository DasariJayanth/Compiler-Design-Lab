%option caseless
%{
    #include <limits.h>
	int z[129]={0};
%}

%%
[a-zA-Z]? {z[(int)yytext[0]]++;    }
\n {return 0;}
%%

int yywrap() {} 

int main(){
    int i, char_freq=INT_MIN, character;
    printf("Enter the string: \n");
    yylex();
    for(i = 0;i < 129;i++){
        if(char_freq < z[i]){
            char_freq = z[i];
            character= i;
        }
    }
    printf("\nFrequency is %d and the character with the highest frequency is %c",char_freq, character);
    printf("\n");
    return 0;
}