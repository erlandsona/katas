import Data.List (union)

main :: IO ()
main =
  print $ sum (union [3,6..999] [5,10..999])
