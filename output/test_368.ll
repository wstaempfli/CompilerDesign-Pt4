; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1737 = alloca i64
  %_argv1738 = alloca { i64, [0 x i8*] }*
  %_x1741 = alloca i64
  %_a1802 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1805 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1737
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1738
  store i64 10, i64* %_x1741
  %_raw_array1743 = call i64* @oat_alloc_array(i64 3)
  %_array1744 = bitcast i64* %_raw_array1743 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1745 = call i64* @oat_alloc_array(i64 3)
  %_array1746 = bitcast i64* %_raw_array1745 to { i64, [0 x i64] }*
  %_x1747 = load i64, i64* %_x1741
  %_bop1748 = add i64 %_x1747, 0
  %_bop1749 = add i64 %_bop1748, 0
  %_gep_lit1750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1746, i32 0, i32 1, i32 0
  store i64 %_bop1749, i64* %_gep_lit1750
  %_x1752 = load i64, i64* %_x1741
  %_bop1753 = add i64 %_x1752, 0
  %_bop1754 = add i64 %_bop1753, 1
  %_gep_lit1755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1746, i32 0, i32 1, i32 1
  store i64 %_bop1754, i64* %_gep_lit1755
  %_x1757 = load i64, i64* %_x1741
  %_bop1758 = add i64 %_x1757, 0
  %_bop1759 = add i64 %_bop1758, 2
  %_gep_lit1760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1746, i32 0, i32 1, i32 2
  store i64 %_bop1759, i64* %_gep_lit1760
  %_gep_lit1762 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1744, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1746, { i64, [0 x i64] }** %_gep_lit1762
  %_raw_array1764 = call i64* @oat_alloc_array(i64 3)
  %_array1765 = bitcast i64* %_raw_array1764 to { i64, [0 x i64] }*
  %_x1766 = load i64, i64* %_x1741
  %_bop1767 = add i64 %_x1766, 1
  %_bop1768 = add i64 %_bop1767, 0
  %_gep_lit1769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 0
  store i64 %_bop1768, i64* %_gep_lit1769
  %_x1771 = load i64, i64* %_x1741
  %_bop1772 = add i64 %_x1771, 1
  %_bop1773 = add i64 %_bop1772, 1
  %_gep_lit1774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 1
  store i64 %_bop1773, i64* %_gep_lit1774
  %_x1776 = load i64, i64* %_x1741
  %_bop1777 = add i64 %_x1776, 1
  %_bop1778 = add i64 %_bop1777, 2
  %_gep_lit1779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1765, i32 0, i32 1, i32 2
  store i64 %_bop1778, i64* %_gep_lit1779
  %_gep_lit1781 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1744, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1765, { i64, [0 x i64] }** %_gep_lit1781
  %_raw_array1783 = call i64* @oat_alloc_array(i64 3)
  %_array1784 = bitcast i64* %_raw_array1783 to { i64, [0 x i64] }*
  %_x1785 = load i64, i64* %_x1741
  %_bop1786 = add i64 %_x1785, 2
  %_bop1787 = add i64 %_bop1786, 0
  %_gep_lit1788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1784, i32 0, i32 1, i32 0
  store i64 %_bop1787, i64* %_gep_lit1788
  %_x1790 = load i64, i64* %_x1741
  %_bop1791 = add i64 %_x1790, 2
  %_bop1792 = add i64 %_bop1791, 1
  %_gep_lit1793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1784, i32 0, i32 1, i32 1
  store i64 %_bop1792, i64* %_gep_lit1793
  %_x1795 = load i64, i64* %_x1741
  %_bop1796 = add i64 %_x1795, 2
  %_bop1797 = add i64 %_bop1796, 2
  %_gep_lit1798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1784, i32 0, i32 1, i32 2
  store i64 %_bop1797, i64* %_gep_lit1798
  %_gep_lit1800 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1744, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1784, { i64, [0 x i64] }** %_gep_lit1800
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1744, { i64, [0 x { i64, [0 x i64] }*] }** %_a1802
  %_a1804 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1802
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1804, { i64, [0 x { i64, [0 x i64] }*] }** %_b1805
  %_b1807 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1805
  %_gep1808 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1807, i32 0, i32 1, i32 2
  %_load1809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1808
  %_gep1810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1809, i32 0, i32 1, i32 1
  %_load1811 = load i64, i64* %_gep1810
  ret i64 %_load1811
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
