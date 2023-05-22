foo :: Num a => a -> a
foo x = x + 1.5

-- theme: type class
-- goanna results: 3
-- oracle: true
-- intended fix: 1