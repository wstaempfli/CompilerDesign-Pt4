; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %str, i64 %start, i64 %len) {
  %_str3033 = alloca i8*
  %_start3034 = alloca i64
  %_len3035 = alloca i64
  %_arr3041 = alloca { i64, [0 x i64] }*
  %_r3046 = alloca { i64, [0 x i64] }*
  %_i3048 = alloca i64
  store i8* %str, i8** %_str3033
  store i64 %start, i64* %_start3034
  store i64 %len, i64* %_len3035
  %_str3039 = load i8*, i8** %_str3033
  %_call3040 = call { i64, [0 x i64] }* @array_of_string(i8* %_str3039)
  store { i64, [0 x i64] }* %_call3040, { i64, [0 x i64] }** %_arr3041
  %_len3043 = load i64, i64* %_len3035
  %_raw_array3044 = call i64* @oat_alloc_array(i64 %_len3043)
  %_array3045 = bitcast i64* %_raw_array3044 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3045, { i64, [0 x i64] }** %_r3046
  store i64 0, i64* %_i3048
  br label %_for_cond3050
_for_cond3050:
  %_i3053 = load i64, i64* %_i3048
  %_len3054 = load i64, i64* %_len3035
  %_bop3055 = icmp slt i64 %_i3053, %_len3054
  br i1 %_bop3055, label %_for_body3051, label %_for_exit3052
_for_body3051:
  %_arr3056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3041
  %_i3057 = load i64, i64* %_i3048
  %_start3058 = load i64, i64* %_start3034
  %_bop3059 = add i64 %_i3057, %_start3058
  %_load3061 = load i64, i64* %_gep_ptr3060
  %_gep_ptr3060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3056, i32 0, i32 1, i64 %_bop3059
  %_r3062 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3046
  %_i3063 = load i64, i64* %_i3048
  %_gep3064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r3062, i32 0, i32 1, i64 %_i3063
  store i64 %_load3061, i64* %_gep3064
  %_i3066 = load i64, i64* %_i3048
  %_bop3067 = add i64 %_i3066, 1
  store i64 %_bop3067, i64* %_i3048
  br label %_for_cond3050
_for_exit3052:
  %_r3069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r3046
  %_call3070 = call i8* @string_of_array({ i64, [0 x i64] }* %_r3069)
  ret i8* %_call3070
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3024 = alloca i64
  %_argv3025 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc3024
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3025
  %_argv3028 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv3025
  %_load3030 = load i8*, i8** %_gep_ptr3029
  %_gep_ptr3029 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv3028, i32 0, i32 1, i32 1
  %_call3031 = call i8* @sub(i8* %_load3030, i64 3, i64 5)
  call void @print_string(i8* %_call3031)
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
