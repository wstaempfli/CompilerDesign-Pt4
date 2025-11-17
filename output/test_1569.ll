; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc33 = alloca i64
  %_argv34 = alloca { i64, [0 x i8*] }*
  %_x37 = alloca i64
  %_i39 = alloca i64
  store i64 %argc, i64* %_argc33
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv34
  store i64 0, i64* %_x37
  store i64 0, i64* %_i39
  br label %_for_cond41
_for_cond41:
  %_i44 = load i64, i64* %_i39
  %_bop45 = icmp slt i64 %_i44, 3
  br i1 %_bop45, label %_for_body42, label %_for_exit43
_for_body42:
  %_x46 = load i64, i64* %_x37
  %_bop47 = add i64 %_x46, 2
  store i64 %_bop47, i64* %_x37
  %_i49 = load i64, i64* %_i39
  %_bop50 = add i64 %_i49, 1
  store i64 %_bop50, i64* %_i39
  br label %_for_cond41
_for_exit43:
  %_x52 = load i64, i64* %_x37
  ret i64 %_x52
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
