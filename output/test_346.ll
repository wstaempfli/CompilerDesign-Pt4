; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i722 = alloca i64
  store i64 %i, i64* %_i722
  %_i724 = load i64, i64* %_i722
  %_call725 = call i64 @f2(i64 %_i724)
  ret i64 %_call725
}

define i64 @f2(i64 %i) {
  %_i718 = alloca i64
  store i64 %i, i64* %_i718
  %_i720 = load i64, i64* %_i718
  %_call721 = call i64 @f3(i64 %_i720)
  ret i64 %_call721
}

define i64 @f3(i64 %i) {
  %_i714 = alloca i64
  store i64 %i, i64* %_i714
  %_i716 = load i64, i64* %_i714
  %_call717 = call i64 @f4(i64 %_i716)
  ret i64 %_call717
}

define i64 @f4(i64 %i) {
  %_i710 = alloca i64
  store i64 %i, i64* %_i710
  %_i712 = load i64, i64* %_i710
  %_call713 = call i64 @f5(i64 %_i712)
  ret i64 %_call713
}

define i64 @f5(i64 %i) {
  %_i706 = alloca i64
  store i64 %i, i64* %_i706
  %_i708 = load i64, i64* %_i706
  %_call709 = call i64 @f6(i64 %_i708)
  ret i64 %_call709
}

define i64 @f6(i64 %i) {
  %_i702 = alloca i64
  store i64 %i, i64* %_i702
  %_i704 = load i64, i64* %_i702
  %_call705 = call i64 @f7(i64 %_i704)
  ret i64 %_call705
}

define i64 @f7(i64 %i) {
  %_i698 = alloca i64
  store i64 %i, i64* %_i698
  %_i700 = load i64, i64* %_i698
  %_call701 = call i64 @f8(i64 %_i700)
  ret i64 %_call701
}

define i64 @f8(i64 %i) {
  %_i694 = alloca i64
  store i64 %i, i64* %_i694
  %_i696 = load i64, i64* %_i694
  %_call697 = call i64 @f9(i64 %_i696)
  ret i64 %_call697
}

define i64 @f9(i64 %i) {
  %_i691 = alloca i64
  store i64 %i, i64* %_i691
  %_i693 = load i64, i64* %_i691
  ret i64 %_i693
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc685 = alloca i64
  %_argv686 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc685
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv686
  %_argc689 = load i64, i64* %_argc685
  %_call690 = call i64 @f1(i64 %_argc689)
  ret i64 %_call690
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
