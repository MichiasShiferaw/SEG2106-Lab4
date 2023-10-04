/* File........ tokens.lex 
 * Contents.... rules to get tokens from standard input
 * 
 */


/* ---------------- Definitions space ----------------- */
%option noyywrap
%{
#include <assert.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>

    int token_one_match = 0;
%}


/* ------------------- Rules space -------------------- */
%%



^([^\.]([a-z0-9_-]|\.)+@[a-z0-9]([a-z0-9]|((\.)([a-z0-9])))+)$ ++token_one_match;{printf("Total of Token6 matched: %s\n", yytext);}
.|\n {} // default rule (always include to match all other strings)

%%

int main()
{
    yylex();
    printf("Total of Token6 matched: %d\n", token_one_match);

    return 0;
}

