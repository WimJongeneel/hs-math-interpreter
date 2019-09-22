{
module Lexer.Lexer
  (alexScanTokens)
where

import Lexer.Tokens
}

%wrapper "basic"

$digit = 0-9
$alpha = [a-zA-Z]

tokens :-
  $white+                             ;
  "*"                                 { (\s -> Times) }
  "+"                                 { (\s -> Plus) }
  "-"                                 { (\s -> Minus) }
  "/"                                 { (\s -> Divide) }
  "("                                 { (\s -> Left_Parentheses)}
  ")"                                 { (\s -> Left_Parentheses)}
  $digit+                             { (\s -> Int $ read s) }