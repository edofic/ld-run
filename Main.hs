module Main where

import System.Environment (getArgs)
import System.Process (callCommand)

main = getArgs >>= (callCommand . mkCommand)

mkCommand = unwords . ("ld.gold":) . filter ok where
ok arg = not $ any (check arg) forbidden 
check arg f = take (length f) arg == f

forbidden = ["--hash-size",
             "--reduce-memory-overheads"
            ]
