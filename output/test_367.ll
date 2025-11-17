; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1730 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1730
  %_a1732 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1730
  %_gep1733 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1732, i32 0, i32 1, i32 1
  %_load1734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1733
  %_gep1735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1734, i32 0, i32 1, i32 1
  %_load1736 = load i64, i64* %_gep1735
  ret i64 %_load1736
}

define i64 @g(i64 %x) {
  %_x1680 = alloca i64
  %_arr1723 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1680
  %_raw_array1682 = call i64* @oat_alloc_array(i64 3)
  %_array1683 = bitcast i64* %_raw_array1682 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1684 = call i64* @oat_alloc_array(i64 3)
  %_array1685 = bitcast i64* %_raw_array1684 to { i64, [0 x i64] }*
  %_x1686 = load i64, i64* %_x1680
  %_gep_lit1687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1685, i32 0, i32 1, i32 0
  store i64 %_x1686, i64* %_gep_lit1687
  %_x1689 = load i64, i64* %_x1680
  %_gep_lit1690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1685, i32 0, i32 1, i32 1
  store i64 %_x1689, i64* %_gep_lit1690
  %_x1692 = load i64, i64* %_x1680
  %_gep_lit1693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1685, i32 0, i32 1, i32 2
  store i64 %_x1692, i64* %_gep_lit1693
  %_gep_lit1695 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1683, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1685, { i64, [0 x i64] }** %_gep_lit1695
  %_raw_array1697 = call i64* @oat_alloc_array(i64 3)
  %_array1698 = bitcast i64* %_raw_array1697 to { i64, [0 x i64] }*
  %_x1699 = load i64, i64* %_x1680
  %_gep_lit1700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1698, i32 0, i32 1, i32 0
  store i64 %_x1699, i64* %_gep_lit1700
  %_x1702 = load i64, i64* %_x1680
  %_gep_lit1703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1698, i32 0, i32 1, i32 1
  store i64 %_x1702, i64* %_gep_lit1703
  %_x1705 = load i64, i64* %_x1680
  %_gep_lit1706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1698, i32 0, i32 1, i32 2
  store i64 %_x1705, i64* %_gep_lit1706
  %_gep_lit1708 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1683, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1698, { i64, [0 x i64] }** %_gep_lit1708
  %_raw_array1710 = call i64* @oat_alloc_array(i64 3)
  %_array1711 = bitcast i64* %_raw_array1710 to { i64, [0 x i64] }*
  %_x1712 = load i64, i64* %_x1680
  %_gep_lit1713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1711, i32 0, i32 1, i32 0
  store i64 %_x1712, i64* %_gep_lit1713
  %_x1715 = load i64, i64* %_x1680
  %_gep_lit1716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1711, i32 0, i32 1, i32 1
  store i64 %_x1715, i64* %_gep_lit1716
  %_x1718 = load i64, i64* %_x1680
  %_gep_lit1719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1711, i32 0, i32 1, i32 2
  store i64 %_x1718, i64* %_gep_lit1719
  %_gep_lit1721 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1683, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1711, { i64, [0 x i64] }** %_gep_lit1721
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1683, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1723
  %_arr1725 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1723
  %_gep1726 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1725, i32 0, i32 1, i32 1
  %_load1727 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1726
  %_gep1728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1727, i32 0, i32 1, i32 1
  %_load1729 = load i64, i64* %_gep1728
  ret i64 %_load1729
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1503 = alloca i64
  %_argv1504 = alloca { i64, [0 x i8*] }*
  %_a1539 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1619 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01662 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1503
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1504
  %_raw_array1507 = call i64* @oat_alloc_array(i64 3)
  %_array1508 = bitcast i64* %_raw_array1507 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1509 = call i64* @oat_alloc_array(i64 3)
  %_array1510 = bitcast i64* %_raw_array1509 to { i64, [0 x i64] }*
  %_gep_lit1511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit1511
  %_gep_lit1513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1513
  %_gep_lit1515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1510, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit1515
  %_gep_lit1517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1508, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1510, { i64, [0 x i64] }** %_gep_lit1517
  %_raw_array1519 = call i64* @oat_alloc_array(i64 3)
  %_array1520 = bitcast i64* %_raw_array1519 to { i64, [0 x i64] }*
  %_gep_lit1521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit1521
  %_gep_lit1523 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1523
  %_gep_lit1525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit1525
  %_gep_lit1527 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1508, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1520, { i64, [0 x i64] }** %_gep_lit1527
  %_raw_array1529 = call i64* @oat_alloc_array(i64 3)
  %_array1530 = bitcast i64* %_raw_array1529 to { i64, [0 x i64] }*
  %_gep_lit1531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1530, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit1531
  %_gep_lit1533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1530, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1533
  %_gep_lit1535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1530, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit1535
  %_gep_lit1537 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1508, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1530, { i64, [0 x i64] }** %_gep_lit1537
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1508, { i64, [0 x { i64, [0 x i64] }*] }** %_a1539
  %_raw_array1541 = call i64* @oat_alloc_array(i64 4)
  %_array1542 = bitcast i64* %_raw_array1541 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1543 = call i64* @oat_alloc_array(i64 5)
  %_array1544 = bitcast i64* %_raw_array1543 to { i64, [0 x i64] }*
  %_bop1545 = mul i64 0, 0
  %_gep_lit1546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1544, i32 0, i32 1, i32 0
  store i64 %_bop1545, i64* %_gep_lit1546
  %_bop1548 = mul i64 0, 1
  %_gep_lit1549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1544, i32 0, i32 1, i32 1
  store i64 %_bop1548, i64* %_gep_lit1549
  %_bop1551 = mul i64 0, 2
  %_gep_lit1552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1544, i32 0, i32 1, i32 2
  store i64 %_bop1551, i64* %_gep_lit1552
  %_bop1554 = mul i64 0, 3
  %_gep_lit1555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1544, i32 0, i32 1, i32 3
  store i64 %_bop1554, i64* %_gep_lit1555
  %_bop1557 = mul i64 0, 4
  %_gep_lit1558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1544, i32 0, i32 1, i32 4
  store i64 %_bop1557, i64* %_gep_lit1558
  %_gep_lit1560 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1542, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1544, { i64, [0 x i64] }** %_gep_lit1560
  %_raw_array1562 = call i64* @oat_alloc_array(i64 5)
  %_array1563 = bitcast i64* %_raw_array1562 to { i64, [0 x i64] }*
  %_bop1564 = mul i64 1, 0
  %_gep_lit1565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1563, i32 0, i32 1, i32 0
  store i64 %_bop1564, i64* %_gep_lit1565
  %_bop1567 = mul i64 1, 1
  %_gep_lit1568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1563, i32 0, i32 1, i32 1
  store i64 %_bop1567, i64* %_gep_lit1568
  %_bop1570 = mul i64 1, 2
  %_gep_lit1571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1563, i32 0, i32 1, i32 2
  store i64 %_bop1570, i64* %_gep_lit1571
  %_bop1573 = mul i64 1, 3
  %_gep_lit1574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1563, i32 0, i32 1, i32 3
  store i64 %_bop1573, i64* %_gep_lit1574
  %_bop1576 = mul i64 1, 4
  %_gep_lit1577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1563, i32 0, i32 1, i32 4
  store i64 %_bop1576, i64* %_gep_lit1577
  %_gep_lit1579 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1542, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1563, { i64, [0 x i64] }** %_gep_lit1579
  %_raw_array1581 = call i64* @oat_alloc_array(i64 5)
  %_array1582 = bitcast i64* %_raw_array1581 to { i64, [0 x i64] }*
  %_bop1583 = mul i64 2, 0
  %_gep_lit1584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 0
  store i64 %_bop1583, i64* %_gep_lit1584
  %_bop1586 = mul i64 2, 1
  %_gep_lit1587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 1
  store i64 %_bop1586, i64* %_gep_lit1587
  %_bop1589 = mul i64 2, 2
  %_gep_lit1590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 2
  store i64 %_bop1589, i64* %_gep_lit1590
  %_bop1592 = mul i64 2, 3
  %_gep_lit1593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 3
  store i64 %_bop1592, i64* %_gep_lit1593
  %_bop1595 = mul i64 2, 4
  %_gep_lit1596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1582, i32 0, i32 1, i32 4
  store i64 %_bop1595, i64* %_gep_lit1596
  %_gep_lit1598 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1542, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1582, { i64, [0 x i64] }** %_gep_lit1598
  %_raw_array1600 = call i64* @oat_alloc_array(i64 5)
  %_array1601 = bitcast i64* %_raw_array1600 to { i64, [0 x i64] }*
  %_bop1602 = mul i64 3, 0
  %_gep_lit1603 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 0
  store i64 %_bop1602, i64* %_gep_lit1603
  %_bop1605 = mul i64 3, 1
  %_gep_lit1606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 1
  store i64 %_bop1605, i64* %_gep_lit1606
  %_bop1608 = mul i64 3, 2
  %_gep_lit1609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 2
  store i64 %_bop1608, i64* %_gep_lit1609
  %_bop1611 = mul i64 3, 3
  %_gep_lit1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 3
  store i64 %_bop1611, i64* %_gep_lit1612
  %_bop1614 = mul i64 3, 4
  %_gep_lit1615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1601, i32 0, i32 1, i32 4
  store i64 %_bop1614, i64* %_gep_lit1615
  %_gep_lit1617 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1542, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1601, { i64, [0 x i64] }** %_gep_lit1617
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1542, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1619
  %_raw_array1621 = call i64* @oat_alloc_array(i64 3)
  %_array1622 = bitcast i64* %_raw_array1621 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1623 = call i64* @oat_alloc_array(i64 3)
  %_array1624 = bitcast i64* %_raw_array1623 to { i64, [0 x i64] }*
  %_bop1625 = mul i64 0, 0
  %_gep_lit1626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 0
  store i64 %_bop1625, i64* %_gep_lit1626
  %_bop1628 = mul i64 0, 1
  %_gep_lit1629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 1
  store i64 %_bop1628, i64* %_gep_lit1629
  %_bop1631 = mul i64 0, 2
  %_gep_lit1632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1624, i32 0, i32 1, i32 2
  store i64 %_bop1631, i64* %_gep_lit1632
  %_gep_lit1634 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1622, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1624, { i64, [0 x i64] }** %_gep_lit1634
  %_raw_array1636 = call i64* @oat_alloc_array(i64 3)
  %_array1637 = bitcast i64* %_raw_array1636 to { i64, [0 x i64] }*
  %_bop1638 = mul i64 1, 0
  %_gep_lit1639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1637, i32 0, i32 1, i32 0
  store i64 %_bop1638, i64* %_gep_lit1639
  %_bop1641 = mul i64 1, 1
  %_gep_lit1642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1637, i32 0, i32 1, i32 1
  store i64 %_bop1641, i64* %_gep_lit1642
  %_bop1644 = mul i64 1, 2
  %_gep_lit1645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1637, i32 0, i32 1, i32 2
  store i64 %_bop1644, i64* %_gep_lit1645
  %_gep_lit1647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1622, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1637, { i64, [0 x i64] }** %_gep_lit1647
  %_raw_array1649 = call i64* @oat_alloc_array(i64 3)
  %_array1650 = bitcast i64* %_raw_array1649 to { i64, [0 x i64] }*
  %_bop1651 = mul i64 2, 0
  %_gep_lit1652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1650, i32 0, i32 1, i32 0
  store i64 %_bop1651, i64* %_gep_lit1652
  %_bop1654 = mul i64 2, 1
  %_gep_lit1655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1650, i32 0, i32 1, i32 1
  store i64 %_bop1654, i64* %_gep_lit1655
  %_bop1657 = mul i64 2, 2
  %_gep_lit1658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1650, i32 0, i32 1, i32 2
  store i64 %_bop1657, i64* %_gep_lit1658
  %_gep_lit1660 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1622, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1650, { i64, [0 x i64] }** %_gep_lit1660
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1622, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01662
  %_arr1664 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1619
  %_gep1665 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1664, i32 0, i32 1, i32 3
  %_load1666 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1665
  %_gep1667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1666, i32 0, i32 1, i32 4
  %_load1668 = load i64, i64* %_gep1667
  %_a1669 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1539
  %_gep1670 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1669, i32 0, i32 1, i32 1
  %_load1671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1670
  %_gep1672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1671, i32 0, i32 1, i32 2
  %_load1673 = load i64, i64* %_gep1672
  %_bop1674 = add i64 %_load1668, %_load1673
  %_arr01675 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01662
  %_call1676 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01675)
  %_bop1677 = add i64 %_bop1674, %_call1676
  %_call1678 = call i64 @g(i64 4)
  %_bop1679 = add i64 %_bop1677, %_call1678
  ret i64 %_bop1679
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
