; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i822 = alloca i64
  store i64 %i, i64* %_i822
  %_load824 = load i64, i64* %_i822
  %_call825 = call i64 @f2(i64 %_load824)
  ret i64 %_call825
}

define i64 @f2(i64 %i) {
  %_i818 = alloca i64
  store i64 %i, i64* %_i818
  %_load820 = load i64, i64* %_i818
  %_call821 = call i64 @f3(i64 %_load820)
  ret i64 %_call821
}

define i64 @f3(i64 %i) {
  %_i814 = alloca i64
  store i64 %i, i64* %_i814
  %_load816 = load i64, i64* %_i814
  %_call817 = call i64 @f4(i64 %_load816)
  ret i64 %_call817
}

define i64 @f4(i64 %i) {
  %_i810 = alloca i64
  store i64 %i, i64* %_i810
  %_load812 = load i64, i64* %_i810
  %_call813 = call i64 @f5(i64 %_load812)
  ret i64 %_call813
}

define i64 @f5(i64 %i) {
  %_i806 = alloca i64
  store i64 %i, i64* %_i806
  %_load808 = load i64, i64* %_i806
  %_call809 = call i64 @f6(i64 %_load808)
  ret i64 %_call809
}

define i64 @f6(i64 %i) {
  %_i802 = alloca i64
  store i64 %i, i64* %_i802
  %_load804 = load i64, i64* %_i802
  %_call805 = call i64 @f7(i64 %_load804)
  ret i64 %_call805
}

define i64 @f7(i64 %i) {
  %_i798 = alloca i64
  store i64 %i, i64* %_i798
  %_load800 = load i64, i64* %_i798
  %_call801 = call i64 @f8(i64 %_load800)
  ret i64 %_call801
}

define i64 @f8(i64 %i) {
  %_i794 = alloca i64
  store i64 %i, i64* %_i794
  %_load796 = load i64, i64* %_i794
  %_call797 = call i64 @f9(i64 %_load796)
  ret i64 %_call797
}

define i64 @f9(i64 %i) {
  %_i791 = alloca i64
  store i64 %i, i64* %_i791
  %_load793 = load i64, i64* %_i791
  ret i64 %_load793
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc785 = alloca i64
  %_argv787 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc785
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv787
  %_load789 = load i64, i64* %_argc785
  %_call790 = call i64 @f1(i64 %_load789)
  ret i64 %_call790
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
