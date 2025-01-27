{
  open Parser
}

let integer = ['0'-'9']+
let spaces = [' ' '\t']
let eol = "\r\n" | '\n'
let var = ['a'-'z' 'A'-'Z']+ ['a'-'z' 'A'-'Z' '0'-'9']*

rule token = parse
    spaces        { token lexbuf }
  | "+"           { PLUS }
  | "-"           { MINUS }
  | "*"           { MUL }
  | "("           { LPAREN }
  | ")"           { RPAREN }
  | "print"       { PRINT }
  | "let"         { LET }
  | "="           { EQ }
  | integer as x  { INTEGER(int_of_string x) }
  | var as x      { VAR x }
  | eol           { EOL }
  | eof           { END }
