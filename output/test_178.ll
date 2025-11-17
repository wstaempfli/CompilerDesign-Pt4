; generated from: oatprograms/globals6.oat
target triple = "x86_64-unknown-linux"
@_str127 = global [7 x i8] c"hello!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc123 = alloca i64
  %_args124 = alloca { i64, [0 x i8*] }*
  %_s129 = alloca i8*
  store i64 %argc, i64* %_argc123
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args124
  %_strptr128 = bitcast [7 x i8]* @_str127 to i8*
  store i8* %_strptr128, i8** %_s129
  ret i64 15
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
