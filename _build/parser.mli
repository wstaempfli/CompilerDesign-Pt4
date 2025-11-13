
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TVOID
  | TSTRING
  | TINT
  | TILDE
  | TBOOL
  | STRING of (string)
  | STAR
  | SLR
  | SHL
  | SEMI
  | SAR
  | RPAREN
  | RETURN
  | RBRACKET
  | RBRACE
  | PLUS
  | NULL
  | NEW
  | LTEQ
  | LT
  | LPAREN
  | LOR
  | LBRACKET
  | LBRACE
  | LAND
  | INT of (int64)
  | IF
  | IDENT of (string)
  | GTEQ
  | GT
  | GLOBAL
  | EQEQ
  | EQ
  | EOF
  | ELSE
  | DASH
  | COMMA
  | BOR
  | BOOL of (bool)
  | BANGEQ
  | BANG
  | BAND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val stmt_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)

val exp_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node)
