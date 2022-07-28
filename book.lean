def n := 2 
#eval n^100 -- 1267650600228229401496703205376

#eval String.append "Hello " "World"
#check 3
#check @rfl
#check @trans

def double (s: String) := String.append s s
#eval double "hello"

def p := (1, 2)
#check p
#check Prod 
#check List
#check @List.cons
def add1 (n : Nat) := n+1
#eval add1 100
#eval String.append "Hello" "!"
#eval 2 - 4
#eval (2 - 4 : Int)
def joinStringWith (sep: String) (s1 : String) (s2: String):String :=String.append s1 (String.append sep s2)
#eval joinStringWith "-" "Sasha" "Pasha"

structure Point where
  x : Float
  y : Float
deriving Repr

def p1 : Point := {x := 2.4, y := 6.7}
#eval p1





