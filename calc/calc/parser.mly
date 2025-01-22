%{
open Ast
%}

%token MUL, PLUS, MINUS, PRINT, LPAREN, RPAREN, EOL
%token<int> INTEGER
%start calc
%left PLUS MINUS
%left MUL
%type <Ast.instruction list> calc
%type <Ast.expr> expr
%type <Ast.expr> term
%type <Ast.expr> factor
%type <Ast.instruction list> instruction_list
%type <Ast.instruction> instruction

%%

calc : instruction_list EOL { $1 }

instruction_list : instruction { [$1] }
                     | instruction_list instruction { $2 :: $1 }

instruction : PRINT expr { Print($2) } ;


expr : expr PLUS expr { Add($1, $3) }
     | expr MINUS expr { Sub($1, $3) }
     | term  { $1 };

term : term MUL term { Mul($1, $3) }
     | factor  { $1 } ;

factor : INTEGER { Integer($1) }
       | LPAREN expr RPAREN { $2 } ;    


%%
