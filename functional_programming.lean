def m:Nat := 1
def add_1(n:Nat): Nat := n+1

#eval add_1 2

#check add_1

#check "hello"

#check 1234567890

def c := String.append "hello," " world"
#check -1

-- no structural recursion
-- will fail for n = 10000
def f(n: Nat) := if n < 1 then 0 else n+(f (n-1))

-- tail recursion and structural recursion for Nat
def correctF(n:Nat) (p:Nat) :Nat := 
  match n with
  | Nat.zero => p
  | Nat.succ m => correctF m (p+n)

#eval correctF 100000 0


#eval (1 - 2:Int)
def NaturalNumber:Type := Nat
def n:NaturalNumber := (34:Nat)
#eval n

structure Point where
  x : Float
  y : Float
deriving Repr

def origin : Point := { x := 0.1, y := 3.4 }

#eval origin.y
#check Point.mk

def myadd(n:Nat) (m:Nat) :Nat := n+m 
#check myadd





















