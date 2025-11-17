; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_funcall784 = call i64 @f2()
  ret i64 %_funcall784
}

define i64 @f2() {
  %_funcall783 = call i64 @f3()
  ret i64 %_funcall783
}

define i64 @f3() {
  %_funcall782 = call i64 @f4()
  ret i64 %_funcall782
}

define i64 @f4() {
  %_funcall781 = call i64 @f5()
  ret i64 %_funcall781
}

define i64 @f5() {
  %_funcall780 = call i64 @f6()
  ret i64 %_funcall780
}

define i64 @f6() {
  %_funcall779 = call i64 @f7()
  ret i64 %_funcall779
}

define i64 @f7() {
  %_funcall778 = call i64 @f8()
  ret i64 %_funcall778
}

define i64 @f8() {
  %_funcall777 = call i64 @f9()
  ret i64 %_funcall777
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc772 = alloca i64
  %_argv773 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc772
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv773
  %_funcall776 = call i64 @f1()
  ret i64 %_funcall776
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
