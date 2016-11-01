module Kata (main) where

main :: IO ()
main =
  print $ summedMultiples [3, 5] [1..1000]


summedMultiples :: [Int] -> [Int] -> Int
summedMultiples denominators = sum . filter ((flip any $ denominators) . multiple)

multiple :: Int -> Int -> Bool
multiple num den =
  num `rem` den == 0
