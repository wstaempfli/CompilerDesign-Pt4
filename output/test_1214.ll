; generated from: ./sharedtests/nicdard/while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7432 = alloca i64
  %_argv7434 = alloca { i64, [0 x i8*] }*
  %_x7436 = alloca i64
  store i64 %argc, i64* %_argc7432
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7434
  store i64 0, i64* %_x7436
  br label %_while_cond7438
_while_cond7438:
  %_load7441 = load i64, i64* %_x7436
  %_bop7442 = icmp ne i64 %_load7441, 0
  br i1 %_bop7442, label %_while_body7439, label %_while_exit7440
_while_body7439:
  br label %_while_cond7438
_while_exit7440:
  %_load7443 = load i64, i64* %_x7436
  ret i64 %_load7443
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
