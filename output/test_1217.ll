; generated from: ./sharedtests/nicdard/inequality.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7474 = alloca i64
  %_argv7476 = alloca { i64, [0 x i8*] }*
  %_x7478 = alloca i64
  %_y7482 = alloca i1
  store i64 %argc, i64* %_argc7474
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7476
  store i64 10, i64* %_x7478
  %_load7480 = load i64, i64* %_x7478
  %_bop7481 = icmp ne i64 %_load7480, 10
  store i1 %_bop7481, i1* %_y7482
  %_load7487 = load i1, i1* %_y7482
  br i1 %_load7487, label %_then7484, label %_else7485
_then7484:
  ret i64 1
_else7485:
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
