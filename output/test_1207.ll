; generated from: ./sharedtests/dbernhard/update_global.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [0 x i64] }* @_global_arr7388 to { i64, [0 x i64] }*)
@_global_arr7388 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7372 = alloca i64
  %_argv7374 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7372
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7374
  %_raw_array7376 = call i64* @oat_alloc_array(i64 3)
  %_array7377 = bitcast i64* %_raw_array7376 to { i64, [0 x i64] }*
  %_gep_lit7378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7377, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep_lit7378
  %_gep_lit7380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7377, i32 0, i32 1, i32 1
  store i64 11, i64* %_gep_lit7380
  %_gep_lit7382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7377, i32 0, i32 1, i32 2
  store i64 12, i64* %_gep_lit7382
  store { i64, [0 x i64] }* %_array7377, { i64, [0 x i64] }** @x
  %_load7385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_gep7386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7385, i32 0, i32 1, i32 2
  %_load7387 = load i64, i64* %_gep7386
  ret i64 %_load7387
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
