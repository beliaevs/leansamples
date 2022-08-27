def f (n: Nat) := 2*n+1
#eval f 10
#check f

#eval 11%3

def mygcd(n : Int)(m : Int) : Int :=
 if n > m then (mygcd m n) else
 if n == 0 then m else (mygcd (m%n) n)

#eval (mygcd 111 10101)

open Nat
#eval succ 1

def myadd : Nat → Nat → Nat
  | m, zero   => m
  | m, succ n => succ (myadd m n)

#eval (myadd 2 7)



