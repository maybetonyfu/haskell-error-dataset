data MyError = TooSmall | TooBig

checkNumber :: Int -> Either MyError Int
checkNumber x
  | x < 10 = Left TooSmall
  | x > 100 = Left  TooBig
  | otherwise = Right x

processInput :: [String] -> [Either MyError Int]
processInput inputs = 
  checkNumber (map read inputs)
