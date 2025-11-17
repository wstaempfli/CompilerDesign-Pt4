; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1

define i64 @f() {
  %_a2709 = load i64, i64* @a
  %_bop2710 = add i64 %_a2709, 1
  store i64 %_bop2710, i64* @a
  %_a2712 = load i64, i64* @a
  ret i64 %_a2712
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2685 = alloca i64
  %_argv2686 = alloca { i64, [0 x i8*] }*
  %_b2692 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2685
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2686
  %_call2689 = call i64 @f()
  %_raw_array2690 = call i64* @oat_alloc_array(i64 %_call2689)
  %_array2691 = bitcast i64* %_raw_array2690 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2691, { i64, [0 x i64] }** %_b2692
  store i64 0, i64* %_elem_ptr2695
  %_elem_ptr2695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2694, i32 0, i32 1, i32 0
  %_b2694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2692
  store i64 1, i64* %_elem_ptr2698
  %_elem_ptr2698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2697, i32 0, i32 1, i32 1
  %_b2697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2692
  %_a2700 = load i64, i64* @a
  %_b2701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2692
  %_gep2702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2701, i32 0, i32 1, i32 0
  %_load2703 = load i64, i64* %_gep2702
  %_bop2704 = add i64 %_a2700, %_load2703
  %_b2705 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2692
  %_gep2706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2705, i32 0, i32 1, i32 1
  %_load2707 = load i64, i64* %_gep2706
  %_bop2708 = add i64 %_bop2704, %_load2707
  ret i64 %_bop2708
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
