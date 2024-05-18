transform :: [Int] -> [Int]
transform xs = [3 * x | x <- xs, even x]

main :: IO ()
main = do
  input <- getLine
  let arr = map read (words input) :: [Int]
  let transforms = transform arr
  print transforms