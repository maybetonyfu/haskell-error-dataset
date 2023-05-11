-- theme: monad
import Control.Monad.State

sumState :: Int -> State Int Int
sumState n = do
  modify (+n)
  get

multiplyState :: Int -> State Int Int
multiplyState n = do
  x <- get
  put (x * n)

