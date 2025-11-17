; generated from: ./sharedtests/dbernhard/null_update_global.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7317 to { i64, [0 x i64] }*)
@_global_arr7317 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 0 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7301 = alloca i64
  %_argv7303 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7301
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7303
  %_raw_array7305 = call i64* @oat_alloc_array(i64 3)
  %_array7306 = bitcast i64* %_raw_array7305 to { i64, [0 x i64] }*
  %_gep_lit7307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7306, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep_lit7307
  %_gep_lit7309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7306, i32 0, i32 1, i32 1
  store i64 11, i64* %_gep_lit7309
  %_gep_lit7311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7306, i32 0, i32 1, i32 2
  store i64 12, i64* %_gep_lit7311
  store { i64, [0 x i64] }* %_array7306, { i64, [0 x i64] }** @x
  %_load7314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_gep7315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7314, i32 0, i32 1, i32 2
  %_load7316 = load i64, i64* %_gep7315
  ret i64 %_load7316
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
