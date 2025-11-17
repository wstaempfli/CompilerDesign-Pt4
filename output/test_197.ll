; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc705 = alloca i64
  %_argv706 = alloca { i64, [0 x i8*] }*
  %_arr727 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc705
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv706
  %_raw_array709 = call i64* @oat_alloc_array(i64 2)
  %_array710 = bitcast i64* %_raw_array709 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array711 = call i64* @oat_alloc_array(i64 2)
  %_array712 = bitcast i64* %_raw_array711 to { i64, [0 x i64] }*
  store i64 1, i64* %_gep713
  %_gep713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array712, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep715
  %_gep715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array712, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array712, { i64, [0 x i64] }** %_gep717
  %_gep717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array710, i32 0, i32 1, i32 0
  %_raw_array719 = call i64* @oat_alloc_array(i64 2)
  %_array720 = bitcast i64* %_raw_array719 to { i64, [0 x i64] }*
  store i64 3, i64* %_gep721
  %_gep721 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep723
  %_gep723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array720, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array720, { i64, [0 x i64] }** %_gep725
  %_gep725 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array710, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array710, { i64, [0 x { i64, [0 x i64] }*] }** %_arr727
  %_arr729 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr727
  %_load731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr730
  %_gep_ptr730 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr729, i32 0, i32 1, i32 1
  %_load733 = load i64, i64* %_gep_ptr732
  %_gep_ptr732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load731, i32 0, i32 1, i32 1
  ret i64 %_load733
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
