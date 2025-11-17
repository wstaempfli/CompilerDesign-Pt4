; generated from: ./sharedtests/nicdard/arlocal3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7864 = alloca i64
  %_argv7866 = alloca { i64, [0 x i8*] }*
  %_arr7876 = alloca { i64, [0 x i64] }*
  %_x7880 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc7864
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7866
  %_raw_array7868 = call i64* @oat_alloc_array(i64 3)
  %_array7869 = bitcast i64* %_raw_array7868 to { i64, [0 x i64] }*
  %_gep_lit7870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7869, i32 0, i32 1, i32 0
  store i64 12, i64* %_gep_lit7870
  %_gep_lit7872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7869, i32 0, i32 1, i32 1
  store i64 23, i64* %_gep_lit7872
  %_gep_lit7874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7869, i32 0, i32 1, i32 2
  store i64 32, i64* %_gep_lit7874
  store { i64, [0 x i64] }* %_array7869, { i64, [0 x i64] }** %_arr7876
  %_raw_array7878 = call i64* @oat_alloc_array(i64 3)
  %_array7879 = bitcast i64* %_raw_array7878 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7879, { i64, [0 x i64] }** %_x7880
  %_load7882 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7880
  store { i64, [0 x i64] }* %_load7882, { i64, [0 x i64] }** %_arr7876
  %_load7884 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7880
  %_gep7885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7884, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep7885
  %_load7887 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr7876
  %_gep7888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7887, i32 0, i32 1, i32 2
  %_load7889 = load i64, i64* %_gep7888
  ret i64 %_load7889
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
