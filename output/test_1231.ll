; generated from: ./sharedtests/nicdard/shoisted2.oat
target triple = "x86_64-unknown-linux"
@_str7739 = global [13 x i8] c"local string\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7735 = alloca i64
  %_argv7737 = alloca { i64, [0 x i8*] }*
  %_s7741 = alloca i8*
  store i64 %argc, i64* %_argc7735
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7737
  %_strptr7740 = bitcast [13 x i8]* @_str7739 to i8*
  store i8* %_strptr7740, i8** %_s7741
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
