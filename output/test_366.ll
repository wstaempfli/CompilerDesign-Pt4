; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1498 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1498
  %_a1500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1498
  %_gep1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1500, i32 0, i32 1, i32 1
  %_load1502 = load i64, i64* %_gep1501
  ret i64 %_load1502
}

define i64 @g(i64 %x) {
  %_x1474 = alloca i64
  %_arr1478 = alloca { i64, [0 x i64] }*
  %_i1480 = alloca i64
  store i64 %x, i64* %_x1474
  %_raw_array1476 = call i64* @oat_alloc_array(i64 3)
  %_array1477 = bitcast i64* %_raw_array1476 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1477, { i64, [0 x i64] }** %_arr1478
  store i64 0, i64* %_i1480
  br label %_for_cond1482
_for_cond1482:
  %_i1485 = load i64, i64* %_i1480
  %_bop1486 = icmp slt i64 %_i1485, 3
  br i1 %_bop1486, label %_for_body1483, label %_for_exit1484
_for_body1483:
  %_x1487 = load i64, i64* %_x1474
  %_arr1488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1478
  %_i1489 = load i64, i64* %_i1480
  %_gep1490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1488, i32 0, i32 1, i64 %_i1489
  store i64 %_x1487, i64* %_gep1490
  %_i1492 = load i64, i64* %_i1480
  %_bop1493 = add i64 %_i1492, 1
  store i64 %_bop1493, i64* %_i1480
  br label %_for_cond1482
_for_exit1484:
  %_arr1495 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1478
  %_gep1496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1495, i32 0, i32 1, i32 1
  %_load1497 = load i64, i64* %_gep1496
  ret i64 %_load1497
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1398 = alloca i64
  %_argv1399 = alloca { i64, [0 x i8*] }*
  %_a1404 = alloca { i64, [0 x i64] }*
  %_i1406 = alloca i64
  %_arr1423 = alloca { i64, [0 x i64] }*
  %_i1425 = alloca i64
  %_arr01444 = alloca { i64, [0 x i64] }*
  %_i1446 = alloca i64
  store i64 %argc, i64* %_argc1398
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1399
  %_raw_array1402 = call i64* @oat_alloc_array(i64 3)
  %_array1403 = bitcast i64* %_raw_array1402 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1403, { i64, [0 x i64] }** %_a1404
  store i64 0, i64* %_i1406
  br label %_for_cond1408
_for_cond1408:
  %_i1411 = load i64, i64* %_i1406
  %_bop1412 = icmp slt i64 %_i1411, 3
  br i1 %_bop1412, label %_for_body1409, label %_for_exit1410
_for_body1409:
  %_i1413 = load i64, i64* %_i1406
  %_a1414 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1404
  %_i1415 = load i64, i64* %_i1406
  %_gep1416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1414, i32 0, i32 1, i64 %_i1415
  store i64 %_i1413, i64* %_gep1416
  %_i1418 = load i64, i64* %_i1406
  %_bop1419 = add i64 %_i1418, 1
  store i64 %_bop1419, i64* %_i1406
  br label %_for_cond1408
_for_exit1410:
  %_raw_array1421 = call i64* @oat_alloc_array(i64 4)
  %_array1422 = bitcast i64* %_raw_array1421 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1422, { i64, [0 x i64] }** %_arr1423
  store i64 0, i64* %_i1425
  br label %_for_cond1427
_for_cond1427:
  %_i1430 = load i64, i64* %_i1425
  %_bop1431 = icmp slt i64 %_i1430, 4
  br i1 %_bop1431, label %_for_body1428, label %_for_exit1429
_for_body1428:
  %_i1432 = load i64, i64* %_i1425
  %_i1433 = load i64, i64* %_i1425
  %_bop1434 = mul i64 %_i1432, %_i1433
  %_arr1435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1423
  %_i1436 = load i64, i64* %_i1425
  %_gep1437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1435, i32 0, i32 1, i64 %_i1436
  store i64 %_bop1434, i64* %_gep1437
  %_i1439 = load i64, i64* %_i1425
  %_bop1440 = add i64 %_i1439, 1
  store i64 %_bop1440, i64* %_i1425
  br label %_for_cond1427
_for_exit1429:
  %_raw_array1442 = call i64* @oat_alloc_array(i64 3)
  %_array1443 = bitcast i64* %_raw_array1442 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1443, { i64, [0 x i64] }** %_arr01444
  store i64 0, i64* %_i1446
  br label %_for_cond1448
_for_cond1448:
  %_i1451 = load i64, i64* %_i1446
  %_bop1452 = icmp slt i64 %_i1451, 3
  br i1 %_bop1452, label %_for_body1449, label %_for_exit1450
_for_body1449:
  %_i1453 = load i64, i64* %_i1446
  %_bop1454 = mul i64 2, %_i1453
  %_arr01455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01444
  %_i1456 = load i64, i64* %_i1446
  %_gep1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01455, i32 0, i32 1, i64 %_i1456
  store i64 %_bop1454, i64* %_gep1457
  %_i1459 = load i64, i64* %_i1446
  %_bop1460 = add i64 %_i1459, 1
  store i64 %_bop1460, i64* %_i1446
  br label %_for_cond1448
_for_exit1450:
  %_arr1462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1423
  %_gep1463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1462, i32 0, i32 1, i32 3
  %_load1464 = load i64, i64* %_gep1463
  %_a1465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1404
  %_gep1466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1465, i32 0, i32 1, i32 1
  %_load1467 = load i64, i64* %_gep1466
  %_bop1468 = add i64 %_load1464, %_load1467
  %_arr01469 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01444
  %_call1470 = call i64 @f({ i64, [0 x i64] }* %_arr01469)
  %_bop1471 = add i64 %_bop1468, %_call1470
  %_call1472 = call i64 @g(i64 4)
  %_bop1473 = add i64 %_bop1471, %_call1472
  ret i64 %_bop1473
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
