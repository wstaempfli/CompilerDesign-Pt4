; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_call400 = call i64 @f2()
  ret i64 %_call400
}

define i64 @f2() {
  %_call399 = call i64 @f3()
  ret i64 %_call399
}

define i64 @f3() {
  %_call398 = call i64 @f4()
  ret i64 %_call398
}

define i64 @f4() {
  %_call397 = call i64 @f5()
  ret i64 %_call397
}

define i64 @f5() {
  %_call396 = call i64 @f6()
  ret i64 %_call396
}

define i64 @f6() {
  %_call395 = call i64 @f7()
  ret i64 %_call395
}

define i64 @f7() {
  %_call394 = call i64 @f8()
  ret i64 %_call394
}

define i64 @f8() {
  %_call393 = call i64 @f9()
  ret i64 %_call393
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc388 = alloca i64
  %_argv389 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc388
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv389
  %_call392 = call i64 @f1()
  ret i64 %_call392
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
