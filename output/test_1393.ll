; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1845 = alloca i64
  %_x2846 = alloca i64
  %_x3847 = alloca i64
  %_x4848 = alloca i64
  %_x5849 = alloca i64
  %_x6850 = alloca i64
  %_x7851 = alloca i64
  %_x8852 = alloca i64
  store i64 %x1, i64* %_x1845
  store i64 %x2, i64* %_x2846
  store i64 %x3, i64* %_x3847
  store i64 %x4, i64* %_x4848
  store i64 %x5, i64* %_x5849
  store i64 %x6, i64* %_x6850
  store i64 %x7, i64* %_x7851
  store i64 %x8, i64* %_x8852
  %_x1861 = load i64, i64* %_x1845
  %_x2862 = load i64, i64* %_x2846
  %_bop863 = add i64 %_x1861, %_x2862
  %_x3864 = load i64, i64* %_x3847
  %_bop865 = add i64 %_bop863, %_x3864
  %_x4866 = load i64, i64* %_x4848
  %_bop867 = add i64 %_bop865, %_x4866
  %_x5868 = load i64, i64* %_x5849
  %_bop869 = add i64 %_bop867, %_x5868
  %_x6870 = load i64, i64* %_x6850
  %_bop871 = add i64 %_bop869, %_x6870
  %_x7872 = load i64, i64* %_x7851
  %_bop873 = add i64 %_bop871, %_x7872
  %_x8874 = load i64, i64* %_x8852
  %_bop875 = add i64 %_bop873, %_x8874
  ret i64 %_bop875
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc837 = alloca i64
  %_argv838 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc837
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv838
  %_uop843 = sub i64 0, 3
  %_uop842 = sub i64 0, 4
  %_uop841 = sub i64 0, 5
  %_function844 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop841, i64 %_uop842, i64 %_uop843)
  ret i64 %_function844
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
