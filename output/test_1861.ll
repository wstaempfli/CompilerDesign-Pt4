; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2928 = alloca i64
  %_argv2929 = alloca { i64, [0 x i8*] }*
  %_i2932 = alloca i64
  store i64 %argc, i64* %_argc2928
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2929
  store i64 1, i64* %_i2932
  br label %_for_cond2934
_for_cond2934:
  %_i2937 = load i64, i64* %_i2932
  %_argc2938 = load i64, i64* %_argc2928
  %_bop2939 = icmp slt i64 %_i2937, %_argc2938
  br i1 %_bop2939, label %_for_body2935, label %_for_exit2936
_for_body2935:
  %_argv2940 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2929
  %_i2941 = load i64, i64* %_i2932
  %_2942 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2940, i32 0, i32 1, i64 %_i2941
  %_2943 = load i8*, i8** %_2942
  call void @print_string(i8* %_2943)
  %_i2945 = load i64, i64* %_i2932
  %_bop2946 = add i64 %_i2945, 1
  store i64 %_bop2946, i64* %_i2932
  br label %_for_cond2934
_for_exit2936:
  %_argc2948 = load i64, i64* %_argc2928
  ret i64 %_argc2948
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
