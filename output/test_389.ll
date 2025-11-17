; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str2853 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2849 = alloca i64
  %_argv2850 = alloca { i64, [0 x i8*] }*
  %_arr2856 = alloca { i64, [0 x i64] }*
  %_sum2858 = alloca i64
  %_i2860 = alloca i64
  %_i2875 = alloca i64
  store i64 %argc, i64* %_argc2849
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2850
  %_strptr2854 = bitcast [11 x i8]* @_str2853 to i8*
  %_call2855 = call { i64, [0 x i64] }* @array_of_string(i8* %_strptr2854)
  store { i64, [0 x i64] }* %_call2855, { i64, [0 x i64] }** %_arr2856
  store i64 0, i64* %_sum2858
  store i64 0, i64* %_i2860
  br label %_for_cond2862
_for_cond2862:
  %_i2865 = load i64, i64* %_i2860
  %_bop2866 = icmp slt i64 %_i2865, 10
  br i1 %_bop2866, label %_for_body2863, label %_for_exit2864
_for_body2863:
  %_i2867 = load i64, i64* %_i2860
  %_arr2868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2856
  %_i2869 = load i64, i64* %_i2860
  %_gep2870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2868, i32 0, i32 1, i64 %_i2869
  store i64 %_i2867, i64* %_gep2870
  %_i2872 = load i64, i64* %_i2860
  %_bop2873 = add i64 %_i2872, 1
  store i64 %_bop2873, i64* %_i2860
  br label %_for_cond2862
_for_exit2864:
  store i64 0, i64* %_i2875
  br label %_for_cond2877
_for_cond2877:
  %_i2880 = load i64, i64* %_i2875
  %_bop2881 = icmp slt i64 %_i2880, 10
  br i1 %_bop2881, label %_for_body2878, label %_for_exit2879
_for_body2878:
  %_sum2882 = load i64, i64* %_sum2858
  %_arr2883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2856
  %_i2884 = load i64, i64* %_i2875
  %_gep2885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2883, i32 0, i32 1, i64 %_i2884
  %_load2886 = load i64, i64* %_gep2885
  %_bop2887 = add i64 %_sum2882, %_load2886
  store i64 %_bop2887, i64* %_sum2858
  %_i2889 = load i64, i64* %_i2875
  %_bop2890 = add i64 %_i2889, 1
  store i64 %_bop2890, i64* %_i2875
  br label %_for_cond2877
_for_exit2879:
  %_sum2892 = load i64, i64* %_sum2858
  ret i64 %_sum2892
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
