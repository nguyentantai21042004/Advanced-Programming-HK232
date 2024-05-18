import Data.List (sort)

-- Thuật toán 2 con trỏ
pairsWithSum :: Int -> [Int] -> [(Int, Int)]
pairsWithSum total xs = findPairs sortedXs 0 (length sortedXs - 1)
  where
    sortedXs = sort xs
    findPairs :: [Int] -> Int -> Int -> [(Int, Int)]
    findPairs xs left right
      | left >= right = []
      | sum == total = (xs !! left, xs !! right) : findPairs xs (left + 1) (right - 1)
      | sum < total = findPairs xs (left + 1) right
      | otherwise = findPairs xs left (right - 1)
      where
        sum = xs !! left + xs !! right

main :: IO ()
main = do
  putStrLn "Enter the total sum:"
  totalStr <- getLine
  let total = read totalStr :: Int

  putStrLn "Enter a list of integers:"
  numbersStr <- getLine
  let numbers = map read (words numbersStr) :: [Int]

  let result = pairsWithSum total numbers
  print result