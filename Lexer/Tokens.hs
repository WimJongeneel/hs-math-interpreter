module Lexer.Tokens where

data Token = Times
  | Minus
  | Plus
  | Int Int
  | Divide
  | Left_Parentheses
  | Rigth_Parentheses
  deriving (Eq, Show)