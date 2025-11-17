; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1845 = alloca i64
  %_x2847 = alloca i64
  %_x3849 = alloca i64
  %_x4851 = alloca i64
  %_x5853 = alloca i64
  %_x6855 = alloca i64
  %_x7857 = alloca i64
  %_x8859 = alloca i64
  store i64 %x1, i64* %_x1845
  store i64 %x2, i64* %_x2847
  store i64 %x3, i64* %_x3849
  store i64 %x4, i64* %_x4851
  store i64 %x5, i64* %_x5853
  store i64 %x6, i64* %_x6855
  store i64 %x7, i64* %_x7857
  store i64 %x8, i64* %_x8859
  %_load861 = load i64, i64* %_x1845
  %_load862 = load i64, i64* %_x2847
  %_bop863 = add i64 %_load861, %_load862
  %_load864 = load i64, i64* %_x3849
  %_bop865 = add i64 %_bop863, %_load864
  %_load866 = load i64, i64* %_x4851
  %_bop867 = add i64 %_bop865, %_load866
  %_load868 = load i64, i64* %_x5853
  %_bop869 = add i64 %_bop867, %_load868
  %_load870 = load i64, i64* %_x6855
  %_bop871 = add i64 %_bop869, %_load870
  %_load872 = load i64, i64* %_x7857
  %_bop873 = add i64 %_bop871, %_load872
  %_load874 = load i64, i64* %_x8859
  %_bop875 = add i64 %_bop873, %_load874
  ret i64 %_bop875
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc837 = alloca i64
  %_argv839 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc837
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv839
  %_uop843 = sub i64 0, 3
  %_uop842 = sub i64 0, 4
  %_uop841 = sub i64 0, 5
  %_call844 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop841, i64 %_uop842, i64 %_uop843)
  ret i64 %_call844
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
