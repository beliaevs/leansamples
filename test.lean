def sample x := x*x+3

def fac(n: Nat) : Nat :=
if n > 0 then n*(fac (n-1)) else 1

#eval fac 50

def factorial : Nat → Nat
 | .zero => 1
 | .succ m => (.succ m) * (factorial m)

#eval factorial 100
