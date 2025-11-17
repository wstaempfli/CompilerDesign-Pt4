; generated from: ./sharedtests/nicdard/and1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7566 = alloca i64
  %_argv7568 = alloca { i64, [0 x i8*] }*
  %_x7570 = alloca i64
  %_a7572 = alloca i1
  %_b7574 = alloca i1
  store i64 %argc, i64* %_argc7566
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7568
  store i64 10, i64* %_x7570
  store i1 1, i1* %_a7572
  store i1 0, i1* %_b7574
  %_load7579 = load i1, i1* %_a7572
  br i1 %_load7579, label %_then7576, label %_else7577
_then7576:
  %_load7580 = load i64, i64* %_x7570
  %_bop7581 = add i64 %_load7580, 1
  store i64 %_bop7581, i64* %_x7570
  br label %_join7578
_else7577:
  br label %_join7578
_join7578:
  %_load7586 = load i1, i1* %_b7574
  br i1 %_load7586, label %_then7583, label %_else7584
_then7583:
  %_load7587 = load i64, i64* %_x7570
  %_bop7588 = add i64 %_load7587, 2
  store i64 %_bop7588, i64* %_x7570
  br label %_join7585
_else7584:
  br label %_join7585
_join7585:
  %_load7593 = load i1, i1* %_a7572
  %_load7594 = load i1, i1* %_b7574
  %_bop7595 = and i1 %_load7593, %_load7594
  br i1 %_bop7595, label %_then7590, label %_else7591
_then7590:
  %_load7596 = load i64, i64* %_x7570
  %_bop7597 = add i64 %_load7596, 15
  store i64 %_bop7597, i64* %_x7570
  br label %_join7592
_else7591:
  br label %_join7592
_join7592:
  %_load7599 = load i64, i64* %_x7570
  ret i64 %_load7599
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
