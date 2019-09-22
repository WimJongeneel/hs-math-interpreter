module Main where

import Lexer.Lexer
import Parser.Parser
import Runtime.RunExpression

main::IO ()
main = do
  let tokens = alexScanTokens "1+1"
  print tokens
  let ast = parse tokens
  print ast
  print $ run ast