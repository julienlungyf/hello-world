%option nounput noinput noyywrap

%{
 #include <stdio.h>
%}
BLANK [ \t]
%%
%{
 printf("Looking for a pattern...\n");
 int res = 0;
%}
^{BLANK}*[0-9]+ res = atoi(yytext);
(-|\+)[0-9]+ res += atoi(yytext);
\n {printf("%d\n", res);res = 0;}
. continue;
%%
int main() {
    while (yylex());
    return 0;
}
