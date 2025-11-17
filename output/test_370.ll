; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1829 = alloca i64
  %_argv1830 = alloca { i64, [0 x i8*] }*
  %_i1833 = alloca i64
  %_a1843 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1829
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1830
  store i64 999, i64* %_i1833
  %_raw_array1835 = call i64* @oat_alloc_array(i64 3)
  %_array1836 = bitcast i64* %_raw_array1835 to { i64, [0 x i64] }*
  %_gep_lit1837 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1836, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1837
  %_gep_lit1839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1836, i32 0, i32 1, i32 1
  store i64 100, i64* %_gep_lit1839
  %_gep_lit1841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1836, i32 0, i32 1, i32 2
  store i64 999, i64* %_gep_lit1841
  store { i64, [0 x i64] }* %_array1836, { i64, [0 x i64] }** %_a1843
  %_a1845 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1843
  %_gep1846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1845, i32 0, i32 1, i32 2
  %_load1847 = load i64, i64* %_gep1846
  ret i64 %_load1847
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
