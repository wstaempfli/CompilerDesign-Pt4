; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1837 = alloca i64
  %_argv1838 = alloca { i64, [0 x i8*] }*
  %_x1841 = alloca i64
  %_a1902 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1905 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1837
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1838
  store i64 10, i64* %_x1841
  %_raw_array1843 = call i64* @oat_alloc_array(i64 3)
  %_array1844 = bitcast i64* %_raw_array1843 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1845 = call i64* @oat_alloc_array(i64 3)
  %_array1846 = bitcast i64* %_raw_array1845 to { i64, [0 x i64] }*
  %_x1847 = load i64, i64* %_x1841
  %_bop1848 = add i64 %_x1847, 0
  %_bop1849 = add i64 %_bop1848, 0
  %_gep_lit1850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1846, i32 0, i32 1, i32 0
  store i64 %_bop1849, i64* %_gep_lit1850
  %_x1852 = load i64, i64* %_x1841
  %_bop1853 = add i64 %_x1852, 0
  %_bop1854 = add i64 %_bop1853, 1
  %_gep_lit1855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1846, i32 0, i32 1, i32 1
  store i64 %_bop1854, i64* %_gep_lit1855
  %_x1857 = load i64, i64* %_x1841
  %_bop1858 = add i64 %_x1857, 0
  %_bop1859 = add i64 %_bop1858, 2
  %_gep_lit1860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1846, i32 0, i32 1, i32 2
  store i64 %_bop1859, i64* %_gep_lit1860
  %_gep_lit1862 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1844, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1846, { i64, [0 x i64] }** %_gep_lit1862
  %_raw_array1864 = call i64* @oat_alloc_array(i64 3)
  %_array1865 = bitcast i64* %_raw_array1864 to { i64, [0 x i64] }*
  %_x1866 = load i64, i64* %_x1841
  %_bop1867 = add i64 %_x1866, 1
  %_bop1868 = add i64 %_bop1867, 0
  %_gep_lit1869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1865, i32 0, i32 1, i32 0
  store i64 %_bop1868, i64* %_gep_lit1869
  %_x1871 = load i64, i64* %_x1841
  %_bop1872 = add i64 %_x1871, 1
  %_bop1873 = add i64 %_bop1872, 1
  %_gep_lit1874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1865, i32 0, i32 1, i32 1
  store i64 %_bop1873, i64* %_gep_lit1874
  %_x1876 = load i64, i64* %_x1841
  %_bop1877 = add i64 %_x1876, 1
  %_bop1878 = add i64 %_bop1877, 2
  %_gep_lit1879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1865, i32 0, i32 1, i32 2
  store i64 %_bop1878, i64* %_gep_lit1879
  %_gep_lit1881 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1844, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1865, { i64, [0 x i64] }** %_gep_lit1881
  %_raw_array1883 = call i64* @oat_alloc_array(i64 3)
  %_array1884 = bitcast i64* %_raw_array1883 to { i64, [0 x i64] }*
  %_x1885 = load i64, i64* %_x1841
  %_bop1886 = add i64 %_x1885, 2
  %_bop1887 = add i64 %_bop1886, 0
  %_gep_lit1888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 0
  store i64 %_bop1887, i64* %_gep_lit1888
  %_x1890 = load i64, i64* %_x1841
  %_bop1891 = add i64 %_x1890, 2
  %_bop1892 = add i64 %_bop1891, 1
  %_gep_lit1893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 1
  store i64 %_bop1892, i64* %_gep_lit1893
  %_x1895 = load i64, i64* %_x1841
  %_bop1896 = add i64 %_x1895, 2
  %_bop1897 = add i64 %_bop1896, 2
  %_gep_lit1898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1884, i32 0, i32 1, i32 2
  store i64 %_bop1897, i64* %_gep_lit1898
  %_gep_lit1900 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1844, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1884, { i64, [0 x i64] }** %_gep_lit1900
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1844, { i64, [0 x { i64, [0 x i64] }*] }** %_a1902
  %_a1904 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1902
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1904, { i64, [0 x { i64, [0 x i64] }*] }** %_b1905
  %_b1907 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1905
  %_1908 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1907, i32 0, i32 1, i32 2
  %_1909 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1908
  %_1910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1909, i32 0, i32 1, i32 1
  %_1911 = load i64, i64* %_1910
  ret i64 %_1911
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
