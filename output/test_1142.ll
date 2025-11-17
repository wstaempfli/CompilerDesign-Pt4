; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_load2739 = load i64, i64* @a
  %_bop2740 = add i64 %_load2739, 1
  store i64 %_bop2740, i64* @a
  %_load2742 = load i64, i64* @a
  ret i64 %_load2742
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2713 = alloca i64
  %_argv2715 = alloca { i64, [0 x i8*] }*
  %_b2720 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2713
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2715
  %_call2717 = call i64 @f()
  %_raw_array2718 = call i64* @oat_alloc_array(i64 %_call2717)
  %_array2719 = bitcast i64* %_raw_array2718 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2719, { i64, [0 x i64] }** %_b2720
  %_call2722 = call i64 @f()
  %_load2723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2720
  %_gep2724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load2723, i32 0, i32 1, i32 0
  store i64 %_call2722, i64* %_gep2724
  %_call2726 = call i64 @f()
  %_load2727 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2720
  %_gep2728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load2727, i32 0, i32 1, i32 1
  store i64 %_call2726, i64* %_gep2728
  %_load2730 = load i64, i64* @a
  %_load2731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2720
  %_gep2732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load2731, i32 0, i32 1, i32 0
  %_load2733 = load i64, i64* %_gep2732
  %_bop2734 = add i64 %_load2730, %_load2733
  %_load2735 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2720
  %_gep2736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load2735, i32 0, i32 1, i32 1
  %_load2737 = load i64, i64* %_gep2736
  %_bop2738 = add i64 %_bop2734, %_load2737
  ret i64 %_bop2738
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
