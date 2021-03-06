
module Main where

import System.Environment
import ShallowRepa
import IO
import Text.Printf

main = do
    args <- getArgs
    let [inImg,outImg] = args
    img <- readImgAsRepaArray inImg
    newImg <- printTimeIO $ run ((brightenBy 20) img)
    writeRepaImg outImg newImg
