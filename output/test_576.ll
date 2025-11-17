; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1

define i64 @f({ i64, [0 x i64] }* %arr) {
  %_arr1493 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1493
  %_arr1495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1493
  %_gep1496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1495, i32 0, i32 1, i32 3
  %_load1497 = load i64, i64* %_gep1496
  ret i64 %_load1497
}

define { i64, [0 x i64] }* @g() {
  %_arr1490 = alloca { i64, [0 x i64] }*
  %_raw_array1480 = call i64* @oat_alloc_array(i64 4)
  %_array1481 = bitcast i64* %_raw_array1480 to { i64, [0 x i64] }*
  %_gep_lit1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1481, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1482
  %_gep_lit1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1481, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1484
  %_gep_lit1486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1481, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1486
  %_gep_lit1488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1481, i32 0, i32 1, i32 3
  store i64 99, i64* %_gep_lit1488
  store { i64, [0 x i64] }* %_array1481, { i64, [0 x i64] }** %_arr1490
  %_arr1492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1490
  ret { i64, [0 x i64] }* %_arr1492
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1379 = alloca i64
  %_argv1380 = alloca { i64, [0 x i8*] }*
  %_arr11391 = alloca { i64, [0 x i64] }*
  %_arr21425 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1427 = alloca i64
  %_arr41430 = alloca { i64, [0 x i64] }*
  %_arr31442 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1379
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1380
  %_raw_array1383 = call i64* @oat_alloc_array(i64 3)
  %_array1384 = bitcast i64* %_raw_array1383 to { i64, [0 x i64] }*
  %_gep_lit1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1385
  %_gep_lit1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1387
  %_gep_lit1389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1389
  store { i64, [0 x i64] }* %_array1384, { i64, [0 x i64] }** %_arr11391
  %_raw_array1393 = call i64* @oat_alloc_array(i64 3)
  %_array1394 = bitcast i64* %_raw_array1393 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1395 = call i64* @oat_alloc_array(i64 3)
  %_array1396 = bitcast i64* %_raw_array1395 to { i64, [0 x i64] }*
  %_gep_lit1397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1396, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1397
  %_gep_lit1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1396, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep_lit1399
  %_gep_lit1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1396, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1401
  %_gep_lit1403 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1394, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1396, { i64, [0 x i64] }** %_gep_lit1403
  %_raw_array1405 = call i64* @oat_alloc_array(i64 3)
  %_array1406 = bitcast i64* %_raw_array1405 to { i64, [0 x i64] }*
  %_gep_lit1407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1406, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1407
  %_gep_lit1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1406, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1409
  %_gep_lit1411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1406, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1411
  %_gep_lit1413 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1394, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1406, { i64, [0 x i64] }** %_gep_lit1413
  %_raw_array1415 = call i64* @oat_alloc_array(i64 3)
  %_array1416 = bitcast i64* %_raw_array1415 to { i64, [0 x i64] }*
  %_gep_lit1417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1416, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1417
  %_gep_lit1419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1416, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep_lit1419
  %_gep_lit1421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1416, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1421
  %_gep_lit1423 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1394, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1416, { i64, [0 x i64] }** %_gep_lit1423
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1394, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21425
  store i64 1, i64* %_c1427
  %_call1429 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_call1429, { i64, [0 x i64] }** %_arr41430
  %_raw_array1432 = call i64* @oat_alloc_array(i64 4)
  %_array1433 = bitcast i64* %_raw_array1432 to { i64, [0 x i64] }*
  %_gep_lit1434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1433, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit1434
  %_gep_lit1436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1433, i32 0, i32 1, i32 1
  store i64 99, i64* %_gep_lit1436
  %_gep_lit1438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1433, i32 0, i32 1, i32 2
  store i64 99, i64* %_gep_lit1438
  %_gep_lit1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1433, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep_lit1440
  store { i64, [0 x i64] }* %_array1433, { i64, [0 x i64] }** %_arr31442
  %_c1444 = load i64, i64* %_c1427
  %_i1445 = load i64, i64* @i
  %_bop1446 = add i64 %_c1444, %_i1445
  store i64 %_bop1446, i64* %_c1427
  %_c1448 = load i64, i64* %_c1427
  %_arr11449 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11391
  %_gep1450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11449, i32 0, i32 1, i32 1
  %_load1451 = load i64, i64* %_gep1450
  %_bop1452 = add i64 %_c1448, %_load1451
  store i64 %_bop1452, i64* %_c1427
  %_c1454 = load i64, i64* %_c1427
  %_arr21455 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21425
  %_gep1456 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21455, i32 0, i32 1, i32 1
  %_load1457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1456
  %_gep1458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1457, i32 0, i32 1, i32 1
  %_load1459 = load i64, i64* %_gep1458
  %_bop1460 = add i64 %_c1454, %_load1459
  store i64 %_bop1460, i64* %_c1427
  %_c1462 = load i64, i64* %_c1427
  %_arr31463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31442
  %_gep1464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31463, i32 0, i32 1, i32 3
  %_load1465 = load i64, i64* %_gep1464
  %_bop1466 = add i64 %_c1462, %_load1465
  store i64 %_bop1466, i64* %_c1427
  %_c1468 = load i64, i64* %_c1427
  %_arr31469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31442
  %_call1470 = call i64 @f({ i64, [0 x i64] }* %_arr31469)
  %_bop1471 = add i64 %_c1468, %_call1470
  store i64 %_bop1471, i64* %_c1427
  %_c1473 = load i64, i64* %_c1427
  %_arr41474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41430
  %_gep1475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41474, i32 0, i32 1, i32 1
  %_load1476 = load i64, i64* %_gep1475
  %_bop1477 = add i64 %_c1473, %_load1476
  store i64 %_bop1477, i64* %_c1427
  %_c1479 = load i64, i64* %_c1427
  ret i64 %_c1479
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
