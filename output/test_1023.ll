; generated from: ./sharedtests/dbernhard/arr_of_string.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6310 = alloca i64
  %_argv6311 = alloca { i64, [0 x i8*] }*
  %_arr6318 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc6310
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6311
  %_argv6314 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv6311
  %_gep6315 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv6314, i32 0, i32 1, i32 1
  %_load6316 = load i8*, i8** %_gep6315
  %_call6317 = call { i64, [0 x i64] }* @array_of_string(i8* %_load6316)
  store { i64, [0 x i64] }* %_call6317, { i64, [0 x i64] }** %_arr6318
  %_arr6320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6318
  %_gep6321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6320, i32 0, i32 1, i32 1
  %_load6322 = load i64, i64* %_gep6321
  ret i64 %_load6322
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
