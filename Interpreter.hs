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

step :: Expr -> Maybe Expr 
step (Add (Num n1) (Num n2)) = Just (Num (n1 + n2))
step (Add (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Add (Num n1) e2')
                           _        -> Nothing
step (Add e1 e2) = case step e1 of 
                     Just e1' -> Just (Add e1' e2)
                     _        -> Nothing
-- Substração
step (Subs (Num n1) (Num n2)) = Just (Num (n1 - n2))
step (Subs (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Subs (Num n1) e2')
                           _        -> Nothing
step (Subs e1 e2) = case step e1 of 
                     Just e1' -> Just (Subs e1' e2)
                     _        -> Nothing 


 -- Multipicação
step (Mul (Num n1) (Num n2)) = Just (Num (n1 * n2))
step (Mul (Num n1) e2) = case step e2 of 
                           Just e2' -> Just (Mul (Num n1) e2')
                           _        -> Nothing
step (Mul e1 e2) = case step e1 of 
                     Just e1' -> Just (Mul e1' e2)
                     _        -> Nothing 

step (Maior (Num n1) (Num n2)) = if (n1 > n2) then 
                                Just BTrue 
                              else 
                                Just BFalse
step (Maior (Num n1) e2) = case step e2 of
                          Just e2' -> Just (Maior (Num n1) e2')
                          _        -> Nothing
step (Maior e1 e2) = case step e1 of
                    Just e1' -> Just (Maior e1' e2)
                    _        -> Nothing

step (Maiores (Num n1) (Num n2)) = if (n1 >= n2) then 
                                 Just BTrue 
                               else 
                                 Just BFalse
step (Maiores (Num n1) e2) = case step e2 of
                            Just e2' -> Just (Maiores (Num n1) e2')
                            _        -> Nothing
step (Maiores e1 e2) = case step e1 of
                      Just e1' -> Just (Maiores e1' e2)
                      _        -> Nothing

step (And BFalse _) = Just BFalse 
step (And e1 e2) = case step e1 of 
                     Just e1' -> Just (And e1' e2)
                     _        -> Nothing
step (If BTrue e1 _) = Just e1 
step (If BFalse _ e2) = Just e2 
step (If e e1 e2) = case step e of 
                      Just e' -> Just (If e' e1 e2)
                      _       -> Nothing
step (App e1@(Lam x t b) e2) | isvalue e2 = Just (subst x e2 b)
                             | otherwise = case step e2 of 
                                             Just e2' -> Just (App e1 e2')
                                             _        -> Nothing 
step (Or BTrue e2) = Just e2 
step (Or BFalse _) = Just BFalse 
step (Or e1 e2) = case step e1 of 
                     Just e1' -> Just (Or e1' e2)
                     _        -> Nothing


step (Not BTrue) = Just BFalse
step (Not BFalse) = Just BTrue
step (Not e1) = case step e1 of 
                     Just e1' -> Just (Not e1')
                     _        -> Nothing

step (RPrimeiro (Pair e1 e2)) = Just e1
step (RSegundo (Pair e1 e2)) = Just e2
step (Pair e1 e2 ) = case (step e1) of
                        Just e' -> case (step e2) of 
                            Just e2'-> Just (Pair e' e2')
                            Nothing -> Nothing
                        Nothing -> Nothing
                     

step (Let x e1 e2) = Just (subst x e1 e2)


step (App e1 e2) = case step e1 of 
                     Just e1' -> Just (App e1' e2)
                     _        -> Nothing
                     
step (Paren e) = Just e
step (Eq e1 e2) | isvalue e1 && isvalue e2 = if (e1 == e2) then
                                               Just BTrue 
                                             else 
                                               Just BFalse 
                | isvalue e1 = case step e2 of 
                                 Just e2' -> Just (Eq e1 e2')
                                 _        -> Nothing
                | otherwise = case step e1 of 
                                Just e1' -> Just (Eq e1' e2)
                                _        -> Nothing 
      
--Operador de Composição

dobro :: Int -> Int
dobro x = x * 2

quadrado :: Int -> Int
quadrado x = x ^ 2

dobroEQuadrado :: Int -> Int
dobroEQuadrado = dobro . quadrado


step e = Just e 

eval :: Expr -> Expr 
eval e | isvalue e = e 
       | otherwise = case step e of 
                       Just e' -> eval e'
                       _       -> error "Interpreter error!"