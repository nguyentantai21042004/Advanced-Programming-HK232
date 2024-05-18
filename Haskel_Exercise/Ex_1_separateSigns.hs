separateSigns :: [Int] -> ([Int], [Int])
separateSigns xs = (negatives, positives)
  where
    negatives = filter (< 0) xs
    positives = filter (> 0) xs

main :: IO ()
main = do
  input <- getLine
  let arr = map read (words input) :: [Int]
  let (negatives, positives) = separateSigns arr
  putStrLn ("Negative numbers: " ++ show negatives)
  putStrLn ("Positive numbers: " ++ show positives)
