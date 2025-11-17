; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2772 = alloca i64
  %_argv2773 = alloca { i64, [0 x i8*] }*
  %_arr12788 = alloca { i64, [0 x i64] }*
  %_str2792 = alloca i8*
  %_arr22796 = alloca { i64, [0 x i64] }*
  %_s2798 = alloca i64
  %_i2800 = alloca i64
  store i64 %argc, i64* %_argc2772
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2773
  %_raw_array2776 = call i64* @oat_alloc_array(i64 5)
  %_array2777 = bitcast i64* %_raw_array2776 to { i64, [0 x i64] }*
  %_gep_lit2778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2777, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep_lit2778
  %_gep_lit2780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2777, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep_lit2780
  %_gep_lit2782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2777, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep_lit2782
  %_gep_lit2784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2777, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep_lit2784
  %_gep_lit2786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2777, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep_lit2786
  store { i64, [0 x i64] }* %_array2777, { i64, [0 x i64] }** %_arr12788
  %_arr12790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12788
  %_call2791 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12790)
  store i8* %_call2791, i8** %_str2792
  %_str2794 = load i8*, i8** %_str2792
  %_call2795 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2794)
  store { i64, [0 x i64] }* %_call2795, { i64, [0 x i64] }** %_arr22796
  store i64 0, i64* %_s2798
  store i64 0, i64* %_i2800
  br label %_for_cond2802
_for_cond2802:
  %_i2805 = load i64, i64* %_i2800
  %_bop2806 = icmp slt i64 %_i2805, 5
  br i1 %_bop2806, label %_for_body2803, label %_for_exit2804
_for_body2803:
  %_s2807 = load i64, i64* %_s2798
  %_arr22808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22796
  %_i2809 = load i64, i64* %_i2800
  %_gep2810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22808, i32 0, i32 1, i64 %_i2809
  %_load2811 = load i64, i64* %_gep2810
  %_bop2812 = add i64 %_s2807, %_load2811
  store i64 %_bop2812, i64* %_s2798
  %_i2814 = load i64, i64* %_i2800
  %_bop2815 = add i64 %_i2814, 1
  store i64 %_bop2815, i64* %_i2800
  br label %_for_cond2802
_for_exit2804:
  %_s2817 = load i64, i64* %_s2798
  ret i64 %_s2817
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
