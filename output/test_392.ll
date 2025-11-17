; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i2976 = alloca i64
  %_r2978 = alloca i64
  store i64 %i, i64* %_i2976
  store i64 0, i64* %_r2978
  %_i2983 = load i64, i64* %_i2976
  %_bop2984 = icmp eq i64 %_i2983, 0
  br i1 %_bop2984, label %_then2980, label %_else2981
_then2980:
  store i64 1, i64* %_r2978
  br label %_join2982
_else2981:
  %_i2986 = load i64, i64* %_i2976
  %_i2987 = load i64, i64* %_i2976
  %_bop2988 = sub i64 %_i2987, 1
  %_call2989 = call i64 @f(i64 %_bop2988)
  %_bop2990 = mul i64 %_i2986, %_call2989
  store i64 %_bop2990, i64* %_r2978
  br label %_join2982
_join2982:
  %_r2992 = load i64, i64* %_r2978
  ret i64 %_r2992
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2971 = alloca i64
  %_argv2972 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2971
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2972
  %_call2975 = call i64 @f(i64 5)
  ret i64 %_call2975
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
