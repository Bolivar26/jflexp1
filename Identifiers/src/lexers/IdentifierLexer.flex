package lexers;
import tokens.Tokens;
import static tokens.Tokens.*;
%%
%public
%class IdentifierLexer
%type Tokens
L=[a-zA-Z_]+
D=[0-9]+
blankSpace=[ ,\t,\r,\n]+
%{
    public String identifier;
%}
%%
{blankSpace} {/*Ignore*/}
"//".* {/*Ignore*/}
{L}({L}|{D})* {identifier=yytext(); return Identifier;}
 . {identifier=yytext(); return ERROR;}