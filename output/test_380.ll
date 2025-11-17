; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2609 = load i64, i64* @a
  %_bop2610 = add i64 %_a2609, 1
  store i64 %_bop2610, i64* @a
  %_a2612 = load i64, i64* @a
  ret i64 %_a2612
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2585 = alloca i64
  %_argv2586 = alloca { i64, [0 x i8*] }*
  %_b2592 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2585
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2586
  %_call2589 = call i64 @f()
  %_raw_array2590 = call i64* @oat_alloc_array(i64 %_call2589)
  %_array2591 = bitcast i64* %_raw_array2590 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2591, { i64, [0 x i64] }** %_b2592
  %_b2594 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2592
  %_gep2595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2594, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep2595
  %_b2597 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2592
  %_gep2598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2597, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep2598
  %_a2600 = load i64, i64* @a
  %_b2601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2592
  %_gep2602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2601, i32 0, i32 1, i32 0
  %_load2603 = load i64, i64* %_gep2602
  %_bop2604 = add i64 %_a2600, %_load2603
  %_b2605 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2592
  %_gep2606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2605, i32 0, i32 1, i32 1
  %_load2607 = load i64, i64* %_gep2606
  %_bop2608 = add i64 %_bop2604, %_load2607
  ret i64 %_bop2608
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
