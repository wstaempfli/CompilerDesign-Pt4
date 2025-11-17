; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1912 = alloca i64
  %_argv1913 = alloca { i64, [0 x i8*] }*
  %_a1924 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1912
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1913
  %_raw_array1916 = call i64* @oat_alloc_array(i64 3)
  %_array1917 = bitcast i64* %_raw_array1916 to { i64, [0 x i64] }*
  %_gep_lit1918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1917, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1918
  %_gep_lit1920 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1917, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep_lit1920
  %_gep_lit1922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1917, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep_lit1922
  store { i64, [0 x i64] }* %_array1917, { i64, [0 x i64] }** %_a1924
  %_a1926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1924
  %_elem_addr1927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1926, i32 0, i32 1, i32 2
  %_read_val1928 = load i64, i64* %_elem_addr1927
  ret i64 %_read_val1928
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
