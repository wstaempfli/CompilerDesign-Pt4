; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str1871 = global [4 x i8] c"abc\00"
@_str1875 = global [4 x i8] c"def\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1865 = alloca i64
  %_argv1866 = alloca { i64, [0 x i8*] }*
  %_strs1879 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1865
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1866
  %_raw_array1869 = call i64* @oat_alloc_array(i64 2)
  %_array1870 = bitcast i64* %_raw_array1869 to { i64, [0 x i8*] }*
  %_strptr1872 = bitcast [4 x i8]* @_str1871 to i8*
  %_gep_lit1873 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1870, i32 0, i32 1, i32 0
  store i8* %_strptr1872, i8** %_gep_lit1873
  %_strptr1876 = bitcast [4 x i8]* @_str1875 to i8*
  %_gep_lit1877 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1870, i32 0, i32 1, i32 1
  store i8* %_strptr1876, i8** %_gep_lit1877
  store { i64, [0 x i8*] }* %_array1870, { i64, [0 x i8*] }** %_strs1879
  %_strs1881 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1879
  %_gep1882 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1881, i32 0, i32 1, i32 0
  %_load1883 = load i8*, i8** %_gep1882
  call void @print_string(i8* %_load1883)
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
