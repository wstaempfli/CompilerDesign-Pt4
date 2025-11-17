; generated from: ./sharedtests/dbernhard/array_indexing2.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr6298 to { i64, [0 x i64] }*)
@_global_arr6298 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr6297 to { i64, [0 x i64] }*)
@_global_arr6297 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6272 = alloca i64
  %_argv6273 = alloca { i64, [0 x i8*] }*
  %_darr6284 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc6272
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6273
  %_raw_array6276 = call i64* @oat_alloc_array(i64 2)
  %_array6277 = bitcast i64* %_raw_array6276 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr26278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_gep_lit6279 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6277, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_arr26278, { i64, [0 x i64] }** %_gep_lit6279
  %_arr6281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_gep_lit6282 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6277, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_arr6281, { i64, [0 x i64] }** %_gep_lit6282
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6277, { i64, [0 x { i64, [0 x i64] }*] }** %_darr6284
  %_darr6286 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_darr6284
  %_gep6287 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_darr6286, i32 0, i32 1, i32 0
  %_load6288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6287
  %_gep6289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6288, i32 0, i32 1, i32 1
  %_load6290 = load i64, i64* %_gep6289
  %_darr6291 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_darr6284
  %_gep6292 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_darr6291, i32 0, i32 1, i32 1
  %_load6293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6292
  %_gep6294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6293, i32 0, i32 1, i32 2
  %_load6295 = load i64, i64* %_gep6294
  %_bop6296 = add i64 %_load6290, %_load6295
  ret i64 %_bop6296
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
