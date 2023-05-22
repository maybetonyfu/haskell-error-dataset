-- theme: tuple
token = 12
userRegistered = True

registered = const token userRegistered

user :: (Int, Bool)
user = (3, registered)

-- theme: tuple, function
-- goanna fixes: 5
-- oracle: false
-- intended fix: none