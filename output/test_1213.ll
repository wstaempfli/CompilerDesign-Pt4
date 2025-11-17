; generated from: ./sharedtests/nicdard/assign.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7422 = alloca i64
  %_argv7424 = alloca { i64, [0 x i8*] }*
  %_x7426 = alloca i64
  store i64 %argc, i64* %_argc7422
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7424
  store i64 10, i64* %_x7426
  %_load7428 = load i64, i64* %_x7426
  %_uop7429 = sub i64 0, %_load7428
  store i64 %_uop7429, i64* %_x7426
  %_load7431 = load i64, i64* %_x7426
  ret i64 %_load7431
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
