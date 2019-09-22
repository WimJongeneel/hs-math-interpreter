{
module Parser.Parser(parse) where

import Lexer.Tokens
import Parser.AST
import qualified Lexer.Lexer as L
}

%name parse
%tokentype {Token}

%token
plus      { Plus }
minus     { Minus }
times     { Times }
divide    { Divide }
int       { Int $$ }
lp        { Left_Parentheses }
rp        { Left_Parentheses }

%left plus minus
%left times divide

%%
 
AST : AST plus AST        { EPlus $1 $3 }
  | AST minus AST         { EMinus $1 $3 }
  | AST times AST         { ETimes $1 $3 }
  | AST divide AST        { EDivide $1 $3 }
  | lp AST rp             { Nested $2 }
  | int                   { EInt $1 }

{
happyError :: [Token] -> a
happyError i = error $ show i
}