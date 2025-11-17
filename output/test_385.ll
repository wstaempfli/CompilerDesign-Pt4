; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2724 = alloca i64
  %_argv2725 = alloca { i64, [0 x i8*] }*
  %_arr12740 = alloca { i64, [0 x i64] }*
  %_str2744 = alloca i8*
  %_arr22748 = alloca { i64, [0 x i64] }*
  %_s2750 = alloca i64
  %_i2752 = alloca i64
  store i64 %argc, i64* %_argc2724
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2725
  %_raw_array2728 = call i64* @oat_alloc_array(i64 5)
  %_array2729 = bitcast i64* %_raw_array2728 to { i64, [0 x i64] }*
  %_gep_lit2730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2729, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep_lit2730
  %_gep_lit2732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2729, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep_lit2732
  %_gep_lit2734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2729, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep_lit2734
  %_gep_lit2736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2729, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep_lit2736
  %_gep_lit2738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2729, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep_lit2738
  store { i64, [0 x i64] }* %_array2729, { i64, [0 x i64] }** %_arr12740
  %_arr12742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12740
  %_call2743 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12742)
  store i8* %_call2743, i8** %_str2744
  %_str2746 = load i8*, i8** %_str2744
  %_call2747 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2746)
  store { i64, [0 x i64] }* %_call2747, { i64, [0 x i64] }** %_arr22748
  store i64 0, i64* %_s2750
  store i64 0, i64* %_i2752
  br label %_for_cond2754
_for_cond2754:
  %_i2757 = load i64, i64* %_i2752
  %_bop2758 = icmp slt i64 %_i2757, 5
  br i1 %_bop2758, label %_for_body2755, label %_for_exit2756
_for_body2755:
  %_s2759 = load i64, i64* %_s2750
  %_arr22760 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22748
  %_i2761 = load i64, i64* %_i2752
  %_gep2762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22760, i32 0, i32 1, i64 %_i2761
  %_load2763 = load i64, i64* %_gep2762
  %_bop2764 = add i64 %_s2759, %_load2763
  store i64 %_bop2764, i64* %_s2750
  %_i2766 = load i64, i64* %_i2752
  %_bop2767 = add i64 %_i2766, 1
  store i64 %_bop2767, i64* %_i2752
  br label %_for_cond2754
_for_exit2756:
  %_s2769 = load i64, i64* %_s2750
  call void @print_int(i64 %_s2769)
  %_s2771 = load i64, i64* %_s2750
  ret i64 %_s2771
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
