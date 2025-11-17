; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2828 = alloca i64
  %_argv2829 = alloca { i64, [0 x i8*] }*
  %_i2832 = alloca i64
  store i64 %argc, i64* %_argc2828
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2829
  store i64 1, i64* %_i2832
  br label %_for_cond2834
_for_cond2834:
  %_i2837 = load i64, i64* %_i2832
  %_argc2838 = load i64, i64* %_argc2828
  %_bop2839 = icmp slt i64 %_i2837, %_argc2838
  br i1 %_bop2839, label %_for_body2835, label %_for_exit2836
_for_body2835:
  %_argv2840 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2829
  %_i2841 = load i64, i64* %_i2832
  %_gep2842 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2840, i32 0, i32 1, i64 %_i2841
  %_load2843 = load i8*, i8** %_gep2842
  call void @print_string(i8* %_load2843)
  %_i2845 = load i64, i64* %_i2832
  %_bop2846 = add i64 %_i2845, 1
  store i64 %_bop2846, i64* %_i2832
  br label %_for_cond2834
_for_exit2836:
  %_argc2848 = load i64, i64* %_argc2828
  ret i64 %_argc2848
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
