; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc513 = alloca i64
  %_argv514 = alloca { i64, [0 x i8*] }*
  %_i517 = alloca i64
  store i64 %argc, i64* %_argc513
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv514
  store i64 0, i64* %_i517
  %_b522 = load i1, i1* @b
  br i1 %_b522, label %_then519, label %_else520
_then519:
  store i64 1, i64* %_i517
  br label %_ifend521
_else520:
  br label %_ifend521
_ifend521:
  %_i524 = load i64, i64* %_i517
  ret i64 %_i524
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
