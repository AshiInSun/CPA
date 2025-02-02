type expr =
  | Add of expr * expr
  | Mul of expr * expr
  | Sub of expr * expr
  | Integer of int
  | Var of string

type instruction =
  | Print of expr
  | Let of string * expr
  | Affect of string * expr