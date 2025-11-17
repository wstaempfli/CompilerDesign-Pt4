; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2824 = alloca i64
  %_argv2825 = alloca { i64, [0 x i8*] }*
  %_arr12840 = alloca { i64, [0 x i64] }*
  %_str2844 = alloca i8*
  %_arr22848 = alloca { i64, [0 x i64] }*
  %_s2850 = alloca i64
  %_i2852 = alloca i64
  store i64 %argc, i64* %_argc2824
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2825
  %_raw_array2828 = call i64* @oat_alloc_array(i64 5)
  %_array2829 = bitcast i64* %_raw_array2828 to { i64, [0 x i64] }*
  store i64 111, i64* %_gep2830
  %_gep2830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 0
  store i64 112, i64* %_gep2832
  %_gep2832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 1
  store i64 113, i64* %_gep2834
  %_gep2834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 2
  store i64 114, i64* %_gep2836
  %_gep2836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 3
  store i64 115, i64* %_gep2838
  %_gep2838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2829, i32 0, i32 1, i32 4
  store { i64, [0 x i64] }* %_array2829, { i64, [0 x i64] }** %_arr12840
  %_arr12842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12840
  %_call2843 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12842)
  store i8* %_call2843, i8** %_str2844
  %_str2846 = load i8*, i8** %_str2844
  %_call2847 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2846)
  store { i64, [0 x i64] }* %_call2847, { i64, [0 x i64] }** %_arr22848
  store i64 0, i64* %_s2850
  store i64 0, i64* %_i2852
  br label %_for_cond2854
_for_cond2854:
  %_i2857 = load i64, i64* %_i2852
  %_bop2858 = icmp slt i64 %_i2857, 5
  br i1 %_bop2858, label %_for_body2855, label %_for_exit2856
_for_body2855:
  %_s2859 = load i64, i64* %_s2850
  %_arr22860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22848
  %_i2861 = load i64, i64* %_i2852
  %_load2863 = load i64, i64* %_gep_ptr2862
  %_gep_ptr2862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22860, i32 0, i32 1, i64 %_i2861
  %_bop2864 = add i64 %_s2859, %_load2863
  store i64 %_bop2864, i64* %_s2850
  %_i2866 = load i64, i64* %_i2852
  %_bop2867 = add i64 %_i2866, 1
  store i64 %_bop2867, i64* %_i2852
  br label %_for_cond2854
_for_exit2856:
  %_s2869 = load i64, i64* %_s2850
  call void @print_int(i64 %_s2869)
  %_s2871 = load i64, i64* %_s2850
  ret i64 %_s2871
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
