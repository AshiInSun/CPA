open Ast

let rec eval e =
  match e with
  | Add(left, right) -> eval left + eval right
  | Sub(left, right) -> eval left - eval right
  | Mul(left, right) -> eval left * eval right
  | Integer(x) -> x

and eval_instr e =
  match e with
  | Print(x) -> let result = eval x in
  print_int result;
  result