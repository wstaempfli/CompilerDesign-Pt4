; generated from: ./sharedtests/nicdard/equality.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7460 = alloca i64
  %_argv7462 = alloca { i64, [0 x i8*] }*
  %_x7464 = alloca i64
  %_y7468 = alloca i1
  store i64 %argc, i64* %_argc7460
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7462
  store i64 10, i64* %_x7464
  %_load7466 = load i64, i64* %_x7464
  %_bop7467 = icmp eq i64 %_load7466, 10
  store i1 %_bop7467, i1* %_y7468
  %_load7473 = load i1, i1* %_y7468
  br i1 %_load7473, label %_then7470, label %_else7471
_then7470:
  ret i64 1
_else7471:
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
