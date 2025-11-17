; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str1893 = global [4 x i8] c"abc\00"
@_str1897 = global [4 x i8] c"def\00"
@_str1905 = global [4 x i8] c"789\00"
@_str1909 = global [4 x i8] c"123\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1885 = alloca i64
  %_argv1886 = alloca { i64, [0 x i8*] }*
  %_strs1915 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1885
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1886
  %_raw_array1889 = call i64* @oat_alloc_array(i64 2)
  %_array1890 = bitcast i64* %_raw_array1889 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1891 = call i64* @oat_alloc_array(i64 2)
  %_array1892 = bitcast i64* %_raw_array1891 to { i64, [0 x i8*] }*
  %_strptr1894 = bitcast [4 x i8]* @_str1893 to i8*
  %_gep_lit1895 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1892, i32 0, i32 1, i32 0
  store i8* %_strptr1894, i8** %_gep_lit1895
  %_strptr1898 = bitcast [4 x i8]* @_str1897 to i8*
  %_gep_lit1899 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1892, i32 0, i32 1, i32 1
  store i8* %_strptr1898, i8** %_gep_lit1899
  %_gep_lit1901 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1890, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1892, { i64, [0 x i8*] }** %_gep_lit1901
  %_raw_array1903 = call i64* @oat_alloc_array(i64 2)
  %_array1904 = bitcast i64* %_raw_array1903 to { i64, [0 x i8*] }*
  %_strptr1906 = bitcast [4 x i8]* @_str1905 to i8*
  %_gep_lit1907 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1904, i32 0, i32 1, i32 0
  store i8* %_strptr1906, i8** %_gep_lit1907
  %_strptr1910 = bitcast [4 x i8]* @_str1909 to i8*
  %_gep_lit1911 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1904, i32 0, i32 1, i32 1
  store i8* %_strptr1910, i8** %_gep_lit1911
  %_gep_lit1913 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1890, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1904, { i64, [0 x i8*] }** %_gep_lit1913
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1890, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1915
  %_strs1917 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1915
  %_gep1918 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1917, i32 0, i32 1, i32 1
  %_load1919 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_gep1918
  %_gep1920 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_load1919, i32 0, i32 1, i32 1
  %_load1921 = load i8*, i8** %_gep1920
  call void @print_string(i8* %_load1921)
  ret i64 0
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
