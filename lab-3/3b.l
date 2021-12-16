%{
	char stack[100];
	int t=0;
	void push(char);
	void pop();
    char top();
    int priority(char c);
%}
%%
[a-zA-Z]? {printf("%c",yytext[0]);}
[+\-\*\/\^\(\)] { char op=yytext[0];
                 if(t==0||op=='(')
                   push(op);
                 else if(op==')'){
                   while(top()!='('){
                    printf("%c",top());
                    pop();
                    }
                    pop();
                 }
                   
                 else if(priority(op)>=priority(top())){
                  push(op);
                  }
                  else if(priority(op)<=priority(top())){
                    while(priority(op)<=priority(top())){
                       printf("%c",top());
                       pop();
                       }
                       push(op);
                  }
              }
 [\n]  {
          int i;
             for(i=t-1;i>=0;i--)
                 if(stack[i]!='('&&stack[i]!=')'){
                    printf("%c",stack[i]);
                  
                    }
          t=0;       
       }         
%%
int yywrap(){}

int main(){
   yylex();
}

void pop(){
 t--;
}
char top(){
  return stack[t-1];
}
  
void push(char c){
   stack[t]=c;
   t++;
}
int priority(char c){
switch(c){
case '(':return 0;
case ')':return 0;
case '+':return 1;
case '-':return 1;
case '*':return 2;
case '/':return 2;
case '^':return 3;
}
}