; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str2922 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2918 = alloca i64
  %_argv2919 = alloca { i64, [0 x i8*] }*
  %_str2924 = alloca i8*
  store i64 %argc, i64* %_argc2918
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2919
  %_str2923 = bitcast [13 x i8]* @_str2922 to i8*
  store i8* %_str2923, i8** %_str2924
  %_str2926 = load i8*, i8** %_str2924
  call void @print_string(i8* %_str2926)
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
