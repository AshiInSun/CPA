open Ast

let var_env = Hashtbl.create 10

let rec eval e =
  match e with
  | Add(left, right) -> eval left + eval right
  | Sub(left, right) -> eval left - eval right
  | Mul(left, right) -> eval left * eval right
  | Integer(x) -> x
  | Var(x) ->
    try Hashtbl.find var_env x
    with Not_found -> failwith ("Variable non définie : " ^ x)



and eval_instr e =
  match e with
  | Let(x, e) -> let result = eval e in
  Hashtbl.add var_env x result;
  result
  | Print(x) -> let result = eval x in
  print_int result;
  print_newline();
  result

  | Affect(x, e) -> let result = eval e in
  Hashtbl.replace var_env x result;
  result


and eval_instr_list el =
  match el with
  | [] -> 0
  | e::l -> let _ = eval_instr e in
  eval_instr_list l
