type token =
  | MUL
  | PLUS
  | MINUS
  | PRINT
  | LPAREN
  | RPAREN
  | EOL
  | INTEGER of (int)

val calc :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.instruction
