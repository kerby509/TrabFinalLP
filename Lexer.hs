module Lexer where 

import Data.Char 

data Ty = TBool
        | TNum
        | TFun Ty Ty 
        | TPair Ty Ty
        | TNull
        deriving (Show, Eq)

data Expr = BTrue
          | BFalse
          | BNull
          | Num Int 
          | Add Expr Expr 
          | Subs Expr Expr
          | Mul Expr Expr
          | Div Expr Expr
          | Or Expr Expr 
          | Igual Expr Expr
          | Maiores Expr Expr
          | Maior Expr Expr 
          | Not Expr
          | Let String Expr Expr 
          | Pair Expr Expr
          | Projection Expr Int
          | RPrimeiro Expr
          | RSegundo Expr
          | And Expr Expr 
          | If Expr Expr Expr 
          | Var String
          | Lam String Ty Expr 
          | App Expr Expr 
          | Paren Expr
          | Eq Expr Expr
          deriving (Show, Eq)


data Token = TokenTrue 
           | TokenFalse 
           | TokenNum Int 
           | TokenAdd 
           | TokenSubs
           | TokenMul
           | TokenDiv
           | TokenOr
           | TokenMaiores
           | TokenMaior
           | TokenNot
           | TokenAnd
           | TokenIf 
           | TokenThen
           | TokenElse 
           | TokenVar String 
           | TokenLam
           | TokenLet
           | TokenIgual
           | TokenIn
           | TokenLColchetes 
           | TokenRColchetes
           | TokenLPair
           | TokenPrimeiro
           | TokenSegundo
           | TokenRPair
           | TokenVirgulas
           | TokenProjection
           | TokenColon
           | TokenArrow 
           | TokenLParen
           | TokenRParen
           | TokenBoolean
           | TokenNumber
           | TokenEq
           deriving Show 