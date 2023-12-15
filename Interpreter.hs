module Interpreter where

import Lexer

subst :: String -> Expr -> Expr -> Expr 
subst x n b@(Var v) = if v == x then 
                        n 
                      else 
                        b 



subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Subs e1 e2) = Subs (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Not e1 ) = Not (subst x n e1)
subst x n (Igual e1 e2) = Igual (subst x n e1) (subst x n e2)
subst x n (Maior e1 e2) = Maior (subst x n e1) (subst x n e2)
subst x n (Maiores e1 e2) = Maiores (subst x n e1) (subst x n e2)
subst x n (Pair e1 e2) = Pair (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n (RPrimeiro e) = RPrimeiro (subst x n e)
subst x n (RSegundo e) = RSegundo (subst x n e)
subst x n (Eq e1 e2) = Eq (subst x n e1) (subst x n e2)
subst x n e = e 