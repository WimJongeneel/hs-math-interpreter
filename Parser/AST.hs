module Parser.AST where

data Expresion = EPlus Expresion Expresion
  | EMinus Expresion Expresion
  | ETimes Expresion Expresion
  | EDivide Expresion Expresion
  | EInt Int
  | Nested Expresion
  deriving (Eq, Show)

data AST = Expresion deriving (Eq, Show)