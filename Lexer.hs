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


isToken :: Char -> Bool
isToken c = elem c "->&|="

lexer :: String -> [Token]
lexer [] = [] 
lexer ('+':cs) = TokenAdd : lexer cs 
lexer ('*':cs) = TokenMul : lexer cs
lexer ('/':cs) = TokenDiv : lexer cs 
lexer ('\\':cs) = TokenLam : lexer cs
lexer (':':cs) = TokenColon : lexer cs
lexer ('[':cs) = TokenLColchetes : lexer cs
lexer (']':cs) = TokenRColchetes : lexer cs
lexer ('{':cs) = TokenLPair : lexer cs
lexer ('}':cs) = TokenRPair : lexer cs
lexer (',':cs) = TokenVirgulas : lexer cs
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) | isSpace c = lexer cs 
             | isDigit c = lexNum (c:cs)
             | isAlpha c = lexKW (c:cs)
             | isToken c = lexSymbol (c:cs)
lexer _ = error "Lexical error: caracter inválido!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of 
              (num, rest) -> TokenNum (read num) : lexer rest 

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of 
             ("true", rest)  -> TokenTrue : lexer rest 
             ("false", rest) -> TokenFalse : lexer rest 
             ("if", rest)    -> TokenIf : lexer rest 
             ("in", rest)    -> TokenIn : lexer rest 
             ("let", rest)    -> TokenLet : lexer rest
             ("then", rest)  -> TokenThen : lexer rest
             ("rp", rest)  -> TokenPrimeiro : lexer rest
             ("rs", rest)  -> TokenSegundo : lexer rest 
             ("else", rest)  -> TokenElse : lexer rest 
             ("Bool", rest)  -> TokenBoolean : lexer rest 
             ("Number", rest)  -> TokenNumber : lexer rest 
             (var, rest)     -> TokenVar var : lexer rest 

lexSymbol :: String -> [Token]
lexSymbol cs = case span isToken cs of
                   ("->", rest) -> TokenArrow  : lexer rest
                   ("-", rest)  -> TokenSubs   : lexer rest                  
                   ("&&", rest) -> TokenAnd    : lexer rest
                   ("==", rest) -> TokenEq     : lexer rest
                   (">=", rest) -> TokenMaiores  : lexer rest
                   (">", rest)  -> TokenMaior   : lexer rest
                   ("=", rest)  -> TokenIgual   : lexer rest
                   ("||", rest)  -> TokenOr   : lexer rest
                   ("!", rest)  -> TokenNot   : lexer rest
                   _ -> error "Lexical error: símbolo inválido!"