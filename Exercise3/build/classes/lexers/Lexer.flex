package lexers;
import tokens.Tokens;
import static tokens.Tokens.*;
%%
%public
%class IdentifierLexer
%type Tokens
S = (10)
B = [0-9]{5}
%{
    public String identifier;
%}
%%
{S}{B} {identifier=yytext(); return Identifier;}
 . {identifier=yytext(); return ERROR;}