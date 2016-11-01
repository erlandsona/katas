main :: IO ()
main =
  print $ summedMultiples [3, 5] [0..999]

summedMultiples :: [Int] -> [Int] -> Int
summedMultiples denominators = sum . filter ((flip any $ denominators) . multiple)

-- A couple Pointfree versions for comparison
-- notice in this instance how fully pointfree doesn't always read better.
-- summedMultiples = (sum .) . filter . flip (any . multiple)
-- summedMultiples = (sum .) . filter . (. multiple) . flip any
--
--
-- Here's the pointful version
-- summedMultiples denominators numerators =
--     sum $ filter (\x -> any (multiple x) denominators) numerators
--                         ^
--                 hence flip instead of the lambda

multiple :: Int -> Int -> Bool
multiple num den =
  num `rem` den == 0
