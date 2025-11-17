; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1830 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1830
  %_a1832 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1830
  %_elem_addr1833 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1832, i32 0, i32 1, i32 1
  %_read_val1834 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_elem_addr1833
  %_elem_addr1835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_read_val1834, i32 0, i32 1, i32 1
  %_read_val1836 = load i64, i64* %_elem_addr1835
  ret i64 %_read_val1836
}

define i64 @g(i64 %x) {
  %_x1780 = alloca i64
  %_arr1823 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1780
  %_raw_array1782 = call i64* @oat_alloc_array(i64 3)
  %_array1783 = bitcast i64* %_raw_array1782 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1784 = call i64* @oat_alloc_array(i64 3)
  %_array1785 = bitcast i64* %_raw_array1784 to { i64, [0 x i64] }*
  %_x1786 = load i64, i64* %_x1780
  %_gep_lit1787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1785, i32 0, i32 1, i32 0
  store i64 %_x1786, i64* %_gep_lit1787
  %_x1789 = load i64, i64* %_x1780
  %_gep_lit1790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1785, i32 0, i32 1, i32 1
  store i64 %_x1789, i64* %_gep_lit1790
  %_x1792 = load i64, i64* %_x1780
  %_gep_lit1793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1785, i32 0, i32 1, i32 2
  store i64 %_x1792, i64* %_gep_lit1793
  %_gep_lit1795 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1783, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1785, { i64, [0 x i64] }** %_gep_lit1795
  %_raw_array1797 = call i64* @oat_alloc_array(i64 3)
  %_array1798 = bitcast i64* %_raw_array1797 to { i64, [0 x i64] }*
  %_x1799 = load i64, i64* %_x1780
  %_gep_lit1800 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1798, i32 0, i32 1, i32 0
  store i64 %_x1799, i64* %_gep_lit1800
  %_x1802 = load i64, i64* %_x1780
  %_gep_lit1803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1798, i32 0, i32 1, i32 1
  store i64 %_x1802, i64* %_gep_lit1803
  %_x1805 = load i64, i64* %_x1780
  %_gep_lit1806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1798, i32 0, i32 1, i32 2
  store i64 %_x1805, i64* %_gep_lit1806
  %_gep_lit1808 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1783, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1798, { i64, [0 x i64] }** %_gep_lit1808
  %_raw_array1810 = call i64* @oat_alloc_array(i64 3)
  %_array1811 = bitcast i64* %_raw_array1810 to { i64, [0 x i64] }*
  %_x1812 = load i64, i64* %_x1780
  %_gep_lit1813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 0
  store i64 %_x1812, i64* %_gep_lit1813
  %_x1815 = load i64, i64* %_x1780
  %_gep_lit1816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 1
  store i64 %_x1815, i64* %_gep_lit1816
  %_x1818 = load i64, i64* %_x1780
  %_gep_lit1819 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1811, i32 0, i32 1, i32 2
  store i64 %_x1818, i64* %_gep_lit1819
  %_gep_lit1821 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1783, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1811, { i64, [0 x i64] }** %_gep_lit1821
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1783, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1823
  %_arr1825 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1823
  %_elem_addr1826 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1825, i32 0, i32 1, i32 1
  %_read_val1827 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_elem_addr1826
  %_elem_addr1828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_read_val1827, i32 0, i32 1, i32 1
  %_read_val1829 = load i64, i64* %_elem_addr1828
  ret i64 %_read_val1829
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1603 = alloca i64
  %_argv1604 = alloca { i64, [0 x i8*] }*
  %_a1639 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1719 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01762 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1603
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1604
  %_raw_array1607 = call i64* @oat_alloc_array(i64 3)
  %_array1608 = bitcast i64* %_raw_array1607 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1609 = call i64* @oat_alloc_array(i64 3)
  %_array1610 = bitcast i64* %_raw_array1609 to { i64, [0 x i64] }*
  %_gep_lit1611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1610, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit1611
  %_gep_lit1613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1610, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1613
  %_gep_lit1615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1610, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit1615
  %_gep_lit1617 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1608, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1610, { i64, [0 x i64] }** %_gep_lit1617
  %_raw_array1619 = call i64* @oat_alloc_array(i64 3)
  %_array1620 = bitcast i64* %_raw_array1619 to { i64, [0 x i64] }*
  %_gep_lit1621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit1621
  %_gep_lit1623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1623
  %_gep_lit1625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit1625
  %_gep_lit1627 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1608, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1620, { i64, [0 x i64] }** %_gep_lit1627
  %_raw_array1629 = call i64* @oat_alloc_array(i64 3)
  %_array1630 = bitcast i64* %_raw_array1629 to { i64, [0 x i64] }*
  %_gep_lit1631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit1631
  %_gep_lit1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit1633
  %_gep_lit1635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1630, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit1635
  %_gep_lit1637 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1608, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1630, { i64, [0 x i64] }** %_gep_lit1637
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1608, { i64, [0 x { i64, [0 x i64] }*] }** %_a1639
  %_raw_array1641 = call i64* @oat_alloc_array(i64 4)
  %_array1642 = bitcast i64* %_raw_array1641 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1643 = call i64* @oat_alloc_array(i64 5)
  %_array1644 = bitcast i64* %_raw_array1643 to { i64, [0 x i64] }*
  %_bop1645 = mul i64 0, 0
  %_gep_lit1646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 0
  store i64 %_bop1645, i64* %_gep_lit1646
  %_bop1648 = mul i64 0, 1
  %_gep_lit1649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 1
  store i64 %_bop1648, i64* %_gep_lit1649
  %_bop1651 = mul i64 0, 2
  %_gep_lit1652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 2
  store i64 %_bop1651, i64* %_gep_lit1652
  %_bop1654 = mul i64 0, 3
  %_gep_lit1655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 3
  store i64 %_bop1654, i64* %_gep_lit1655
  %_bop1657 = mul i64 0, 4
  %_gep_lit1658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1644, i32 0, i32 1, i32 4
  store i64 %_bop1657, i64* %_gep_lit1658
  %_gep_lit1660 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1642, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1644, { i64, [0 x i64] }** %_gep_lit1660
  %_raw_array1662 = call i64* @oat_alloc_array(i64 5)
  %_array1663 = bitcast i64* %_raw_array1662 to { i64, [0 x i64] }*
  %_bop1664 = mul i64 1, 0
  %_gep_lit1665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1663, i32 0, i32 1, i32 0
  store i64 %_bop1664, i64* %_gep_lit1665
  %_bop1667 = mul i64 1, 1
  %_gep_lit1668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1663, i32 0, i32 1, i32 1
  store i64 %_bop1667, i64* %_gep_lit1668
  %_bop1670 = mul i64 1, 2
  %_gep_lit1671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1663, i32 0, i32 1, i32 2
  store i64 %_bop1670, i64* %_gep_lit1671
  %_bop1673 = mul i64 1, 3
  %_gep_lit1674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1663, i32 0, i32 1, i32 3
  store i64 %_bop1673, i64* %_gep_lit1674
  %_bop1676 = mul i64 1, 4
  %_gep_lit1677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1663, i32 0, i32 1, i32 4
  store i64 %_bop1676, i64* %_gep_lit1677
  %_gep_lit1679 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1642, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1663, { i64, [0 x i64] }** %_gep_lit1679
  %_raw_array1681 = call i64* @oat_alloc_array(i64 5)
  %_array1682 = bitcast i64* %_raw_array1681 to { i64, [0 x i64] }*
  %_bop1683 = mul i64 2, 0
  %_gep_lit1684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 0
  store i64 %_bop1683, i64* %_gep_lit1684
  %_bop1686 = mul i64 2, 1
  %_gep_lit1687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 1
  store i64 %_bop1686, i64* %_gep_lit1687
  %_bop1689 = mul i64 2, 2
  %_gep_lit1690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 2
  store i64 %_bop1689, i64* %_gep_lit1690
  %_bop1692 = mul i64 2, 3
  %_gep_lit1693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 3
  store i64 %_bop1692, i64* %_gep_lit1693
  %_bop1695 = mul i64 2, 4
  %_gep_lit1696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 4
  store i64 %_bop1695, i64* %_gep_lit1696
  %_gep_lit1698 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1642, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1682, { i64, [0 x i64] }** %_gep_lit1698
  %_raw_array1700 = call i64* @oat_alloc_array(i64 5)
  %_array1701 = bitcast i64* %_raw_array1700 to { i64, [0 x i64] }*
  %_bop1702 = mul i64 3, 0
  %_gep_lit1703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 0
  store i64 %_bop1702, i64* %_gep_lit1703
  %_bop1705 = mul i64 3, 1
  %_gep_lit1706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 1
  store i64 %_bop1705, i64* %_gep_lit1706
  %_bop1708 = mul i64 3, 2
  %_gep_lit1709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 2
  store i64 %_bop1708, i64* %_gep_lit1709
  %_bop1711 = mul i64 3, 3
  %_gep_lit1712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 3
  store i64 %_bop1711, i64* %_gep_lit1712
  %_bop1714 = mul i64 3, 4
  %_gep_lit1715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 4
  store i64 %_bop1714, i64* %_gep_lit1715
  %_gep_lit1717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1642, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1701, { i64, [0 x i64] }** %_gep_lit1717
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1642, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1719
  %_raw_array1721 = call i64* @oat_alloc_array(i64 3)
  %_array1722 = bitcast i64* %_raw_array1721 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1723 = call i64* @oat_alloc_array(i64 3)
  %_array1724 = bitcast i64* %_raw_array1723 to { i64, [0 x i64] }*
  %_bop1725 = mul i64 0, 0
  %_gep_lit1726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1724, i32 0, i32 1, i32 0
  store i64 %_bop1725, i64* %_gep_lit1726
  %_bop1728 = mul i64 0, 1
  %_gep_lit1729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1724, i32 0, i32 1, i32 1
  store i64 %_bop1728, i64* %_gep_lit1729
  %_bop1731 = mul i64 0, 2
  %_gep_lit1732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1724, i32 0, i32 1, i32 2
  store i64 %_bop1731, i64* %_gep_lit1732
  %_gep_lit1734 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1722, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1724, { i64, [0 x i64] }** %_gep_lit1734
  %_raw_array1736 = call i64* @oat_alloc_array(i64 3)
  %_array1737 = bitcast i64* %_raw_array1736 to { i64, [0 x i64] }*
  %_bop1738 = mul i64 1, 0
  %_gep_lit1739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1737, i32 0, i32 1, i32 0
  store i64 %_bop1738, i64* %_gep_lit1739
  %_bop1741 = mul i64 1, 1
  %_gep_lit1742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1737, i32 0, i32 1, i32 1
  store i64 %_bop1741, i64* %_gep_lit1742
  %_bop1744 = mul i64 1, 2
  %_gep_lit1745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1737, i32 0, i32 1, i32 2
  store i64 %_bop1744, i64* %_gep_lit1745
  %_gep_lit1747 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1722, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1737, { i64, [0 x i64] }** %_gep_lit1747
  %_raw_array1749 = call i64* @oat_alloc_array(i64 3)
  %_array1750 = bitcast i64* %_raw_array1749 to { i64, [0 x i64] }*
  %_bop1751 = mul i64 2, 0
  %_gep_lit1752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1750, i32 0, i32 1, i32 0
  store i64 %_bop1751, i64* %_gep_lit1752
  %_bop1754 = mul i64 2, 1
  %_gep_lit1755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1750, i32 0, i32 1, i32 1
  store i64 %_bop1754, i64* %_gep_lit1755
  %_bop1757 = mul i64 2, 2
  %_gep_lit1758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1750, i32 0, i32 1, i32 2
  store i64 %_bop1757, i64* %_gep_lit1758
  %_gep_lit1760 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1722, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1750, { i64, [0 x i64] }** %_gep_lit1760
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1722, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01762
  %_arr1764 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1719
  %_elem_addr1765 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1764, i32 0, i32 1, i32 3
  %_read_val1766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_elem_addr1765
  %_elem_addr1767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_read_val1766, i32 0, i32 1, i32 4
  %_read_val1768 = load i64, i64* %_elem_addr1767
  %_a1769 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1639
  %_elem_addr1770 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1769, i32 0, i32 1, i32 1
  %_read_val1771 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_elem_addr1770
  %_elem_addr1772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_read_val1771, i32 0, i32 1, i32 2
  %_read_val1773 = load i64, i64* %_elem_addr1772
  %_bop1774 = add i64 %_read_val1768, %_read_val1773
  %_arr01775 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01762
  %_funcall1776 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01775)
  %_bop1777 = add i64 %_bop1774, %_funcall1776
  %_funcall1778 = call i64 @g(i64 4)
  %_bop1779 = add i64 %_bop1777, %_funcall1778
  ret i64 %_bop1779
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
