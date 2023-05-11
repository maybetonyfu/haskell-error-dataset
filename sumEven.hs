-- theme: list
sumEven :: [Int] -> Int
sumEven xs = sum (filter even xs)

stringInts = ["1", "2", "3", "4"]

sumEvenStringInts :: Int
sumEvenStringInts = sumEven stringInts