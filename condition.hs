-- theme: adt

data V = VCon String
data U = UCon Bool Int (Int, Int)
u :: U -> V
u (UCon x y j) =
  if x
    then j
    else fst y + snd y