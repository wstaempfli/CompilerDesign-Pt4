; generated from: ./sharedtests/dbernhard/null_update_global2.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7318 = alloca i64
  %_argv7319 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7318
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7319
  %_raw_array7322 = call i64* @oat_alloc_array(i64 3)
  %_array7323 = bitcast i64* %_raw_array7322 to { i64, [0 x i64] }*
  %_gep_lit7324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7323, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep_lit7324
  %_gep_lit7326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7323, i32 0, i32 1, i32 1
  store i64 11, i64* %_gep_lit7326
  %_gep_lit7328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7323, i32 0, i32 1, i32 2
  store i64 12, i64* %_gep_lit7328
  store { i64, [0 x i64] }* %_array7323, { i64, [0 x i64] }** @x
  %_x7331 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_gep7332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x7331, i32 0, i32 1, i32 2
  %_load7333 = load i64, i64* %_gep7332
  ret i64 %_load7333
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
