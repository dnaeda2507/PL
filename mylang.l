%{
#include <stdio.h>
#include "y.tab.h" // Yacc ile birlikte kullanilacaksa
%}

// Tanimlamalar
DIGIT       [0-9]
LETTER      [a-zA-Z]
ID          {LETTER}({LETTER}|{DIGIT}|_)*
INTEGER     {DIGIT}+
FLOAT       {DIGIT}+"."{DIGIT}+
STRING      \"([^\"]*)\"
CHAR        \'([^\'])\'

// Anahtar kelimeler do eklendi
%%
"if"        { return IF; }
"else"      { return ELSE; }
"for"       { return FOR; }
"do"        { return DO; }
"while"     { return WHILE; }
"func"      { return FUNC; }
"print"     { return PRINT; }
"exit"      { return EXIT; }
"input"     { return INPUT; }
"true"      { return TRUE; }
"false"     { return FALSE; }


// Operatorler ve parantezler  us () Operatoru** eklendi
"+"         { return '+'; }
"-"         { return '-'; }
"*"         { return '*'; }
"/"         { return '/'; }
"%"         { return '%'; }
"**"        { return POW; }
"="         { return '='; }
"<"         { return '<'; }
">"         { return '>'; }
"=="        { return EQ; }
"<="        { return LEQ; }
">="        { return GEQ; }
"!="        { return NEQ; }
"&&"        { return AND; }
"||"        { return OR; }
"!"         { return NOT; }
"("         { return '('; }
")"         { return ')'; }
"{"         { return '{'; }
"}"         { return '}'; }
":"         { return ':'; }
";"         { return ';'; }

// Degiskenler ve sayilar
{ID}        { return IDENTIFIER; }
{INTEGER}   { return INTEGER; }
{FLOAT}     { return FLOAT; }
{STRING}    { return STRING; }
{CHAR}      { return CHARACTER; }

// Yorumlar
"~"[^~]*"~" { /* Yorumlari yoksay */ }

// Bosluklar
[ \t\n]+    { /* Bosluklari yoksay */ }

.           { printf("Bilinmeyen karakter: %s\n", yytext); }
%%

int yywrap() { return 1; }
