; generated from: ./sharedtests/dbernhard/null_update.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7282 = alloca i64
  %_argv7284 = alloca { i64, [0 x i8*] }*
  %_x7286 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc7282
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7284
  store { i64, [0 x i64] }* null, { i64, [0 x i64] }** %_x7286
  %_raw_array7288 = call i64* @oat_alloc_array(i64 3)
  %_array7289 = bitcast i64* %_raw_array7288 to { i64, [0 x i64] }*
  %_gep_lit7290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7289, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep_lit7290
  %_gep_lit7292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7289, i32 0, i32 1, i32 1
  store i64 11, i64* %_gep_lit7292
  %_gep_lit7294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7289, i32 0, i32 1, i32 2
  store i64 12, i64* %_gep_lit7294
  store { i64, [0 x i64] }* %_array7289, { i64, [0 x i64] }** %_x7286
  %_load7297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7286
  %_gep7298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7297, i32 0, i32 1, i32 2
  %_load7299 = load i64, i64* %_gep7298
  ret i64 %_load7299
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
