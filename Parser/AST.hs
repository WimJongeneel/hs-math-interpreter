module Parser.AST where

data Expression = EPlus Expression Expression
  | EMinus Expression Expression
  | ETimes Expression Expression
  | EDivide Expression Expression
  | EInt Int
  | ENested Expression
  deriving (Eq, Show)

data AST = Expression deriving (Eq, Show)