; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_call215 = call i64 @f2()
  ret i64 %_call215
}

define i64 @f2() {
  %_call214 = call i64 @f3()
  ret i64 %_call214
}

define i64 @f3() {
  %_call213 = call i64 @f4()
  ret i64 %_call213
}

define i64 @f4() {
  %_call212 = call i64 @f5()
  ret i64 %_call212
}

define i64 @f5() {
  %_call211 = call i64 @f6()
  ret i64 %_call211
}

define i64 @f6() {
  %_call210 = call i64 @f7()
  ret i64 %_call210
}

define i64 @f7() {
  %_call209 = call i64 @f8()
  ret i64 %_call209
}

define i64 @f8() {
  %_call208 = call i64 @f9()
  ret i64 %_call208
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc203 = alloca i64
  %_argv204 = alloca { i64, [0 x i8*] }*
  %_call207 = call i64 @f1()
  ret i64 %_call207
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
