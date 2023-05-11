t u v = if u then v else 0
f u v = if u then 0 else v
d f g x = f x + g x

w = d (t 3) (f 3) True