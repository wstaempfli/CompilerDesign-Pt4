; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1376 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1376
  %_load1378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1376
  ret { i64, [0 x i64] }* %_load1378
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1339 = alloca i64
  %_argv1341 = alloca { i64, [0 x i8*] }*
  %_garr1365 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1371 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1339
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1341
  %_raw_array1343 = call i64* @oat_alloc_array(i64 2)
  %_array1344 = bitcast i64* %_raw_array1343 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1345 = call i64* @oat_alloc_array(i64 3)
  %_array1346 = bitcast i64* %_raw_array1345 to { i64, [0 x i64] }*
  %_gep_lit1347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1346, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1347
  %_gep_lit1349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1346, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1349
  %_gep_lit1351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1346, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit1351
  %_gep_lit1353 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1344, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1346, { i64, [0 x i64] }** %_gep_lit1353
  %_raw_array1355 = call i64* @oat_alloc_array(i64 3)
  %_array1356 = bitcast i64* %_raw_array1355 to { i64, [0 x i64] }*
  %_gep_lit1357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep_lit1357
  %_gep_lit1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep_lit1359
  %_gep_lit1361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1356, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep_lit1361
  %_gep_lit1363 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1344, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1356, { i64, [0 x i64] }** %_gep_lit1363
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1344, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1365
  %_load1367 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1365
  %_gep1368 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load1367, i32 0, i32 1, i32 1
  %_load1369 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1368
  %_call1370 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_load1369)
  store { i64, [0 x i64] }* %_call1370, { i64, [0 x i64] }** %_arr1371
  %_load1373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1371
  %_gep1374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1373, i32 0, i32 1, i32 1
  %_load1375 = load i64, i64* %_gep1374
  ret i64 %_load1375
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
