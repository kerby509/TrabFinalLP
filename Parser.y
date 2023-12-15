{
module Parser where 

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parseError }

%token
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSubs }
    '*'         { TokenMul }
    '='        { TokenIgual }
    "&&"        { TokenAnd }
    ">="        { TokenMaiores }
    '>'         { TokenMaior }
    '!'          { TokenNot }
    "=="        { TokenEq }
    "||"         { TokenOr }
    '['          { TokenLColchetes }
    ']'          { TokenRColchetes }
    '{'          {TokenLPair }
    '}'           { TokenRPair }
    ','           { TokenVirgulas }
    '.'           { TokenProjection }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    in          { TokenIn }
    let          { TokenLet }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    ':'         { TokenColon }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    Bool        { TokenBoolean }
    'rp'     { TokenPrimeiro }
    'rs'      { TokenSegundo }
    Number      { TokenNumber }

%nonassoc if then else
%left '+' '-'
%left '*'
%left "&&"
%left "=="

%% 

Exp     : num                        { Num $1 }
        | var                        { Var $1 }
        | false                      { BFalse }
        | true                       { BTrue }
        | Exp '+' Exp                { Add $1 $3 }
        | Exp '-' Exp                { Subs $1 $3 }
        | Exp '*' Exp                { Mul $1 $3 }
        | '!' Exp                    { Not $2 }
        
        | Exp "||" Exp               { Or $1 $3 }
        | Exp ">=" Exp               { Maiores $1 $3 }
        | Exp '>' Exp                { Maior $1 $3 }
        | Exp "&&" Exp               { And $1 $3 }
        | if Exp then Exp else Exp   { If $2 $4 $6 }
        | '\\' var ':' Type "->" Exp { Lam $2 $4 $6 }      
        | let var '=' Exp in Exp     { Let $2 $4 $6 }
        | Exp Exp                    { App $1 $2 }
        | var ':' Type '>' Exp       { Lam $1 $3 $5 }
        | '(' Exp ')'                { Paren $2 }
        | Exp "==" Exp               { Eq $1 $3 }
        | Exp '>' Exp 		     { Maior $1 $3 }
        | Exp ">=" Exp 		     { Maiores $1 $3 }
        | '{' Exp ',' Exp '}'        { Pair $2 $4 }
        | 'rp' Exp              { RPrimeiro $2 }
        | 'rs' Exp              { RSegundo $2 }

Type    : Bool                       { TBool }
        | Number                     { TNum }
        | '(' Type "->" Type ')'     { TFun $2 $4 }
        | '(' Type ',' Type ')'     { TFun $2 $4 }


{ 

parseError :: [Token] -> a 
parseError _ = error "Syntax error!"

}