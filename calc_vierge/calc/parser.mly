%{
open Ast
%}

%token MUL, PLUS, LPAREN, RPAREN, EOL
%token<int> INTEGER
%start calc
%type <Ast.expr> calc
%type <Ast.expr> expr
%type <Ast.expr> term
%type <Ast.expr> factor

%%

calc : expr EOL { $1 } ;

expr : expr PLUS expr { Add($1, $3) }
     | term  { $1 };

term : term MUL term { Mul($1, $3) }
     | factor  { $1 } ;

factor : INTEGER { Integer($1) }
       | LPAREN expr RPAREN { $2 } ;

%%
