-- theme: tuple
token = 12
userRegistered = True

registered = const token userRegistered

user :: (Int, Bool)
user = (3, registered)