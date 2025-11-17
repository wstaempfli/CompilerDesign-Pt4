; generated from: ./sharedtests/dbernhard/str_of_arr.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6338 = alloca i64
  %_argv6339 = alloca { i64, [0 x i8*] }*
  %_x6350 = alloca { i64, [0 x i64] }*
  %_z6354 = alloca i8*
  store i64 %argc, i64* %_argc6338
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6339
  %_raw_array6342 = call i64* @oat_alloc_array(i64 3)
  %_array6343 = bitcast i64* %_raw_array6342 to { i64, [0 x i64] }*
  %_gep_lit6344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6343, i32 0, i32 1, i32 0
  store i64 98, i64* %_gep_lit6344
  %_gep_lit6346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6343, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep_lit6346
  %_gep_lit6348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6343, i32 0, i32 1, i32 2
  store i64 100, i64* %_gep_lit6348
  store { i64, [0 x i64] }* %_array6343, { i64, [0 x i64] }** %_x6350
  %_x6352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x6350
  %_call6353 = call i8* @string_of_array({ i64, [0 x i64] }* %_x6352)
  store i8* %_call6353, i8** %_z6354
  %_z6356 = load i8*, i8** %_z6354
  call void @print_string(i8* %_z6356)
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
