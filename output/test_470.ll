; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %a) {
  %_a1598 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a1598
  %_a1600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1598
  %_gep1601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1600, i32 0, i32 1, i32 1
  %_load1602 = load i64, i64* %_gep1601
  ret i64 %_load1602
}

define i64 @g(i64 %x) {
  %_x1574 = alloca i64
  %_arr1578 = alloca { i64, [0 x i64] }*
  %_i1580 = alloca i64
  store i64 %x, i64* %_x1574
  %_raw_array1576 = call i64* @oat_alloc_array(i64 3)
  %_array1577 = bitcast i64* %_raw_array1576 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1577, { i64, [0 x i64] }** %_arr1578
  store i64 0, i64* %_i1580
  br label %_for_cond1582
_for_cond1582:
  %_i1585 = load i64, i64* %_i1580
  %_bop1586 = icmp slt i64 %_i1585, 3
  br i1 %_bop1586, label %_for_body1583, label %_for_exit1584
_for_body1583:
  %_x1587 = load i64, i64* %_x1574
  %_arr1588 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1578
  %_i1589 = load i64, i64* %_i1580
  %_gep1590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1588, i32 0, i32 1, i64 %_i1589
  store i64 %_x1587, i64* %_gep1590
  %_i1592 = load i64, i64* %_i1580
  %_bop1593 = add i64 %_i1592, 1
  store i64 %_bop1593, i64* %_i1580
  br label %_for_cond1582
_for_exit1584:
  %_arr1595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1578
  %_gep1596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1595, i32 0, i32 1, i32 1
  %_load1597 = load i64, i64* %_gep1596
  ret i64 %_load1597
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1498 = alloca i64
  %_argv1499 = alloca { i64, [0 x i8*] }*
  %_a1504 = alloca { i64, [0 x i64] }*
  %_i1506 = alloca i64
  %_arr1523 = alloca { i64, [0 x i64] }*
  %_i1525 = alloca i64
  %_arr01544 = alloca { i64, [0 x i64] }*
  %_i1546 = alloca i64
  store i64 %argc, i64* %_argc1498
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1499
  %_raw_array1502 = call i64* @oat_alloc_array(i64 3)
  %_array1503 = bitcast i64* %_raw_array1502 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1503, { i64, [0 x i64] }** %_a1504
  store i64 0, i64* %_i1506
  br label %_for_cond1508
_for_cond1508:
  %_i1511 = load i64, i64* %_i1506
  %_bop1512 = icmp slt i64 %_i1511, 3
  br i1 %_bop1512, label %_for_body1509, label %_for_exit1510
_for_body1509:
  %_i1513 = load i64, i64* %_i1506
  %_a1514 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1504
  %_i1515 = load i64, i64* %_i1506
  %_gep1516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1514, i32 0, i32 1, i64 %_i1515
  store i64 %_i1513, i64* %_gep1516
  %_i1518 = load i64, i64* %_i1506
  %_bop1519 = add i64 %_i1518, 1
  store i64 %_bop1519, i64* %_i1506
  br label %_for_cond1508
_for_exit1510:
  %_raw_array1521 = call i64* @oat_alloc_array(i64 4)
  %_array1522 = bitcast i64* %_raw_array1521 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1522, { i64, [0 x i64] }** %_arr1523
  store i64 0, i64* %_i1525
  br label %_for_cond1527
_for_cond1527:
  %_i1530 = load i64, i64* %_i1525
  %_bop1531 = icmp slt i64 %_i1530, 4
  br i1 %_bop1531, label %_for_body1528, label %_for_exit1529
_for_body1528:
  %_i1532 = load i64, i64* %_i1525
  %_i1533 = load i64, i64* %_i1525
  %_bop1534 = mul i64 %_i1532, %_i1533
  %_arr1535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1523
  %_i1536 = load i64, i64* %_i1525
  %_gep1537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1535, i32 0, i32 1, i64 %_i1536
  store i64 %_bop1534, i64* %_gep1537
  %_i1539 = load i64, i64* %_i1525
  %_bop1540 = add i64 %_i1539, 1
  store i64 %_bop1540, i64* %_i1525
  br label %_for_cond1527
_for_exit1529:
  %_raw_array1542 = call i64* @oat_alloc_array(i64 3)
  %_array1543 = bitcast i64* %_raw_array1542 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1543, { i64, [0 x i64] }** %_arr01544
  store i64 0, i64* %_i1546
  br label %_for_cond1548
_for_cond1548:
  %_i1551 = load i64, i64* %_i1546
  %_bop1552 = icmp slt i64 %_i1551, 3
  br i1 %_bop1552, label %_for_body1549, label %_for_exit1550
_for_body1549:
  %_i1553 = load i64, i64* %_i1546
  %_bop1554 = mul i64 2, %_i1553
  %_arr01555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01544
  %_i1556 = load i64, i64* %_i1546
  %_gep1557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01555, i32 0, i32 1, i64 %_i1556
  store i64 %_bop1554, i64* %_gep1557
  %_i1559 = load i64, i64* %_i1546
  %_bop1560 = add i64 %_i1559, 1
  store i64 %_bop1560, i64* %_i1546
  br label %_for_cond1548
_for_exit1550:
  %_arr1562 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1523
  %_gep1563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1562, i32 0, i32 1, i32 3
  %_load1564 = load i64, i64* %_gep1563
  %_a1565 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1504
  %_gep1566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1565, i32 0, i32 1, i32 1
  %_load1567 = load i64, i64* %_gep1566
  %_bop1568 = add i64 %_load1564, %_load1567
  %_arr01569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01544
  %_call1570 = call i64 @f({ i64, [0 x i64] }* %_arr01569)
  %_bop1571 = add i64 %_bop1568, %_call1570
  %_call1572 = call i64 @g(i64 4)
  %_bop1573 = add i64 %_bop1571, %_call1572
  ret i64 %_bop1573
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
