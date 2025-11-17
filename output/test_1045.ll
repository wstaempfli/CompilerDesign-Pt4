; generated from: ./sharedtests/dbernhard/ret_null.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @call_empty() {
  ret { i64, [0 x i64] }* null
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7334 = alloca i64
  %_argv7335 = alloca { i64, [0 x i8*] }*
  %_arr7339 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc7334
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7335
  %_call7338 = call { i64, [0 x i64] }* @call_empty()
  store { i64, [0 x i64] }* %_call7338, { i64, [0 x i64] }** %_arr7339
  %_raw_array7341 = call i64* @oat_alloc_array(i64 10)
  %_array7342 = bitcast i64* %_raw_array7341 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7342, { i64, [0 x i64] }** %_arr7339
  %_arr7344 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7339
  %_gep7345 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr7344, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep7345
  %_arr7347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7339
  %_gep7348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr7347, i32 0, i32 1, i32 1
  %_load7349 = load i64, i64* %_gep7348
  ret i64 %_load7349
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
