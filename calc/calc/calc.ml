let _ =
  let lexbuf = Lexing.from_channel stdin in
  let ast = Parser.calc Lexer.token lexbuf in
  let result = Eval.eval_instr_list ast in
  print_int result; print_newline(); flush stdout
