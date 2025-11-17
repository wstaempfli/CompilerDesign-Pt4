; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str2953 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2949 = alloca i64
  %_argv2950 = alloca { i64, [0 x i8*] }*
  %_arr2956 = alloca { i64, [0 x i64] }*
  %_sum2958 = alloca i64
  %_i2960 = alloca i64
  %_i2975 = alloca i64
  store i64 %argc, i64* %_argc2949
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2950
  %_strptr2954 = bitcast [11 x i8]* @_str2953 to i8*
  %_call2955 = call { i64, [0 x i64] }* @array_of_string(i8* %_strptr2954)
  store { i64, [0 x i64] }* %_call2955, { i64, [0 x i64] }** %_arr2956
  store i64 0, i64* %_sum2958
  store i64 0, i64* %_i2960
  br label %_for_cond2962
_for_cond2962:
  %_i2965 = load i64, i64* %_i2960
  %_bop2966 = icmp slt i64 %_i2965, 10
  br i1 %_bop2966, label %_for_body2963, label %_for_exit2964
_for_body2963:
  %_i2967 = load i64, i64* %_i2960
  %_arr2968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2956
  %_i2969 = load i64, i64* %_i2960
  %_gep2970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2968, i32 0, i32 1, i64 %_i2969
  store i64 %_i2967, i64* %_gep2970
  %_i2972 = load i64, i64* %_i2960
  %_bop2973 = add i64 %_i2972, 1
  store i64 %_bop2973, i64* %_i2960
  br label %_for_cond2962
_for_exit2964:
  store i64 0, i64* %_i2975
  br label %_for_cond2977
_for_cond2977:
  %_i2980 = load i64, i64* %_i2975
  %_bop2981 = icmp slt i64 %_i2980, 10
  br i1 %_bop2981, label %_for_body2978, label %_for_exit2979
_for_body2978:
  %_sum2982 = load i64, i64* %_sum2958
  %_arr2983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2956
  %_i2984 = load i64, i64* %_i2975
  %_load2986 = load i64, i64* %_gep_ptr2985
  %_gep_ptr2985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2983, i32 0, i32 1, i64 %_i2984
  %_bop2987 = add i64 %_sum2982, %_load2986
  store i64 %_bop2987, i64* %_sum2958
  %_i2989 = load i64, i64* %_i2975
  %_bop2990 = add i64 %_i2989, 1
  store i64 %_bop2990, i64* %_i2975
  br label %_for_cond2977
_for_exit2979:
  %_sum2992 = load i64, i64* %_sum2958
  ret i64 %_sum2992
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
