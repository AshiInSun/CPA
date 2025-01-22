open Ast

let rec eval e =
  match e with
  | Add(left, right) -> eval left + eval right
  | Mul(left, right) -> eval left * eval right
  | Integer(x) -> x
