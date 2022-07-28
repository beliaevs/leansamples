def n := 2 
#eval n^100 -- 1267650600228229401496703205376
#eval String.append "Hello " "World"
#check 3
#check @rfl
#check @trans

def double (s: String) := String.append s s
#eval double "hello"




