; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc743 = alloca i64
  %_argv744 = alloca { i64, [0 x i8*] }*
  %_a765 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc743
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv744
  %_raw_array747 = call i64* @oat_alloc_array(i64 2)
  %_array748 = bitcast i64* %_raw_array747 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array749 = call i64* @oat_alloc_array(i64 2)
  %_array750 = bitcast i64* %_raw_array749 to { i64, [0 x i64] }*
  store i64 1, i64* %_gep751
  %_gep751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array750, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep753
  %_gep753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array750, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array750, { i64, [0 x i64] }** %_gep755
  %_gep755 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array748, i32 0, i32 1, i32 0
  %_raw_array757 = call i64* @oat_alloc_array(i64 2)
  %_array758 = bitcast i64* %_raw_array757 to { i64, [0 x i64] }*
  store i64 3, i64* %_gep759
  %_gep759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep761
  %_gep761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array758, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array758, { i64, [0 x i64] }** %_gep763
  %_gep763 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array748, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array748, { i64, [0 x { i64, [0 x i64] }*] }** %_a765
  %_a767 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a765
  %_load769 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr768
  %_gep_ptr768 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a767, i32 0, i32 1, i32 0
  %_load771 = load i64, i64* %_gep_ptr770
  %_gep_ptr770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load769, i32 0, i32 1, i32 1
  ret i64 %_load771
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
