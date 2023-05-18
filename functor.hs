-- intention: should use monoid instead of functor

foo :: (Functor f) => f a -> f b
foo xs = xs ++ xs