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

inductive Mybool where
  | mytrue: Mybool
  | myfalse: Mybool

#check Mybool.mytrue

structure PPoint (α : Type) where
  x : α
  y : α
deriving Repr

def replaceX (α : Type) (point : PPoint α) (newX : α) : PPoint α :=
  { point with x := newX }

#check replaceX

#eval [1,2,3]
#eval List.cons 1 (List.cons 2 List.nil)

#eval List.head? ([] : List Int)

def fives : String × Int := ("five", 5)

#eval fives

-- tail recursion
def tail (n: Nat) (m:Nat): Nat :=
  match n with
  | Nat.zero => m
  | Nat.succ k => tail k (m+n)

#eval tail 1000000 0

def tailfac (n: Nat) (p: Nat): Nat :=
  match n with
  | Nat.zero => p
  | Nat.succ k => tailfac k (p*n)

  #eval tailfac 10 1
