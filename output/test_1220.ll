; generated from: ./sharedtests/nicdard/greatereq.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7516 = alloca i64
  %_argv7518 = alloca { i64, [0 x i8*] }*
  %_x7520 = alloca i64
  %_y7524 = alloca i1
  store i64 %argc, i64* %_argc7516
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7518
  store i64 10, i64* %_x7520
  %_load7522 = load i64, i64* %_x7520
  %_bop7523 = icmp sge i64 %_load7522, 10
  store i1 %_bop7523, i1* %_y7524
  %_load7529 = load i1, i1* %_y7524
  br i1 %_load7529, label %_then7526, label %_else7527
_then7526:
  ret i64 1
_else7527:
  ret i64 0
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
