#eval 2+2
#check 2
#eval 2-3
#eval 2^100
#eval Float.sin 1
def a:=2.0
#eval a
#eval (Float.sin a)^2 + (Float.cos a)^2
structure Point where
  x : Float
  y : Float
deriving Repr

def distance (a: Point)(b: Point): Float := Float.sqrt ((a.x-b.x)^2+(a.y-b.y)^2)

#eval distance {x:=0., y:=0.} {x:=1.0, y:=1.0}
