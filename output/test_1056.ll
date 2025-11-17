; generated from: ./sharedtests/nicdard/while1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7444 = alloca i64
  %_argv7445 = alloca { i64, [0 x i8*] }*
  %_x7449 = alloca i64
  store i64 %argc, i64* %_argc7444
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7445
  %_uop7448 = sub i64 0, 10
  store i64 %_uop7448, i64* %_x7449
  br label %_while_cond7451
_while_cond7451:
  %_x7454 = load i64, i64* %_x7449
  %_bop7455 = icmp sle i64 %_x7454, 0
  br i1 %_bop7455, label %_while_body7452, label %_while_exit7453
_while_body7452:
  %_x7456 = load i64, i64* %_x7449
  %_bop7457 = add i64 %_x7456, 1
  store i64 %_bop7457, i64* %_x7449
  br label %_while_cond7451
_while_exit7453:
  %_x7459 = load i64, i64* %_x7449
  ret i64 %_x7459
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
