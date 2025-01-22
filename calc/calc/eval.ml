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
  print_newline();
  result

and eval_instr_list el =
  match el with
  | [] -> 0
  | e::l -> let _ = eval_instr e in
  eval_instr_list l
