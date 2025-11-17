; generated from: ./sharedtests/nicdard/shoisted.oat
target triple = "x86_64-unknown-linux"
@_str7729 = global [13 x i8] c"local string\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7725 = alloca i64
  %_argv7726 = alloca { i64, [0 x i8*] }*
  %_s7731 = alloca i8*
  store i64 %argc, i64* %_argc7725
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7726
  %_strptr7730 = bitcast [13 x i8]* @_str7729 to i8*
  store i8* %_strptr7730, i8** %_s7731
  %_s7733 = load i8*, i8** %_s7731
  call void @print_string(i8* %_s7733)
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
