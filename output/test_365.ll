; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1393 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1393
  %_arr1395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1393
  %_gep1396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1395, i32 0, i32 1, i32 3
  %_load1397 = load i64, i64* %_gep1396
  ret i64 %_load1397
}

define { i64, [0 x i64] }* @g() {
  %_arr1390 = alloca { i64, [0 x i64] }*
  %_raw_array1380 = call i64* @oat_alloc_array(i64 4)
  %_array1381 = bitcast i64* %_raw_array1380 to { i64, [0 x i64] }*
  %_gep_lit1382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1381, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1382
  %_gep_lit1384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1381, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1384
  %_gep_lit1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1381, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1386
  %_gep_lit1388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1381, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep_lit1388
  store { i64, [0 x i64] }* %_array1381, { i64, [0 x i64] }** %_arr1390
  %_arr1392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1390
  ret { i64, [0 x i64] }* %_arr1392
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1279 = alloca i64
  %_argv1280 = alloca { i64, [0 x i8*] }*
  %_arr11291 = alloca { i64, [0 x i64] }*
  %_arr21325 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1327 = alloca i64
  %_arr41330 = alloca { i64, [0 x i64] }*
  %_arr31342 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1279
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1280
  %_raw_array1283 = call i64* @oat_alloc_array(i64 3)
  %_array1284 = bitcast i64* %_raw_array1283 to { i64, [0 x i64] }*
  %_gep_lit1285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1285
  %_gep_lit1287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1287
  %_gep_lit1289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1289
  store { i64, [0 x i64] }* %_array1284, { i64, [0 x i64] }** %_arr11291
  %_raw_array1293 = call i64* @oat_alloc_array(i64 3)
  %_array1294 = bitcast i64* %_raw_array1293 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1295 = call i64* @oat_alloc_array(i64 3)
  %_array1296 = bitcast i64* %_raw_array1295 to { i64, [0 x i64] }*
  %_gep_lit1297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1296, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1297
  %_gep_lit1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1296, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep_lit1299
  %_gep_lit1301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1296, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1301
  %_gep_lit1303 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1294, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1296, { i64, [0 x i64] }** %_gep_lit1303
  %_raw_array1305 = call i64* @oat_alloc_array(i64 3)
  %_array1306 = bitcast i64* %_raw_array1305 to { i64, [0 x i64] }*
  %_gep_lit1307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1306, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1307
  %_gep_lit1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1306, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1309
  %_gep_lit1311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1306, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1311
  %_gep_lit1313 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1294, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1306, { i64, [0 x i64] }** %_gep_lit1313
  %_raw_array1315 = call i64* @oat_alloc_array(i64 3)
  %_array1316 = bitcast i64* %_raw_array1315 to { i64, [0 x i64] }*
  %_gep_lit1317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1317
  %_gep_lit1319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep_lit1319
  %_gep_lit1321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1316, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1321
  %_gep_lit1323 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1294, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1316, { i64, [0 x i64] }** %_gep_lit1323
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1294, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21325
  store i64 1, i64* %_c1327
  %_call1329 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_call1329, { i64, [0 x i64] }** %_arr41330
  %_raw_array1332 = call i64* @oat_alloc_array(i64 4)
  %_array1333 = bitcast i64* %_raw_array1332 to { i64, [0 x i64] }*
  %_gep_lit1334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1334
  %_gep_lit1336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep_lit1336
  %_gep_lit1338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1338
  %_gep_lit1340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep_lit1340
  store { i64, [0 x i64] }* %_array1333, { i64, [0 x i64] }** %_arr31342
  %_c1344 = load i64, i64* %_c1327
  %_i1345 = load i64, i64* @i
  %_bop1346 = add i64 %_c1344, %_i1345
  store i64 %_bop1346, i64* %_c1327
  %_c1348 = load i64, i64* %_c1327
  %_arr11349 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11291
  %_gep1350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11349, i32 0, i32 1, i32 1
  %_load1351 = load i64, i64* %_gep1350
  %_bop1352 = add i64 %_c1348, %_load1351
  store i64 %_bop1352, i64* %_c1327
  %_c1354 = load i64, i64* %_c1327
  %_arr21355 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21325
  %_gep1356 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21355, i32 0, i32 1, i32 1
  %_load1357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1356
  %_gep1358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1357, i32 0, i32 1, i32 1
  %_load1359 = load i64, i64* %_gep1358
  %_bop1360 = add i64 %_c1354, %_load1359
  store i64 %_bop1360, i64* %_c1327
  %_c1362 = load i64, i64* %_c1327
  %_arr31363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31342
  %_gep1364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31363, i32 0, i32 1, i32 3
  %_load1365 = load i64, i64* %_gep1364
  %_bop1366 = add i64 %_c1362, %_load1365
  store i64 %_bop1366, i64* %_c1327
  %_c1368 = load i64, i64* %_c1327
  %_arr31369 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31342
  %_call1370 = call i64 @f({ i64, [0 x i64] }* %_arr31369)
  %_bop1371 = add i64 %_c1368, %_call1370
  store i64 %_bop1371, i64* %_c1327
  %_c1373 = load i64, i64* %_c1327
  %_arr41374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41330
  %_gep1375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41374, i32 0, i32 1, i32 1
  %_load1376 = load i64, i64* %_gep1375
  %_bop1377 = add i64 %_c1373, %_load1376
  store i64 %_bop1377, i64* %_c1327
  %_c1379 = load i64, i64* %_c1327
  ret i64 %_c1379
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
