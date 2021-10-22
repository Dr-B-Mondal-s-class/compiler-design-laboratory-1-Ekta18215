%{
//macros
int keyCount=0,varCount=0,intCount=0,floatCount=0,opCount=0;
%}
keyword bool|float|double|if|else|while|int|switch|for|char|break|enum|register|typedef|goto|sizeof|struct
identifier [a-zA-Z_][a-zA-Z0-9_]*
int [0-9]*
%{
	
%}

protocol "http"|"https"|"ftp"
Domain "com"|"in"|"io"|"co.in"|"edu"|"ac.in"
URL ({protocol}+"://www."+[\/\.a-zA-Z0-9"-"]*{Domain}*)

%%
{URL} {printf("Valid URL");}
.* {printf("Invalid URL");}

%%

int main() {
    yylex();
}

int yywrap(void) {
    return 0;
}
