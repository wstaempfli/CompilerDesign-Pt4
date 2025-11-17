; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_call684 = call i64 @f2()
  ret i64 %_call684
}

define i64 @f2() {
  %_call683 = call i64 @f3()
  ret i64 %_call683
}

define i64 @f3() {
  %_call682 = call i64 @f4()
  ret i64 %_call682
}

define i64 @f4() {
  %_call681 = call i64 @f5()
  ret i64 %_call681
}

define i64 @f5() {
  %_call680 = call i64 @f6()
  ret i64 %_call680
}

define i64 @f6() {
  %_call679 = call i64 @f7()
  ret i64 %_call679
}

define i64 @f7() {
  %_call678 = call i64 @f8()
  ret i64 %_call678
}

define i64 @f8() {
  %_call677 = call i64 @f9()
  ret i64 %_call677
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc672 = alloca i64
  %_argv673 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc672
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv673
  %_call676 = call i64 @f1()
  ret i64 %_call676
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
