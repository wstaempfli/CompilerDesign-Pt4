; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc344 = alloca i64
  %_argv345 = alloca { i64, [0 x i8*] }*
  %_a354 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc344
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv345
  %_raw_array348 = call i64* @oat_alloc_array(i64 2)
  %_array349 = bitcast i64* %_raw_array348 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep350
  %_gep350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array349, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep352
  %_gep352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array349, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array349, { i64, [0 x i64] }** %_a354
  %_a356 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a354
  %_load358 = load i64, i64* %_gep_ptr357
  %_gep_ptr357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a356, i32 0, i32 1, i32 1
  ret i64 %_load358
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
