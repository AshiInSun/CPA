type token =
  | MUL
  | PLUS
  | MINUS
  | PRINT
  | LPAREN
  | RPAREN
  | EOL
  | INTEGER of (int)

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Ast
# 16 "parser.ml"
let yytransl_const = [|
  257 (* MUL *);
  258 (* PLUS *);
  259 (* MINUS *);
  260 (* PRINT *);
  261 (* LPAREN *);
  262 (* RPAREN *);
  263 (* EOL *);
    0|]

let yytransl_block = [|
  264 (* INTEGER *);
    0|]

let yylhs = "\255\255\
\001\000\006\000\006\000\005\000\002\000\002\000\002\000\003\000\
\003\000\004\000\004\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\002\000\003\000\003\000\001\000\003\000\
\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\012\000\002\000\000\000\000\000\010\000\
\000\000\000\000\009\000\001\000\003\000\000\000\000\000\000\000\
\000\000\011\000\005\000\006\000\008\000"

let yydgoto = "\002\000\
\004\000\009\000\010\000\011\000\005\000\006\000"

let yysindex = "\018\000\
\016\255\000\000\007\255\000\000\000\000\000\255\007\255\000\000\
\015\255\020\255\000\000\000\000\000\000\008\255\007\255\007\255\
\007\255\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\009\255\255\254\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\249\255\005\000\000\000\017\000\000\000"

let yytablesize = 23
let yytable = "\014\000\
\007\000\007\000\007\000\003\000\007\000\007\000\012\000\019\000\
\020\000\015\000\016\000\007\000\004\000\018\000\008\000\004\000\
\015\000\016\000\001\000\003\000\017\000\021\000\013\000"

let yycheck = "\007\000\
\002\001\003\001\004\001\004\001\006\001\007\001\007\001\015\000\
\016\000\002\001\003\001\005\001\004\001\006\001\008\001\007\001\
\002\001\003\001\001\000\004\001\001\001\017\000\006\000"

let yynames_const = "\
  MUL\000\
  PLUS\000\
  MINUS\000\
  PRINT\000\
  LPAREN\000\
  RPAREN\000\
  EOL\000\
  "

let yynames_block = "\
  INTEGER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'instruction_list) in
    Obj.repr(
# 18 "parser.mly"
                            ( _1 )
# 92 "parser.ml"
               : Ast.instruction))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.instruction) in
    Obj.repr(
# 20 "parser.mly"
                               ( [_1] )
# 99 "parser.ml"
               : 'instruction_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'instruction_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.instruction) in
    Obj.repr(
# 21 "parser.mly"
                                                    ( _2 :: _1 )
# 107 "parser.ml"
               : 'instruction_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 23 "parser.mly"
                         ( Print(_2) )
# 114 "parser.ml"
               : Ast.instruction))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 26 "parser.mly"
                      ( Add(_1, _3) )
# 122 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 27 "parser.mly"
                       ( Sub(_1, _3) )
# 130 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 28 "parser.mly"
             ( _1 )
# 137 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Ast.expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 30 "parser.mly"
                     ( Mul(_1, _3) )
# 145 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Ast.expr) in
    Obj.repr(
# 31 "parser.mly"
               ( _1 )
# 152 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 33 "parser.mly"
                 ( Integer(_1) )
# 159 "parser.ml"
               : Ast.expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Ast.expr) in
    Obj.repr(
# 34 "parser.mly"
                            ( _2 )
# 166 "parser.ml"
               : Ast.expr))
(* Entry calc *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let calc (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.instruction)
;;
