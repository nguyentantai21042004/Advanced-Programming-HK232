specialNumbers :: [Int]
specialNumbers = [n | n <- [1 .. 100], mod n 7 == 0, mod n 5 /= 0]

main :: IO ()
main = do
  print specialNumbers
