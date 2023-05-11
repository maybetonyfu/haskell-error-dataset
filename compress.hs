-- theme: list
compress = foldr skipDups

skipDups x [] = [x]
skipDups x acc
   | x == head acc = acc
   | otherwise = x : acc

expect = [3,4,5,6]

actual = compress [3,3,4,5,6,6]

test :: Bool
test =  expect == actual
