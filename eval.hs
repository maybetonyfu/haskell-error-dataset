
-- theme: function
data Expr = C Integer |
            Comb Expr Expr| 
            V String |
            Let String Expr Expr

type Env = [(String, Integer)]

eval :: Expr -> Env -> (Env, Integer)
eval (C x)  env       = (env, x)
eval (Comb e1 e2) env   =  let (env1, v1) = eval e1 env
                               (env2, v2) = eval e2 env1
                            in (env2, v1 + v2)

eval (V v)  env       = (env, find v env)

eval (Let v e1 e2) env = let (env1, v1) = eval e1 env
                             env2       = extend v v1  
                             ans = eval e2 env2
                         in  ans

---Find a variable's value by looking in the environment
find v  []          = error "Unbound variable"
find v1 ((v2,e):es) = if v1 == v2 then e else find v1 es
                     
extend :: String -> Integer -> Env -> Env
extend v e env  = (v,e):env

answer :: Expr -> (Env, Integer)
answer e = eval e []