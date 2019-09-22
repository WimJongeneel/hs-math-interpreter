#!/bin/sh

if [ ! -d "./build" ]; then
  mkdir build
fi

scan_in="./Lexer/Lexer.x"
scan_out="./Lexer/Lexer.hs"
if ( ! [ -e $scan_out ] ) || [ $scan_in -nt $scan_out ]; then
    alex $scan_in -o $scan_out
fi

# parser_in="./Parser/Parser.y"
# parser_out="./Parser/Parser.hs"
# if ( ! [ -e $parser_out ] || [  $parser_in -nt $parser_out ] ); then
#     happy $parser_in -o $parser_out
# fi

# ghc -O3 --make -outputdir=build dlc.hs -o ../dlc
ghc Main.hs -o ./build/main -outputdir=build