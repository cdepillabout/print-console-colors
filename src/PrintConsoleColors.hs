module PrintConsoleColors where

import Control.Monad (forM_, when)
import Data.Word (Word8)
import System.Console.ANSI
import Text.Printf

printConsoleColors :: IO ()
printConsoleColors = do
  printExtendedColors
  print216Colors
  printGreyscaleColors
  putStrLn ""

white :: Word8
white = 15

black :: Word8
black = 0

printExtendedColors :: IO ()
printExtendedColors = do
  setSGR [Reset]
  putStrLn ""
  putStrLn "                    Standard Colors                                       Extended Colors"
  putStrLn ""
  putStr "       "
  forM_ [0..7] $ \i -> do
    setSGR []
    setSGR [SetPaletteColor Background i, SetPaletteColor Foreground white]
    printf " %2u " i
    setSGR []
    putStr " "
  putStr "               "
  forM_ [8..15] $ \i -> do
    setSGR []
    setSGR [SetPaletteColor Background i, SetPaletteColor Foreground black]
    printf " %2u " i
    setSGR []
    putStr " "
  putStrLn ""
  putStrLn ""
  putStrLn ""

calcWhiteOrBlack :: Word8 -> Word8
calcWhiteOrBlack i =
  let first36 = (i - 16) `mod` 36
  in
  if first36 >= 18 then black else white

print216Colors :: IO ()
print216Colors = do
  setSGR [Reset]
  putStrLn "                                                 216 Colors"
  putStrLn ""
  forM_ [16..231] $ \i -> do
    setSGR []
    let whiteOrBlack = calcWhiteOrBlack i
    setSGR [SetPaletteColor Background i, SetPaletteColor Foreground whiteOrBlack]
    printf "%3u" i
    setSGR []
    when (((i - 15) `mod` 36) == 0) $ putStrLn ""
  putStrLn ""
  putStrLn ""

printGreyscaleColors :: IO ()
printGreyscaleColors = do
  setSGR [Reset]
  putStrLn "                                                 Greyscale"
  putStrLn ""
  putStr "   "
  forM_ [232..243] $ \i -> do
    setSGR []
    setSGR [SetPaletteColor Background i, SetPaletteColor Foreground white]
    printf "%3u" i
    setSGR []
    putStr " "
  putStr "       "
  forM_ [244..255] $ \i -> do
    setSGR []
    setSGR [SetPaletteColor Background i, SetPaletteColor Foreground black]
    printf "%3u" i
    setSGR []
    putStr " "
  putStrLn ""
