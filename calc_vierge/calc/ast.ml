type expr =
  | Add of expr * expr
  | Mul of expr * expr
  | Integer of int