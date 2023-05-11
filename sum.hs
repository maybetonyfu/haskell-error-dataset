-- theme: list
sum [] = 0
sum [x] = x
sum (x:xs) = x + sum xs

check (x:xs)
  | x `mod` 3 == 0 || x `mod` 5 == 0 = x + check xs
  | otherwise = check xs

problem_1 = sum (check [1..999])
