; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2639 = load i64, i64* @a
  %_bop2640 = add i64 %_a2639, 1
  store i64 %_bop2640, i64* @a
  %_a2642 = load i64, i64* @a
  ret i64 %_a2642
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2613 = alloca i64
  %_argv2614 = alloca { i64, [0 x i8*] }*
  %_b2620 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2613
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2614
  %_call2617 = call i64 @f()
  %_raw_array2618 = call i64* @oat_alloc_array(i64 %_call2617)
  %_array2619 = bitcast i64* %_raw_array2618 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2619, { i64, [0 x i64] }** %_b2620
  %_call2622 = call i64 @f()
  %_b2623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2620
  %_gep2624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2623, i32 0, i32 1, i32 0
  store i64 %_call2622, i64* %_gep2624
  %_call2626 = call i64 @f()
  %_b2627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2620
  %_gep2628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2627, i32 0, i32 1, i32 1
  store i64 %_call2626, i64* %_gep2628
  %_a2630 = load i64, i64* @a
  %_b2631 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2620
  %_gep2632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2631, i32 0, i32 1, i32 0
  %_load2633 = load i64, i64* %_gep2632
  %_bop2634 = add i64 %_a2630, %_load2633
  %_b2635 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2620
  %_gep2636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2635, i32 0, i32 1, i32 1
  %_load2637 = load i64, i64* %_gep2636
  %_bop2638 = add i64 %_bop2634, %_load2637
  ret i64 %_bop2638
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
