; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2872 = alloca i64
  %_argv2873 = alloca { i64, [0 x i8*] }*
  %_arr12888 = alloca { i64, [0 x i64] }*
  %_str2892 = alloca i8*
  %_arr22896 = alloca { i64, [0 x i64] }*
  %_s2898 = alloca i64
  %_i2900 = alloca i64
  store i64 %argc, i64* %_argc2872
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2873
  %_raw_array2876 = call i64* @oat_alloc_array(i64 5)
  %_array2877 = bitcast i64* %_raw_array2876 to { i64, [0 x i64] }*
  %_gep_lit2878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2877, i32 0, i32 1, i32 0
  store i64 111, i64* %_gep_lit2878
  %_gep_lit2880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2877, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep_lit2880
  %_gep_lit2882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2877, i32 0, i32 1, i32 2
  store i64 113, i64* %_gep_lit2882
  %_gep_lit2884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2877, i32 0, i32 1, i32 3
  store i64 114, i64* %_gep_lit2884
  %_gep_lit2886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2877, i32 0, i32 1, i32 4
  store i64 115, i64* %_gep_lit2886
  store { i64, [0 x i64] }* %_array2877, { i64, [0 x i64] }** %_arr12888
  %_arr12890 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12888
  %_call2891 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12890)
  store i8* %_call2891, i8** %_str2892
  %_str2894 = load i8*, i8** %_str2892
  %_call2895 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2894)
  store { i64, [0 x i64] }* %_call2895, { i64, [0 x i64] }** %_arr22896
  store i64 0, i64* %_s2898
  store i64 0, i64* %_i2900
  br label %_while_cond2902
_while_cond2902:
  %_i2905 = load i64, i64* %_i2900
  %_bop2906 = icmp slt i64 %_i2905, 5
  br i1 %_bop2906, label %_while_body2903, label %_while_end2904
_while_body2903:
  %_s2907 = load i64, i64* %_s2898
  %_arr22908 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22896
  %_i2909 = load i64, i64* %_i2900
  %_gep2910 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22908, i32 0, i32 1, i64 %_i2909
  %_load2911 = load i64, i64* %_gep2910
  %_bop2912 = add i64 %_s2907, %_load2911
  store i64 %_bop2912, i64* %_s2898
  %_i2914 = load i64, i64* %_i2900
  %_bop2915 = add i64 %_i2914, 1
  store i64 %_bop2915, i64* %_i2900
  br label %_while_end2904
_while_end2904:
  %_s2917 = load i64, i64* %_s2898
  ret i64 %_s2917
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
