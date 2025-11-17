; generated from: ./sharedtests/nicdard/or1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7638 = alloca i64
  %_argv7639 = alloca { i64, [0 x i8*] }*
  %_x7642 = alloca i64
  %_a7644 = alloca i1
  %_b7646 = alloca i1
  store i64 %argc, i64* %_argc7638
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7639
  store i64 10, i64* %_x7642
  store i1 1, i1* %_a7644
  store i1 0, i1* %_b7646
  %_a7651 = load i1, i1* %_a7644
  br i1 %_a7651, label %_then7648, label %_else7649
_then7648:
  %_x7652 = load i64, i64* %_x7642
  %_bop7653 = add i64 %_x7652, 1
  store i64 %_bop7653, i64* %_x7642
  br label %_join7650
_else7649:
  br label %_join7650
_join7650:
  %_b7658 = load i1, i1* %_b7646
  br i1 %_b7658, label %_then7655, label %_else7656
_then7655:
  %_x7659 = load i64, i64* %_x7642
  %_bop7660 = add i64 %_x7659, 2
  store i64 %_bop7660, i64* %_x7642
  br label %_join7657
_else7656:
  br label %_join7657
_join7657:
  %_a7665 = load i1, i1* %_a7644
  %_b7666 = load i1, i1* %_b7646
  %_bop7667 = or i1 %_a7665, %_b7666
  br i1 %_bop7667, label %_then7662, label %_else7663
_then7662:
  %_x7668 = load i64, i64* %_x7642
  %_bop7669 = add i64 %_x7668, 15
  store i64 %_bop7669, i64* %_x7642
  br label %_join7664
_else7663:
  br label %_join7664
_join7664:
  %_x7671 = load i64, i64* %_x7642
  ret i64 %_x7671
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
