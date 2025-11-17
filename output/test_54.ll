; generated from: ./sharedtests/nicdard/neg.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x602 = alloca i64
  %_y606 = alloca i64
  %_argc598 = alloca i64
  %_argv599 = alloca { i64, [0 x i8*] }*
  store i64 10, i64* %_x602
  %_x604 = load i64, i64* %_x602
  %_uop605 = sub i64 0, %_x604
  store i64 %_uop605, i64* %_y606
  %_y608 = load i64, i64* %_y606
  ret i64 %_y608
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
