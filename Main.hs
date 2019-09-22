module Main where

import Lexer.Lexer

main::IO ()
main = do
  s <- getContents
  let toks = alexScanTokens s
  print toks