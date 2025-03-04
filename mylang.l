%{
#include <stdio.h>
//#include "y.tab.h" 
%}


DIGIT       [0-9]
LETTER      [a-zA-Z]
ID          {LETTER}({LETTER}|{DIGIT}|_)*
INTEGER     {DIGIT}+
FLOAT       {DIGIT}+"."{DIGIT}+
STRING      \"([^\"]*)\"
CHAR        \'([^\'])\'


%%
"if"         { printf("IF\n"); }
"else"       { printf("ELSE\n"); }
"for"        { printf("FOR\n"); }
"do"         { printf("DO\n"); }
"while"      { printf("WHILE\n"); }
"func"       { printf("FUNC\n"); }
"print"      { printf("PRINT\n"); }
"exit"       { printf("EXIT\n"); }
"input"      { printf("INPUT\n"); }
"true"       { printf("TRUE\n"); }
"false"      { printf("FALSE\n"); }

"int"        { printf("INT\n"); }
"float"      { printf("FLOAT\n"); }
"char"       { printf("CHAR\n"); }
"string"     { printf("STRING\n"); }
"boolean"    { printf("BOOLEAN\n"); }




"+"          { printf("+"); }
"-"          { printf("-\n"); }
"*"          { printf("*\n"); }
"/"          { printf("/\n"); }
"%"          { printf("%%\n"); }
"**"         { printf("POW\n"); }
"="          { printf("=\n"); }
"<"          { printf("<\n"); }
">"          { printf(">\n"); }
"=="         { printf("EQ\n"); }
"<="         { printf("LEQ\n"); }
">="         { printf("GEQ\n"); }
"!="         { printf("NEQ\n"); }
"&&"         { printf("AND\n"); }
"||"         { printf("OR\n"); }
"!"          { printf("NOT\n"); }
"("          { printf("(\n"); }
")"          { printf(")\n"); }
"{"          { printf("{\n"); }
"}"          { printf("}\n"); }
":"          { printf(":\n"); }
";"          { printf(";\n"); }


{ID}        { printf("IDENTIFIER\n"); }
{INTEGER}   { printf("INTEGER\n"); }
{FLOAT}     { printf("FLOAT\n"); }
{STRING}    { printf("STRING\n"); }
{CHAR}      { printf("CHARACTER\n"); }


"~"[^~]*"~"  { printf("COMMENT\n"); }


[ \t\n]+    { /* Boşlukları yoksay */ }

.           { printf("UNKNOWN: %s\n", yytext); }
%%

int yywrap() { return 1; }
