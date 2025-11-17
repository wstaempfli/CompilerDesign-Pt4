; generated from: ./sharedtests/nicdard/and2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7600 = alloca i64
  %_argv7602 = alloca { i64, [0 x i8*] }*
  %_x7604 = alloca i64
  %_a7608 = alloca i1
  %_b7612 = alloca i1
  store i64 %argc, i64* %_argc7600
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7602
  store i64 10, i64* %_x7604
  %_load7606 = load i64, i64* %_x7604
  %_bop7607 = icmp sge i64 %_load7606, 10
  store i1 %_bop7607, i1* %_a7608
  %_load7610 = load i64, i64* %_x7604
  %_bop7611 = icmp slt i64 %_load7610, 10
  store i1 %_bop7611, i1* %_b7612
  %_load7617 = load i1, i1* %_a7608
  br i1 %_load7617, label %_then7614, label %_else7615
_then7614:
  %_load7618 = load i64, i64* %_x7604
  %_bop7619 = add i64 %_load7618, 1
  store i64 %_bop7619, i64* %_x7604
  br label %_join7616
_else7615:
  br label %_join7616
_join7616:
  %_load7624 = load i1, i1* %_b7612
  br i1 %_load7624, label %_then7621, label %_else7622
_then7621:
  %_load7625 = load i64, i64* %_x7604
  %_bop7626 = add i64 %_load7625, 2
  store i64 %_bop7626, i64* %_x7604
  br label %_join7623
_else7622:
  br label %_join7623
_join7623:
  %_load7631 = load i1, i1* %_a7608
  %_load7632 = load i1, i1* %_b7612
  %_bop7633 = and i1 %_load7631, %_load7632
  br i1 %_bop7633, label %_then7628, label %_else7629
_then7628:
  %_load7634 = load i64, i64* %_x7604
  %_bop7635 = add i64 %_load7634, 15
  store i64 %_bop7635, i64* %_x7604
  br label %_join7630
_else7629:
  br label %_join7630
_join7630:
  %_load7637 = load i64, i64* %_x7604
  ret i64 %_load7637
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
