{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,507) ([8224,26052,8242,0,0,0,0,57344,50429,12901,8224,26052,8242,50208,12901,0,0,0,0,0,8224,26052,50,0,32,0,32768,0,0,32,8224,26052,8242,50208,12901,8224,26052,50,0,0,0,0,57344,50429,13925,0,32768,0,0,18944,512,0,57344,50429,12909,64992,26068,50,0,0,0,0,8192,50208,12901,8224,26052,8242,50208,12901,8224,26052,8242,50208,12901,8224,26052,8242,50208,12901,8224,26052,50,0,0,0,0,0,0,0,0,0,0,64,0,17408,0,0,69,0,17664,0,8192,50208,12901,8224,26052,8242,50208,12901,4096,0,0,0,18944,0,0,0,0,0,0,0,74,0,0,0,0,1,4096,256,8224,26052,57394,50429,12903,64992,30148,57394,52477,12901,0,0,8192,50208,12901,8224,26052,50,0,0,0,0,74,0,18944,8224,26052,50,0,0,0,0,4,0,1024,0,0,49152,69,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","'='","\"&&\"","\">=\"","'>'","'!'","\"==\"","\"||\"","'['","']'","'{'","'}'","','","'.'","true","false","if","in","let","then","else","var","'\\\\'","':'","\"->\"","'('","')'","Bool","'rp'","'rs'","Number","%eof"]
        bit_start = st * 40
        bit_end = (st + 1) * 40
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..39]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (14) = happyShift action_4
action_0 (19) = happyShift action_5
action_0 (23) = happyShift action_6
action_0 (24) = happyShift action_7
action_0 (25) = happyShift action_8
action_0 (27) = happyShift action_9
action_0 (30) = happyShift action_10
action_0 (31) = happyShift action_11
action_0 (34) = happyShift action_12
action_0 (37) = happyShift action_13
action_0 (38) = happyShift action_14
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_25
action_3 (8) = happyShift action_26
action_3 (9) = happyShift action_27
action_3 (11) = happyShift action_28
action_3 (12) = happyShift action_29
action_3 (13) = happyShift action_30
action_3 (14) = happyShift action_4
action_3 (15) = happyShift action_31
action_3 (16) = happyShift action_32
action_3 (19) = happyShift action_5
action_3 (23) = happyShift action_6
action_3 (24) = happyShift action_7
action_3 (25) = happyShift action_8
action_3 (27) = happyShift action_9
action_3 (30) = happyShift action_10
action_3 (31) = happyShift action_11
action_3 (34) = happyShift action_12
action_3 (37) = happyShift action_13
action_3 (38) = happyShift action_14
action_3 (40) = happyAccept
action_3 (4) = happyGoto action_24
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_2
action_4 (14) = happyShift action_4
action_4 (19) = happyShift action_5
action_4 (23) = happyShift action_6
action_4 (24) = happyShift action_7
action_4 (25) = happyShift action_8
action_4 (27) = happyShift action_9
action_4 (30) = happyShift action_10
action_4 (31) = happyShift action_11
action_4 (34) = happyShift action_12
action_4 (37) = happyShift action_13
action_4 (38) = happyShift action_14
action_4 (4) = happyGoto action_23
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (6) = happyShift action_2
action_5 (14) = happyShift action_4
action_5 (19) = happyShift action_5
action_5 (23) = happyShift action_6
action_5 (24) = happyShift action_7
action_5 (25) = happyShift action_8
action_5 (27) = happyShift action_9
action_5 (30) = happyShift action_10
action_5 (31) = happyShift action_11
action_5 (34) = happyShift action_12
action_5 (37) = happyShift action_13
action_5 (38) = happyShift action_14
action_5 (4) = happyGoto action_22
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_4

action_7 _ = happyReduce_3

action_8 (6) = happyShift action_2
action_8 (14) = happyShift action_4
action_8 (19) = happyShift action_5
action_8 (23) = happyShift action_6
action_8 (24) = happyShift action_7
action_8 (25) = happyShift action_8
action_8 (27) = happyShift action_9
action_8 (30) = happyShift action_10
action_8 (31) = happyShift action_11
action_8 (34) = happyShift action_12
action_8 (37) = happyShift action_13
action_8 (38) = happyShift action_14
action_8 (4) = happyGoto action_21
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (30) = happyShift action_20
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (32) = happyShift action_19
action_10 _ = happyReduce_2

action_11 (30) = happyShift action_18
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (14) = happyShift action_4
action_12 (19) = happyShift action_5
action_12 (23) = happyShift action_6
action_12 (24) = happyShift action_7
action_12 (25) = happyShift action_8
action_12 (27) = happyShift action_9
action_12 (30) = happyShift action_10
action_12 (31) = happyShift action_11
action_12 (34) = happyShift action_12
action_12 (37) = happyShift action_13
action_12 (38) = happyShift action_14
action_12 (4) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_2
action_13 (14) = happyShift action_4
action_13 (19) = happyShift action_5
action_13 (23) = happyShift action_6
action_13 (24) = happyShift action_7
action_13 (25) = happyShift action_8
action_13 (27) = happyShift action_9
action_13 (30) = happyShift action_10
action_13 (31) = happyShift action_11
action_13 (34) = happyShift action_12
action_13 (37) = happyShift action_13
action_13 (38) = happyShift action_14
action_13 (4) = happyGoto action_16
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (14) = happyShift action_4
action_14 (19) = happyShift action_5
action_14 (23) = happyShift action_6
action_14 (24) = happyShift action_7
action_14 (25) = happyShift action_8
action_14 (27) = happyShift action_9
action_14 (30) = happyShift action_10
action_14 (31) = happyShift action_11
action_14 (34) = happyShift action_12
action_14 (37) = happyShift action_13
action_14 (38) = happyShift action_14
action_14 (4) = happyGoto action_15
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_2
action_15 (7) = happyShift action_25
action_15 (8) = happyShift action_26
action_15 (9) = happyShift action_27
action_15 (11) = happyShift action_28
action_15 (12) = happyShift action_29
action_15 (13) = happyShift action_30
action_15 (14) = happyShift action_4
action_15 (15) = happyShift action_31
action_15 (16) = happyShift action_32
action_15 (19) = happyShift action_5
action_15 (23) = happyShift action_6
action_15 (24) = happyShift action_7
action_15 (25) = happyShift action_8
action_15 (27) = happyShift action_9
action_15 (30) = happyShift action_10
action_15 (31) = happyShift action_11
action_15 (34) = happyShift action_12
action_15 (37) = happyShift action_13
action_15 (38) = happyShift action_14
action_15 (4) = happyGoto action_24
action_15 _ = happyReduce_24

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_25
action_16 (8) = happyShift action_26
action_16 (9) = happyShift action_27
action_16 (11) = happyShift action_28
action_16 (12) = happyShift action_29
action_16 (13) = happyShift action_30
action_16 (14) = happyShift action_4
action_16 (15) = happyShift action_31
action_16 (16) = happyShift action_32
action_16 (19) = happyShift action_5
action_16 (23) = happyShift action_6
action_16 (24) = happyShift action_7
action_16 (25) = happyShift action_8
action_16 (27) = happyShift action_9
action_16 (30) = happyShift action_10
action_16 (31) = happyShift action_11
action_16 (34) = happyShift action_12
action_16 (37) = happyShift action_13
action_16 (38) = happyShift action_14
action_16 (4) = happyGoto action_24
action_16 _ = happyReduce_23

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_25
action_17 (8) = happyShift action_26
action_17 (9) = happyShift action_27
action_17 (11) = happyShift action_28
action_17 (12) = happyShift action_29
action_17 (13) = happyShift action_30
action_17 (14) = happyShift action_4
action_17 (15) = happyShift action_31
action_17 (16) = happyShift action_32
action_17 (19) = happyShift action_5
action_17 (23) = happyShift action_6
action_17 (24) = happyShift action_7
action_17 (25) = happyShift action_8
action_17 (27) = happyShift action_9
action_17 (30) = happyShift action_10
action_17 (31) = happyShift action_11
action_17 (34) = happyShift action_12
action_17 (35) = happyShift action_49
action_17 (37) = happyShift action_13
action_17 (38) = happyShift action_14
action_17 (4) = happyGoto action_24
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (32) = happyShift action_48
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (34) = happyShift action_45
action_19 (36) = happyShift action_46
action_19 (39) = happyShift action_47
action_19 (5) = happyGoto action_44
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (10) = happyShift action_43
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (7) = happyShift action_25
action_21 (8) = happyShift action_26
action_21 (9) = happyShift action_27
action_21 (11) = happyShift action_28
action_21 (12) = happyShift action_29
action_21 (13) = happyShift action_30
action_21 (14) = happyShift action_4
action_21 (15) = happyShift action_31
action_21 (16) = happyShift action_32
action_21 (19) = happyShift action_5
action_21 (23) = happyShift action_6
action_21 (24) = happyShift action_7
action_21 (25) = happyShift action_8
action_21 (27) = happyShift action_9
action_21 (28) = happyShift action_42
action_21 (30) = happyShift action_10
action_21 (31) = happyShift action_11
action_21 (34) = happyShift action_12
action_21 (37) = happyShift action_13
action_21 (38) = happyShift action_14
action_21 (4) = happyGoto action_24
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (7) = happyShift action_25
action_22 (8) = happyShift action_26
action_22 (9) = happyShift action_27
action_22 (11) = happyShift action_28
action_22 (12) = happyShift action_29
action_22 (13) = happyShift action_30
action_22 (14) = happyShift action_4
action_22 (15) = happyShift action_31
action_22 (16) = happyShift action_32
action_22 (19) = happyShift action_5
action_22 (21) = happyShift action_41
action_22 (23) = happyShift action_6
action_22 (24) = happyShift action_7
action_22 (25) = happyShift action_8
action_22 (27) = happyShift action_9
action_22 (30) = happyShift action_10
action_22 (31) = happyShift action_11
action_22 (34) = happyShift action_12
action_22 (37) = happyShift action_13
action_22 (38) = happyShift action_14
action_22 (4) = happyGoto action_24
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (7) = happyShift action_25
action_23 (8) = happyShift action_26
action_23 (9) = happyShift action_27
action_23 (11) = happyShift action_28
action_23 (12) = happyShift action_29
action_23 (13) = happyShift action_30
action_23 (14) = happyShift action_4
action_23 (15) = happyShift action_31
action_23 (16) = happyShift action_32
action_23 (19) = happyShift action_5
action_23 (23) = happyShift action_6
action_23 (24) = happyShift action_7
action_23 (25) = happyShift action_8
action_23 (27) = happyShift action_9
action_23 (30) = happyShift action_10
action_23 (31) = happyShift action_11
action_23 (34) = happyShift action_12
action_23 (37) = happyShift action_13
action_23 (38) = happyShift action_14
action_23 (4) = happyGoto action_24
action_23 _ = happyReduce_8

action_24 (6) = happyShift action_2
action_24 (7) = happyShift action_25
action_24 (8) = happyShift action_26
action_24 (9) = happyShift action_27
action_24 (11) = happyShift action_28
action_24 (12) = happyShift action_29
action_24 (13) = happyShift action_30
action_24 (14) = happyShift action_4
action_24 (15) = happyShift action_31
action_24 (16) = happyShift action_32
action_24 (19) = happyShift action_5
action_24 (23) = happyShift action_6
action_24 (24) = happyShift action_7
action_24 (25) = happyShift action_8
action_24 (27) = happyShift action_9
action_24 (30) = happyShift action_10
action_24 (31) = happyShift action_11
action_24 (34) = happyShift action_12
action_24 (37) = happyShift action_13
action_24 (38) = happyShift action_14
action_24 (4) = happyGoto action_24
action_24 _ = happyReduce_16

action_25 (6) = happyShift action_2
action_25 (14) = happyShift action_4
action_25 (19) = happyShift action_5
action_25 (23) = happyShift action_6
action_25 (24) = happyShift action_7
action_25 (25) = happyShift action_8
action_25 (27) = happyShift action_9
action_25 (30) = happyShift action_10
action_25 (31) = happyShift action_11
action_25 (34) = happyShift action_12
action_25 (37) = happyShift action_13
action_25 (38) = happyShift action_14
action_25 (4) = happyGoto action_40
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (14) = happyShift action_4
action_26 (19) = happyShift action_5
action_26 (23) = happyShift action_6
action_26 (24) = happyShift action_7
action_26 (25) = happyShift action_8
action_26 (27) = happyShift action_9
action_26 (30) = happyShift action_10
action_26 (31) = happyShift action_11
action_26 (34) = happyShift action_12
action_26 (37) = happyShift action_13
action_26 (38) = happyShift action_14
action_26 (4) = happyGoto action_39
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (14) = happyShift action_4
action_27 (19) = happyShift action_5
action_27 (23) = happyShift action_6
action_27 (24) = happyShift action_7
action_27 (25) = happyShift action_8
action_27 (27) = happyShift action_9
action_27 (30) = happyShift action_10
action_27 (31) = happyShift action_11
action_27 (34) = happyShift action_12
action_27 (37) = happyShift action_13
action_27 (38) = happyShift action_14
action_27 (4) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (14) = happyShift action_4
action_28 (19) = happyShift action_5
action_28 (23) = happyShift action_6
action_28 (24) = happyShift action_7
action_28 (25) = happyShift action_8
action_28 (27) = happyShift action_9
action_28 (30) = happyShift action_10
action_28 (31) = happyShift action_11
action_28 (34) = happyShift action_12
action_28 (37) = happyShift action_13
action_28 (38) = happyShift action_14
action_28 (4) = happyGoto action_37
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_2
action_29 (14) = happyShift action_4
action_29 (19) = happyShift action_5
action_29 (23) = happyShift action_6
action_29 (24) = happyShift action_7
action_29 (25) = happyShift action_8
action_29 (27) = happyShift action_9
action_29 (30) = happyShift action_10
action_29 (31) = happyShift action_11
action_29 (34) = happyShift action_12
action_29 (37) = happyShift action_13
action_29 (38) = happyShift action_14
action_29 (4) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_2
action_30 (14) = happyShift action_4
action_30 (19) = happyShift action_5
action_30 (23) = happyShift action_6
action_30 (24) = happyShift action_7
action_30 (25) = happyShift action_8
action_30 (27) = happyShift action_9
action_30 (30) = happyShift action_10
action_30 (31) = happyShift action_11
action_30 (34) = happyShift action_12
action_30 (37) = happyShift action_13
action_30 (38) = happyShift action_14
action_30 (4) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (6) = happyShift action_2
action_31 (14) = happyShift action_4
action_31 (19) = happyShift action_5
action_31 (23) = happyShift action_6
action_31 (24) = happyShift action_7
action_31 (25) = happyShift action_8
action_31 (27) = happyShift action_9
action_31 (30) = happyShift action_10
action_31 (31) = happyShift action_11
action_31 (34) = happyShift action_12
action_31 (37) = happyShift action_13
action_31 (38) = happyShift action_14
action_31 (4) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (6) = happyShift action_2
action_32 (14) = happyShift action_4
action_32 (19) = happyShift action_5
action_32 (23) = happyShift action_6
action_32 (24) = happyShift action_7
action_32 (25) = happyShift action_8
action_32 (27) = happyShift action_9
action_32 (30) = happyShift action_10
action_32 (31) = happyShift action_11
action_32 (34) = happyShift action_12
action_32 (37) = happyShift action_13
action_32 (38) = happyShift action_14
action_32 (4) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (6) = happyShift action_2
action_33 (7) = happyShift action_25
action_33 (8) = happyShift action_26
action_33 (9) = happyShift action_27
action_33 (11) = happyShift action_28
action_33 (12) = happyShift action_29
action_33 (13) = happyShift action_30
action_33 (14) = happyShift action_4
action_33 (15) = happyShift action_31
action_33 (16) = happyShift action_32
action_33 (19) = happyShift action_5
action_33 (23) = happyShift action_6
action_33 (24) = happyShift action_7
action_33 (25) = happyShift action_8
action_33 (27) = happyShift action_9
action_33 (30) = happyShift action_10
action_33 (31) = happyShift action_11
action_33 (34) = happyShift action_12
action_33 (37) = happyShift action_13
action_33 (38) = happyShift action_14
action_33 (4) = happyGoto action_24
action_33 _ = happyReduce_9

action_34 (6) = happyShift action_2
action_34 (12) = happyShift action_29
action_34 (13) = happyShift action_30
action_34 (14) = happyShift action_4
action_34 (16) = happyShift action_32
action_34 (19) = happyShift action_5
action_34 (23) = happyShift action_6
action_34 (24) = happyShift action_7
action_34 (27) = happyShift action_9
action_34 (30) = happyShift action_10
action_34 (31) = happyShift action_11
action_34 (34) = happyShift action_12
action_34 (37) = happyShift action_13
action_34 (38) = happyShift action_14
action_34 (4) = happyGoto action_24
action_34 _ = happyReduce_19

action_35 (6) = happyShift action_2
action_35 (7) = happyShift action_25
action_35 (8) = happyShift action_26
action_35 (9) = happyShift action_27
action_35 (11) = happyShift action_28
action_35 (12) = happyShift action_29
action_35 (13) = happyShift action_30
action_35 (14) = happyShift action_4
action_35 (15) = happyShift action_31
action_35 (16) = happyShift action_32
action_35 (19) = happyShift action_5
action_35 (20) = happyReduce_20
action_35 (21) = happyReduce_20
action_35 (23) = happyShift action_6
action_35 (24) = happyShift action_7
action_35 (25) = happyShift action_8
action_35 (26) = happyReduce_20
action_35 (27) = happyShift action_9
action_35 (28) = happyReduce_20
action_35 (29) = happyReduce_20
action_35 (30) = happyShift action_10
action_35 (31) = happyShift action_11
action_35 (34) = happyShift action_12
action_35 (35) = happyReduce_20
action_35 (37) = happyShift action_13
action_35 (38) = happyShift action_14
action_35 (40) = happyReduce_20
action_35 (4) = happyGoto action_24
action_35 _ = happyReduce_20

action_36 (6) = happyShift action_2
action_36 (7) = happyShift action_25
action_36 (8) = happyShift action_26
action_36 (9) = happyShift action_27
action_36 (11) = happyShift action_28
action_36 (12) = happyShift action_29
action_36 (13) = happyShift action_30
action_36 (14) = happyShift action_4
action_36 (15) = happyShift action_31
action_36 (16) = happyShift action_32
action_36 (19) = happyShift action_5
action_36 (20) = happyReduce_21
action_36 (21) = happyReduce_21
action_36 (23) = happyShift action_6
action_36 (24) = happyShift action_7
action_36 (25) = happyShift action_8
action_36 (26) = happyReduce_21
action_36 (27) = happyShift action_9
action_36 (28) = happyReduce_21
action_36 (29) = happyReduce_21
action_36 (30) = happyShift action_10
action_36 (31) = happyShift action_11
action_36 (34) = happyShift action_12
action_36 (35) = happyReduce_21
action_36 (37) = happyShift action_13
action_36 (38) = happyShift action_14
action_36 (40) = happyReduce_21
action_36 (4) = happyGoto action_24
action_36 _ = happyReduce_21

action_37 (6) = happyShift action_2
action_37 (12) = happyShift action_29
action_37 (13) = happyShift action_30
action_37 (14) = happyShift action_4
action_37 (15) = happyShift action_31
action_37 (16) = happyShift action_32
action_37 (19) = happyShift action_5
action_37 (23) = happyShift action_6
action_37 (24) = happyShift action_7
action_37 (27) = happyShift action_9
action_37 (30) = happyShift action_10
action_37 (31) = happyShift action_11
action_37 (34) = happyShift action_12
action_37 (37) = happyShift action_13
action_37 (38) = happyShift action_14
action_37 (4) = happyGoto action_24
action_37 _ = happyReduce_12

action_38 (6) = happyShift action_2
action_38 (11) = happyShift action_28
action_38 (12) = happyShift action_29
action_38 (13) = happyShift action_30
action_38 (14) = happyShift action_4
action_38 (15) = happyShift action_31
action_38 (16) = happyShift action_32
action_38 (19) = happyShift action_5
action_38 (23) = happyShift action_6
action_38 (24) = happyShift action_7
action_38 (27) = happyShift action_9
action_38 (30) = happyShift action_10
action_38 (31) = happyShift action_11
action_38 (34) = happyShift action_12
action_38 (37) = happyShift action_13
action_38 (38) = happyShift action_14
action_38 (4) = happyGoto action_24
action_38 _ = happyReduce_7

action_39 (6) = happyShift action_2
action_39 (9) = happyShift action_27
action_39 (11) = happyShift action_28
action_39 (12) = happyShift action_29
action_39 (13) = happyShift action_30
action_39 (14) = happyShift action_4
action_39 (15) = happyShift action_31
action_39 (16) = happyShift action_32
action_39 (19) = happyShift action_5
action_39 (23) = happyShift action_6
action_39 (24) = happyShift action_7
action_39 (27) = happyShift action_9
action_39 (30) = happyShift action_10
action_39 (31) = happyShift action_11
action_39 (34) = happyShift action_12
action_39 (37) = happyShift action_13
action_39 (38) = happyShift action_14
action_39 (4) = happyGoto action_24
action_39 _ = happyReduce_6

action_40 (6) = happyShift action_2
action_40 (9) = happyShift action_27
action_40 (11) = happyShift action_28
action_40 (12) = happyShift action_29
action_40 (13) = happyShift action_30
action_40 (14) = happyShift action_4
action_40 (15) = happyShift action_31
action_40 (16) = happyShift action_32
action_40 (19) = happyShift action_5
action_40 (23) = happyShift action_6
action_40 (24) = happyShift action_7
action_40 (27) = happyShift action_9
action_40 (30) = happyShift action_10
action_40 (31) = happyShift action_11
action_40 (34) = happyShift action_12
action_40 (37) = happyShift action_13
action_40 (38) = happyShift action_14
action_40 (4) = happyGoto action_24
action_40 _ = happyReduce_5

action_41 (6) = happyShift action_2
action_41 (14) = happyShift action_4
action_41 (19) = happyShift action_5
action_41 (23) = happyShift action_6
action_41 (24) = happyShift action_7
action_41 (25) = happyShift action_8
action_41 (27) = happyShift action_9
action_41 (30) = happyShift action_10
action_41 (31) = happyShift action_11
action_41 (34) = happyShift action_12
action_41 (37) = happyShift action_13
action_41 (38) = happyShift action_14
action_41 (4) = happyGoto action_55
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_2
action_42 (14) = happyShift action_4
action_42 (19) = happyShift action_5
action_42 (23) = happyShift action_6
action_42 (24) = happyShift action_7
action_42 (25) = happyShift action_8
action_42 (27) = happyShift action_9
action_42 (30) = happyShift action_10
action_42 (31) = happyShift action_11
action_42 (34) = happyShift action_12
action_42 (37) = happyShift action_13
action_42 (38) = happyShift action_14
action_42 (4) = happyGoto action_54
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (6) = happyShift action_2
action_43 (14) = happyShift action_4
action_43 (19) = happyShift action_5
action_43 (23) = happyShift action_6
action_43 (24) = happyShift action_7
action_43 (25) = happyShift action_8
action_43 (27) = happyShift action_9
action_43 (30) = happyShift action_10
action_43 (31) = happyShift action_11
action_43 (34) = happyShift action_12
action_43 (37) = happyShift action_13
action_43 (38) = happyShift action_14
action_43 (4) = happyGoto action_53
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (13) = happyShift action_52
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (34) = happyShift action_45
action_45 (36) = happyShift action_46
action_45 (39) = happyShift action_47
action_45 (5) = happyGoto action_51
action_45 _ = happyFail (happyExpListPerState 45)

action_46 _ = happyReduce_25

action_47 _ = happyReduce_26

action_48 (34) = happyShift action_45
action_48 (36) = happyShift action_46
action_48 (39) = happyShift action_47
action_48 (5) = happyGoto action_50
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_18

action_50 (33) = happyShift action_62
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (21) = happyShift action_60
action_51 (33) = happyShift action_61
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_2
action_52 (14) = happyShift action_4
action_52 (19) = happyShift action_5
action_52 (23) = happyShift action_6
action_52 (24) = happyShift action_7
action_52 (25) = happyShift action_8
action_52 (27) = happyShift action_9
action_52 (30) = happyShift action_10
action_52 (31) = happyShift action_11
action_52 (34) = happyShift action_12
action_52 (37) = happyShift action_13
action_52 (38) = happyShift action_14
action_52 (4) = happyGoto action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_2
action_53 (7) = happyShift action_25
action_53 (8) = happyShift action_26
action_53 (9) = happyShift action_27
action_53 (11) = happyShift action_28
action_53 (12) = happyShift action_29
action_53 (13) = happyShift action_30
action_53 (14) = happyShift action_4
action_53 (15) = happyShift action_31
action_53 (16) = happyShift action_32
action_53 (19) = happyShift action_5
action_53 (23) = happyShift action_6
action_53 (24) = happyShift action_7
action_53 (25) = happyShift action_8
action_53 (26) = happyShift action_58
action_53 (27) = happyShift action_9
action_53 (30) = happyShift action_10
action_53 (31) = happyShift action_11
action_53 (34) = happyShift action_12
action_53 (37) = happyShift action_13
action_53 (38) = happyShift action_14
action_53 (4) = happyGoto action_24
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_25
action_54 (8) = happyShift action_26
action_54 (9) = happyShift action_27
action_54 (11) = happyShift action_28
action_54 (12) = happyShift action_29
action_54 (13) = happyShift action_30
action_54 (14) = happyShift action_4
action_54 (15) = happyShift action_31
action_54 (16) = happyShift action_32
action_54 (19) = happyShift action_5
action_54 (23) = happyShift action_6
action_54 (24) = happyShift action_7
action_54 (25) = happyShift action_8
action_54 (27) = happyShift action_9
action_54 (29) = happyShift action_57
action_54 (30) = happyShift action_10
action_54 (31) = happyShift action_11
action_54 (34) = happyShift action_12
action_54 (37) = happyShift action_13
action_54 (38) = happyShift action_14
action_54 (4) = happyGoto action_24
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_25
action_55 (8) = happyShift action_26
action_55 (9) = happyShift action_27
action_55 (11) = happyShift action_28
action_55 (12) = happyShift action_29
action_55 (13) = happyShift action_30
action_55 (14) = happyShift action_4
action_55 (15) = happyShift action_31
action_55 (16) = happyShift action_32
action_55 (19) = happyShift action_5
action_55 (20) = happyShift action_56
action_55 (23) = happyShift action_6
action_55 (24) = happyShift action_7
action_55 (25) = happyShift action_8
action_55 (27) = happyShift action_9
action_55 (30) = happyShift action_10
action_55 (31) = happyShift action_11
action_55 (34) = happyShift action_12
action_55 (37) = happyShift action_13
action_55 (38) = happyShift action_14
action_55 (4) = happyGoto action_24
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_22

action_57 (6) = happyShift action_2
action_57 (14) = happyShift action_4
action_57 (19) = happyShift action_5
action_57 (23) = happyShift action_6
action_57 (24) = happyShift action_7
action_57 (25) = happyShift action_8
action_57 (27) = happyShift action_9
action_57 (30) = happyShift action_10
action_57 (31) = happyShift action_11
action_57 (34) = happyShift action_12
action_57 (37) = happyShift action_13
action_57 (38) = happyShift action_14
action_57 (4) = happyGoto action_67
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_2
action_58 (14) = happyShift action_4
action_58 (19) = happyShift action_5
action_58 (23) = happyShift action_6
action_58 (24) = happyShift action_7
action_58 (25) = happyShift action_8
action_58 (27) = happyShift action_9
action_58 (30) = happyShift action_10
action_58 (31) = happyShift action_11
action_58 (34) = happyShift action_12
action_58 (37) = happyShift action_13
action_58 (38) = happyShift action_14
action_58 (4) = happyGoto action_66
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (6) = happyShift action_2
action_59 (7) = happyShift action_25
action_59 (8) = happyShift action_26
action_59 (9) = happyShift action_27
action_59 (11) = happyShift action_28
action_59 (12) = happyShift action_29
action_59 (13) = happyShift action_30
action_59 (14) = happyShift action_4
action_59 (15) = happyShift action_31
action_59 (16) = happyShift action_32
action_59 (19) = happyShift action_5
action_59 (23) = happyShift action_6
action_59 (24) = happyShift action_7
action_59 (25) = happyShift action_8
action_59 (27) = happyShift action_9
action_59 (30) = happyShift action_10
action_59 (31) = happyShift action_11
action_59 (34) = happyShift action_12
action_59 (37) = happyShift action_13
action_59 (38) = happyShift action_14
action_59 (4) = happyGoto action_24
action_59 _ = happyReduce_17

action_60 (34) = happyShift action_45
action_60 (36) = happyShift action_46
action_60 (39) = happyShift action_47
action_60 (5) = happyGoto action_65
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (34) = happyShift action_45
action_61 (36) = happyShift action_46
action_61 (39) = happyShift action_47
action_61 (5) = happyGoto action_64
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_2
action_62 (14) = happyShift action_4
action_62 (19) = happyShift action_5
action_62 (23) = happyShift action_6
action_62 (24) = happyShift action_7
action_62 (25) = happyShift action_8
action_62 (27) = happyShift action_9
action_62 (30) = happyShift action_10
action_62 (31) = happyShift action_11
action_62 (34) = happyShift action_12
action_62 (37) = happyShift action_13
action_62 (38) = happyShift action_14
action_62 (4) = happyGoto action_63
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (6) = happyShift action_2
action_63 (7) = happyShift action_25
action_63 (8) = happyShift action_26
action_63 (9) = happyShift action_27
action_63 (11) = happyShift action_28
action_63 (12) = happyShift action_29
action_63 (13) = happyShift action_30
action_63 (14) = happyShift action_4
action_63 (15) = happyShift action_31
action_63 (16) = happyShift action_32
action_63 (19) = happyShift action_5
action_63 (23) = happyShift action_6
action_63 (24) = happyShift action_7
action_63 (25) = happyShift action_8
action_63 (27) = happyShift action_9
action_63 (30) = happyShift action_10
action_63 (31) = happyShift action_11
action_63 (34) = happyShift action_12
action_63 (37) = happyShift action_13
action_63 (38) = happyShift action_14
action_63 (4) = happyGoto action_24
action_63 _ = happyReduce_14

action_64 (35) = happyShift action_69
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (35) = happyShift action_68
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (6) = happyShift action_2
action_66 (7) = happyShift action_25
action_66 (8) = happyShift action_26
action_66 (9) = happyShift action_27
action_66 (11) = happyShift action_28
action_66 (12) = happyShift action_29
action_66 (13) = happyShift action_30
action_66 (14) = happyShift action_4
action_66 (15) = happyShift action_31
action_66 (16) = happyShift action_32
action_66 (19) = happyShift action_5
action_66 (23) = happyShift action_6
action_66 (24) = happyShift action_7
action_66 (25) = happyShift action_8
action_66 (27) = happyShift action_9
action_66 (30) = happyShift action_10
action_66 (31) = happyShift action_11
action_66 (34) = happyShift action_12
action_66 (37) = happyShift action_13
action_66 (38) = happyShift action_14
action_66 (4) = happyGoto action_24
action_66 _ = happyReduce_15

action_67 (6) = happyShift action_2
action_67 (7) = happyShift action_25
action_67 (8) = happyShift action_26
action_67 (9) = happyShift action_27
action_67 (11) = happyShift action_28
action_67 (12) = happyShift action_29
action_67 (13) = happyShift action_30
action_67 (14) = happyShift action_4
action_67 (15) = happyShift action_31
action_67 (16) = happyShift action_32
action_67 (19) = happyShift action_5
action_67 (23) = happyShift action_6
action_67 (24) = happyShift action_7
action_67 (25) = happyFail []
action_67 (27) = happyShift action_9
action_67 (30) = happyShift action_10
action_67 (31) = happyShift action_11
action_67 (34) = happyShift action_12
action_67 (37) = happyShift action_13
action_67 (38) = happyShift action_14
action_67 (4) = happyGoto action_24
action_67 _ = happyReduce_13

action_68 _ = happyReduce_28

action_69 _ = happyReduce_27

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Subs happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maiores happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maior happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 6 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maior happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maiores happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 5 4 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pair happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_2  4 happyReduction_23
happyReduction_23 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (RPrimeiro happy_var_2
	)
happyReduction_23 _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  4 happyReduction_24
happyReduction_24 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (RSegundo happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_26 = happySpecReduce_1  5 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_27 = happyReduce 5 5 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 5 5 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 40 40 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSubs -> cont 8;
	TokenMul -> cont 9;
	TokenIgual -> cont 10;
	TokenAnd -> cont 11;
	TokenMaiores -> cont 12;
	TokenMaior -> cont 13;
	TokenNot -> cont 14;
	TokenEq -> cont 15;
	TokenOr -> cont 16;
	TokenLColchetes -> cont 17;
	TokenRColchetes -> cont 18;
	TokenLPair -> cont 19;
	TokenRPair -> cont 20;
	TokenVirgulas -> cont 21;
	TokenProjection -> cont 22;
	TokenTrue -> cont 23;
	TokenFalse -> cont 24;
	TokenIf -> cont 25;
	TokenIn -> cont 26;
	TokenLet -> cont 27;
	TokenThen -> cont 28;
	TokenElse -> cont 29;
	TokenVar happy_dollar_dollar -> cont 30;
	TokenLam -> cont 31;
	TokenColon -> cont 32;
	TokenArrow -> cont 33;
	TokenLParen -> cont 34;
	TokenRParen -> cont 35;
	TokenBoolean -> cont 36;
	TokenPrimeiro -> cont 37;
	TokenSegundo -> cont 38;
	TokenNumber -> cont 39;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 40 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $
