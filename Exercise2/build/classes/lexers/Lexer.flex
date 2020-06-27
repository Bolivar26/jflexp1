package lexers;
import tokens.Tokens;
import static tokens.Tokens.*;
%%
%public
%class Lexer
%type Tokens
S=(a|b)
B=[a-z]*
blankSpace=[ ,\t,\r,\n]+
%{
    public String identifier;
%}
%%
{blankSpace} {/*Ignore*/}
{S}{B}(\1) {identifier=yytext(); return Identifier;}
 . {identifier=yytext(); return ERROR;}