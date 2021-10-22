%{
    //program to count the number of
    //characters in an input string
    # include <stdio.h>
    int ch=0;
%}

%%
([ ])+ {}
\t {}
. ch++;
\n {printf("Characters Count: %d\n",ch);ch=0;}
%%

int main(){
    yylex();
    return 0;
}
int yywrap(void){
}
