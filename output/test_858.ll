; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1310 = alloca i64
  %_argv1311 = alloca { i64, [0 x i8*] }*
  %_arr1332 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1310
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1311
  %_raw_array1314 = call i64* @oat_alloc_array(i64 2)
  %_array1315 = bitcast i64* %_raw_array1314 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1316 = call i64* @oat_alloc_array(i64 2)
  %_array1317 = bitcast i64* %_raw_array1316 to { i64, [0 x i64] }*
  %_gep_lit1318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1317, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1318
  %_gep_lit1320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1317, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1320
  %_gep_lit1322 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1315, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1317, { i64, [0 x i64] }** %_gep_lit1322
  %_raw_array1324 = call i64* @oat_alloc_array(i64 2)
  %_array1325 = bitcast i64* %_raw_array1324 to { i64, [0 x i64] }*
  %_gep_lit1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1325, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1326
  %_gep_lit1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1325, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1328
  %_gep_lit1330 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1315, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1325, { i64, [0 x i64] }** %_gep_lit1330
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1315, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1332
  %_arr1334 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1332
  %_gep1335 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1334, i32 0, i32 1, i32 1
  %_load1336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1335
  %_gep1337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1336, i32 0, i32 1, i32 1
  %_load1338 = load i64, i64* %_gep1337
  ret i64 %_load1338
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
