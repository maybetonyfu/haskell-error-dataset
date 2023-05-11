foo :: Monad m => m a -> m b -> m a
foo x y = do
  let z = x >>= \_ -> y
  let w = y >>= \_ -> x
  x >>= \_ -> z