; generated from: ./sharedtests/nicdard/or2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7672 = alloca i64
  %_argv7674 = alloca { i64, [0 x i8*] }*
  %_x7676 = alloca i64
  %_a7680 = alloca i1
  %_b7684 = alloca i1
  store i64 %argc, i64* %_argc7672
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7674
  store i64 10, i64* %_x7676
  %_load7678 = load i64, i64* %_x7676
  %_bop7679 = icmp eq i64 %_load7678, 10
  store i1 %_bop7679, i1* %_a7680
  %_load7682 = load i64, i64* %_x7676
  %_bop7683 = icmp ne i64 %_load7682, 10
  store i1 %_bop7683, i1* %_b7684
  %_load7689 = load i1, i1* %_a7680
  br i1 %_load7689, label %_then7686, label %_else7687
_then7686:
  %_load7690 = load i64, i64* %_x7676
  %_bop7691 = add i64 %_load7690, 1
  store i64 %_bop7691, i64* %_x7676
  br label %_join7688
_else7687:
  br label %_join7688
_join7688:
  %_load7696 = load i1, i1* %_b7684
  br i1 %_load7696, label %_then7693, label %_else7694
_then7693:
  %_load7697 = load i64, i64* %_x7676
  %_bop7698 = add i64 %_load7697, 2
  store i64 %_bop7698, i64* %_x7676
  br label %_join7695
_else7694:
  br label %_join7695
_join7695:
  %_load7703 = load i1, i1* %_a7680
  %_load7704 = load i1, i1* %_b7684
  %_bop7705 = or i1 %_load7703, %_load7704
  br i1 %_bop7705, label %_then7700, label %_else7701
_then7700:
  %_load7706 = load i64, i64* %_x7676
  %_bop7707 = add i64 %_load7706, 15
  store i64 %_bop7707, i64* %_x7676
  br label %_join7702
_else7701:
  br label %_join7702
_join7702:
  %_load7709 = load i64, i64* %_x7676
  ret i64 %_load7709
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
