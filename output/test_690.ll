; generated from: ./sharedtests/nicdard/function.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7930 = alloca i64
  %_argv7931 = alloca { i64, [0 x i8*] }*
  %_x7935 = alloca i64
  store i64 %argc, i64* %_argc7930
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7931
  %_call7934 = call i64 @abs2()
  store i64 %_call7934, i64* %_x7935
  %_x7937 = load i64, i64* %_x7935
  %_call7938 = call i64 @abs()
  %_bop7939 = add i64 %_x7937, %_call7938
  store i64 %_bop7939, i64* %_x7935
  %_x7941 = load i64, i64* %_x7935
  ret i64 %_x7941
}

define i64 @abs() {
  br i1 1, label %_then7927, label %_else7928
_then7927:
  ret i64 1
_else7928:
  ret i64 0
}

define i64 @abs2() {
  br i1 1, label %_then7921, label %_else7922
_then7921:
  ret i64 0
_else7922:
  br i1 0, label %_then7924, label %_else7925
_then7924:
  ret i64 1
_else7925:
  ret i64 7
_join7926:
  br label %_join7923
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
