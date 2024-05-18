import Data.Maybe (fromJust, isJust)
import Text.Read (readMaybe)

daysinMonth :: Int -> Int -> Int
daysinMonth month year
  | month == 2 && isLeapYear year = 29
  | month == 2 && not (isLeapYear year) = 28
  | month == 4 || month == 6 || month == 9 || month == 11 = 30
  | otherwise = 31
  where
    isLeapYear y
      | y `mod` 400 == 0 = True
      | y `mod` 100 == 0 = False
      | y `mod` 4 == 0 = True
      | otherwise = False

main :: IO ()
main = do
  putStrLn "Enter month and year separated by a space (e.g., '2 2021'):"
  input <- getLine

  let inputs = words input
  if length inputs == 2
    then do
      let maybeMonth = readMaybe (inputs !! 0) :: Maybe Int
      let maybeYear = readMaybe (inputs !! 1) :: Maybe Int

      if isJust maybeMonth && isJust maybeYear
        then do
          let month = fromJust maybeMonth
          let year = fromJust maybeYear
          if month >= 1 && month <= 12
            then print $ daysinMonth month year
            else putStrLn "Invalid month. Please enter a month between 1 and 12."
        else putStrLn "Invalid input. Please enter valid numbers for month and year."
    else putStrLn "Invalid input. Please enter exactly two numbers separated by a space."
