class MyEq a where
  myeq :: a -> a -> Bool

instance MyEq Int where
  myeq x y = x == y

instance MyEq Bool where
  myeq True True = True
  myeq False False = True
  myeq _ _ = False

data Pair a b = Pair a b

instance (MyEq a, MyEq b) => MyEq (Pair a b) where
  myeq (Pair x1 y1) (Pair x2 y2) = myeq x1 x2 && myeq y1 y2

data MyList a = Nil | Cons a (MyList a)

instance MyEq a => MyEq (MyList a) where
  myeq Nil Nil = True
  myeq (Cons x xs) (Cons y ys) = myeq x y && myeq xs ys
  myeq _ _ = False

isEq = myeq (Pair (Cons True Nil) True) (Pair (Cons True Nil) False)

-- theme: type class
-- goanna results: 3
-- oracle: true
-- intended fix: 2