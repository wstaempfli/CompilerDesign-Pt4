; generated from: ./sharedtests/nicdard/less.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7502 = alloca i64
  %_argv7503 = alloca { i64, [0 x i8*] }*
  %_x7506 = alloca i64
  %_y7510 = alloca i1
  store i64 %argc, i64* %_argc7502
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7503
  store i64 10, i64* %_x7506
  %_x7508 = load i64, i64* %_x7506
  %_bop7509 = icmp slt i64 %_x7508, 10
  store i1 %_bop7509, i1* %_y7510
  %_y7515 = load i1, i1* %_y7510
  br i1 %_y7515, label %_then7512, label %_else7513
_then7512:
  ret i64 1
_else7513:
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
