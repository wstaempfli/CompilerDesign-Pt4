; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str1971 = global [4 x i8] c"abc\00"
@_str1975 = global [4 x i8] c"def\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1965 = alloca i64
  %_argv1966 = alloca { i64, [0 x i8*] }*
  %_strs1979 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1965
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1966
  %_raw_array1969 = call i64* @oat_alloc_array(i64 2)
  %_array1970 = bitcast i64* %_raw_array1969 to { i64, [0 x i8*] }*
  %_strptr1972 = bitcast [4 x i8]* @_str1971 to i8*
  %_gep_lit1973 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1970, i32 0, i32 1, i32 0
  store i8* %_strptr1972, i8** %_gep_lit1973
  %_strptr1976 = bitcast [4 x i8]* @_str1975 to i8*
  %_gep_lit1977 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1970, i32 0, i32 1, i32 1
  store i8* %_strptr1976, i8** %_gep_lit1977
  store { i64, [0 x i8*] }* %_array1970, { i64, [0 x i8*] }** %_strs1979
  %_strs1981 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1979
  %_elem_addr1982 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1981, i32 0, i32 1, i32 0
  %_read_val1983 = load i8*, i8** %_elem_addr1982
  call void @print_string(i8* %_read_val1983)
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
