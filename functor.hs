
foo :: (Functor f) => f a -> f b
foo xs = xs ++ xs

-- theme:  function, type-class
-- goanna results: 3
-- oracle: false
-- intended fix: none