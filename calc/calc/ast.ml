type expr =
  | Add of expr * expr
  | Mul of expr * expr
  | Sub of expr * expr
  | Integer of int

type instruction =
  | Print of expr
  | Let of string * expr