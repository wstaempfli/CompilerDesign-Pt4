; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x1015 = alloca i64
  %_acc1017 = alloca i64
  store i64 %x, i64* %_x1015
  store i64 1, i64* %_acc1017
  br label %_while_cond1019
_while_cond1019:
  %_x1022 = load i64, i64* %_x1015
  %_bop1023 = icmp sgt i64 %_x1022, 0
  br i1 %_bop1023, label %_while_body1020, label %_while_exit1021
_while_body1020:
  %_acc1024 = load i64, i64* %_acc1017
  %_x1025 = load i64, i64* %_x1015
  %_bop1026 = mul i64 %_acc1024, %_x1025
  store i64 %_bop1026, i64* %_acc1017
  %_x1028 = load i64, i64* %_x1015
  %_bop1029 = sub i64 %_x1028, 1
  store i64 %_bop1029, i64* %_x1015
  br label %_while_cond1019
_while_exit1021:
  %_acc1031 = load i64, i64* %_acc1017
  ret i64 %_acc1031
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1008 = alloca i64
  %_argv1009 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1008
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1009
  %_funcall1012 = call i64 @fact(i64 5)
  %_funcall1013 = call i8* @string_of_int(i64 %_funcall1012)
  call void @print_string(i8* %_funcall1013)
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
