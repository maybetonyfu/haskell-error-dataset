isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

containsEven :: [Int] -> Bool
containsEven xs = any isEven xs

x = containsEven ["36", "8", "123"]