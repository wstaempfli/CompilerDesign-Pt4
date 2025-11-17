; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr771 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr771
  %_arr773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr771
  ret { i64, [0 x i64] }* %_arr773
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc734 = alloca i64
  %_argv735 = alloca { i64, [0 x i8*] }*
  %_garr760 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr766 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc734
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv735
  %_raw_array738 = call i64* @oat_alloc_array(i64 2)
  %_array739 = bitcast i64* %_raw_array738 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array740 = call i64* @oat_alloc_array(i64 3)
  %_array741 = bitcast i64* %_raw_array740 to { i64, [0 x i64] }*
  store i64 1, i64* %_gep742
  %_gep742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array741, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep744
  %_gep744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array741, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep746
  %_gep746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array741, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array741, { i64, [0 x i64] }** %_gep748
  %_gep748 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array739, i32 0, i32 1, i32 0
  %_raw_array750 = call i64* @oat_alloc_array(i64 3)
  %_array751 = bitcast i64* %_raw_array750 to { i64, [0 x i64] }*
  store i64 4, i64* %_gep752
  %_gep752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array751, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep754
  %_gep754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array751, i32 0, i32 1, i32 1
  store i64 6, i64* %_gep756
  %_gep756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array751, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array751, { i64, [0 x i64] }** %_gep758
  %_gep758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array739, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array739, { i64, [0 x { i64, [0 x i64] }*] }** %_garr760
  %_garr762 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr760
  %_load764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr763
  %_gep_ptr763 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr762, i32 0, i32 1, i32 1
  %_call765 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_load764)
  store { i64, [0 x i64] }* %_call765, { i64, [0 x i64] }** %_arr766
  %_arr768 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr766
  %_load770 = load i64, i64* %_gep_ptr769
  %_gep_ptr769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr768, i32 0, i32 1, i32 1
  ret i64 %_load770
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
