-- input of this fucntion Int->[a] is a integer and array
-- output -> [a] is the array
xoa :: Int -> [a] -> [a]
xoa _ [] = [] -- if array is empty ==> return array
xoa n list = recursion' n list 1   -- else pass to recursion fuction 3 paramaters

-- input of this fucntion Int -> [a] -> Int is a integer: size of array, an array, and inter for loop couting 
recursion' :: Int -> [a] -> Int -> [a]
recursion' _ [] _ = []  -- if array is empty ==> return array
recursion' n (x:xs) count -- (x:xs): it x: value of 1 element in arr, xs is the part after this element in array ==> seperate array into 2 part
  | count `mod` n == 0 = recursion' n xs (count + 1)  -- = recursion' n xs (count + 1) => means we do not add again x in to list we are passing to recursion
  | otherwise = x : recursion' n xs (count + 1)   -- yes, we bring x together

main :: IO ()
main = do
  -- read n and array f
  n <- readLn 
  input <- getLine 

  -- convert string ==> array of int ( $words input ~ sscanf(input, "%49s %c %49s", num1_str, op, num2_str);)
  let array = map (read :: String -> Int) $ words input  

  -- pass n and arrray into funtion xoa
  print $ xoa n array

