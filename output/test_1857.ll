; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str2796 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2792 = alloca i64
  %_argv2793 = alloca { i64, [0 x i8*] }*
  %_str2798 = alloca i8*
  %_arr2802 = alloca { i64, [0 x i64] }*
  %_s2804 = alloca i64
  %_i2806 = alloca i64
  store i64 %argc, i64* %_argc2792
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2793
  %_str2797 = bitcast [6 x i8]* @_str2796 to i8*
  store i8* %_str2797, i8** %_str2798
  %_str2800 = load i8*, i8** %_str2798
  %_funcall2801 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2800)
  store { i64, [0 x i64] }* %_funcall2801, { i64, [0 x i64] }** %_arr2802
  store i64 0, i64* %_s2804
  store i64 0, i64* %_i2806
  br label %_for_cond2808
_for_cond2808:
  %_i2811 = load i64, i64* %_i2806
  %_bop2812 = icmp slt i64 %_i2811, 5
  br i1 %_bop2812, label %_for_body2809, label %_for_exit2810
_for_body2809:
  %_s2813 = load i64, i64* %_s2804
  %_arr2814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2802
  %_i2815 = load i64, i64* %_i2806
  %_2816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2814, i32 0, i32 1, i64 %_i2815
  %_2817 = load i64, i64* %_2816
  %_bop2818 = add i64 %_s2813, %_2817
  store i64 %_bop2818, i64* %_s2804
  %_i2820 = load i64, i64* %_i2806
  %_bop2821 = add i64 %_i2820, 1
  store i64 %_bop2821, i64* %_i2806
  br label %_for_cond2808
_for_exit2810:
  %_s2823 = load i64, i64* %_s2804
  ret i64 %_s2823
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
