; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str2933 = alloca i8*
  %_start2934 = alloca i64
  %_len2935 = alloca i64
  %_arr2941 = alloca { i64, [0 x i64] }*
  %_r2946 = alloca { i64, [0 x i64] }*
  %_i2948 = alloca i64
  store i8* %str, i8** %_str2933
  store i64 %start, i64* %_start2934
  store i64 %len, i64* %_len2935
  %_str2939 = load i8*, i8** %_str2933
  %_call2940 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2939)
  store { i64, [0 x i64] }* %_call2940, { i64, [0 x i64] }** %_arr2941
  %_len2943 = load i64, i64* %_len2935
  %_raw_array2944 = call i64* @oat_alloc_array(i64 %_len2943)
  %_array2945 = bitcast i64* %_raw_array2944 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2945, { i64, [0 x i64] }** %_r2946
  store i64 0, i64* %_i2948
  br label %_for_cond2950
_for_cond2950:
  %_i2953 = load i64, i64* %_i2948
  %_len2954 = load i64, i64* %_len2935
  %_bop2955 = icmp slt i64 %_i2953, %_len2954
  br i1 %_bop2955, label %_for_body2951, label %_for_exit2952
_for_body2951:
  %_arr2956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2941
  %_i2957 = load i64, i64* %_i2948
  %_start2958 = load i64, i64* %_start2934
  %_bop2959 = add i64 %_i2957, %_start2958
  %_gep2960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2956, i32 0, i32 1, i64 %_bop2959
  %_load2961 = load i64, i64* %_gep2960
  %_r2962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2946
  %_i2963 = load i64, i64* %_i2948
  %_gep2964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r2962, i32 0, i32 1, i64 %_i2963
  store i64 %_load2961, i64* %_gep2964
  %_i2966 = load i64, i64* %_i2948
  %_bop2967 = add i64 %_i2966, 1
  store i64 %_bop2967, i64* %_i2948
  br label %_for_cond2950
_for_exit2952:
  %_r2969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2946
  %_call2970 = call i8* @string_of_array({ i64, [0 x i64] }* %_r2969)
  ret i8* %_call2970
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2924 = alloca i64
  %_argv2925 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2924
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2925
  %_argv2928 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2925
  %_gep2929 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2928, i32 0, i32 1, i32 1
  %_load2930 = load i8*, i8** %_gep2929
  %_call2931 = call i8* @sub(i8* %_load2930, i64 3, i64 5)
  call void @print_string(i8* %_call2931)
  ret i64 0
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
