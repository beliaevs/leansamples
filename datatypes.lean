inductive MyBool where
  | myfalse: MyBool
  | mytrue: MyBool
  deriving Repr

#check MyBool.myfalse
#eval MyBool.mytrue

inductive MyNat where
  | zero: MyNat
  | succ: MyNat → MyNat
  deriving Repr

  #check MyNat.zero

  def isZero(n:MyNat): MyBool :=
    match n with
    | MyNat.zero => MyBool.mytrue
    | MyNat.succ _ => MyBool.myfalse

#eval isZero (MyNat.succ MyNat.zero)
