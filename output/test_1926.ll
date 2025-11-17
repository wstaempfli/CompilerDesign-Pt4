; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i822 = alloca i64
  store i64 %i, i64* %_i822
  %_i824 = load i64, i64* %_i822
  %_funcall825 = call i64 @f2(i64 %_i824)
  ret i64 %_funcall825
}

define i64 @f2(i64 %i) {
  %_i818 = alloca i64
  store i64 %i, i64* %_i818
  %_i820 = load i64, i64* %_i818
  %_funcall821 = call i64 @f3(i64 %_i820)
  ret i64 %_funcall821
}

define i64 @f3(i64 %i) {
  %_i814 = alloca i64
  store i64 %i, i64* %_i814
  %_i816 = load i64, i64* %_i814
  %_funcall817 = call i64 @f4(i64 %_i816)
  ret i64 %_funcall817
}

define i64 @f4(i64 %i) {
  %_i810 = alloca i64
  store i64 %i, i64* %_i810
  %_i812 = load i64, i64* %_i810
  %_funcall813 = call i64 @f5(i64 %_i812)
  ret i64 %_funcall813
}

define i64 @f5(i64 %i) {
  %_i806 = alloca i64
  store i64 %i, i64* %_i806
  %_i808 = load i64, i64* %_i806
  %_funcall809 = call i64 @f6(i64 %_i808)
  ret i64 %_funcall809
}

define i64 @f6(i64 %i) {
  %_i802 = alloca i64
  store i64 %i, i64* %_i802
  %_i804 = load i64, i64* %_i802
  %_funcall805 = call i64 @f7(i64 %_i804)
  ret i64 %_funcall805
}

define i64 @f7(i64 %i) {
  %_i798 = alloca i64
  store i64 %i, i64* %_i798
  %_i800 = load i64, i64* %_i798
  %_funcall801 = call i64 @f8(i64 %_i800)
  ret i64 %_funcall801
}

define i64 @f8(i64 %i) {
  %_i794 = alloca i64
  store i64 %i, i64* %_i794
  %_i796 = load i64, i64* %_i794
  %_funcall797 = call i64 @f9(i64 %_i796)
  ret i64 %_funcall797
}

define i64 @f9(i64 %i) {
  %_i791 = alloca i64
  store i64 %i, i64* %_i791
  %_i793 = load i64, i64* %_i791
  ret i64 %_i793
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc785 = alloca i64
  %_argv786 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc785
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv786
  %_argc789 = load i64, i64* %_argc785
  %_funcall790 = call i64 @f1(i64 %_argc789)
  ret i64 %_funcall790
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
