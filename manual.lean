-- Define greeting function
def getGreeting(name: String) := s!"Hello, {name}! Isn't Lean great?"

-- main function
def main: IO Unit := 
  let names := ["Sasha", "Pasha", "Leo"]
  let greetings := names.map getGreeting

  for g in greetings do
    IO.println g

