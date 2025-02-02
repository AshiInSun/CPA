%{
open Ast
%}

%token MUL, PLUS, MINUS, PRINT, EQ, LPAREN, RPAREN, EOL, END, LET, VAR
%token<int> INTEGER
%token<string> VAR
%start calc
%left EQ
%left PLUS MINUS
%left MUL
%type <Ast.instruction list> calc
%type <Ast.expr> expr
%type <Ast.expr> term
%type <Ast.expr> factor
%type <Ast.instruction list> instruction_list
%type <Ast.instruction> instruction

%%
calc : instruction_list END { $1 }

instruction_list : instruction eols instruction_list { $1 :: $3 }
                 | instruction { [$1] } 
instruction : PRINT expr { Print($2) } 
          | LET VAR EQ expr { Let($2, $4) }
          | VAR EQ expr { Affect($1, $3) }

eols : EOL {}
     | eols EOL {}

expr : expr PLUS expr { Add($1, $3) }
     | expr MINUS expr { Sub($1, $3) }
     | VAR { Var($1) }
     | term  { $1 };


term : term MUL term { Mul($1, $3) }
     | factor  { $1 } ;

factor : INTEGER { Integer($1) }
       | LPAREN expr RPAREN { $2 } ;    


%%
