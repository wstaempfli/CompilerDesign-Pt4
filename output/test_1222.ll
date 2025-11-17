; generated from: ./sharedtests/nicdard/for.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7544 = alloca i64
  %_argv7546 = alloca { i64, [0 x i8*] }*
  %_counter7548 = alloca i64
  %_x7550 = alloca i64
  %_y7552 = alloca i64
  store i64 %argc, i64* %_argc7544
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7546
  store i64 0, i64* %_counter7548
  store i64 0, i64* %_x7550
  store i64 10, i64* %_y7552
  br label %_for_cond7554
_for_cond7554:
  %_load7557 = load i64, i64* %_x7550
  %_bop7558 = icmp slt i64 %_load7557, 10
  br i1 %_bop7558, label %_for_body7555, label %_for_exit7556
_for_body7555:
  %_load7559 = load i64, i64* %_counter7548
  %_bop7560 = add i64 %_load7559, 1
  store i64 %_bop7560, i64* %_counter7548
  %_load7562 = load i64, i64* %_x7550
  %_bop7563 = add i64 %_load7562, 2
  store i64 %_bop7563, i64* %_x7550
  br label %_for_cond7554
_for_exit7556:
  %_load7565 = load i64, i64* %_counter7548
  ret i64 %_load7565
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
