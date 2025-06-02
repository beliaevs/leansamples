def NaturalNumber : Type := Nat

def thirty : NaturalNumber := (30 : Nat)

#eval thirty

structure Point where
  x: Float
  y: Float
deriving Repr

def p1 : Point := { x := 1.0, y := 2.0 }
#eval p1

#check Point.mk

structure RectangularPrism where
  height: Float
  width: Float
  depth: Float
deriving Repr

def volume ( r: RectangularPrism) : Float :=
  r.height * r.width * r.depth


def prism : RectangularPrism := { height := 2.0, width := 3.0, depth := 4.0 }
#eval prism

#eval volume prism
