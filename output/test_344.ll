; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc643 = alloca i64
  %_argv644 = alloca { i64, [0 x i8*] }*
  %_a665 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc643
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv644
  %_raw_array647 = call i64* @oat_alloc_array(i64 2)
  %_array648 = bitcast i64* %_raw_array647 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array649 = call i64* @oat_alloc_array(i64 2)
  %_array650 = bitcast i64* %_raw_array649 to { i64, [0 x i64] }*
  %_gep_lit651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array650, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit651
  %_gep_lit653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array650, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit653
  %_gep_lit655 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array648, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array650, { i64, [0 x i64] }** %_gep_lit655
  %_raw_array657 = call i64* @oat_alloc_array(i64 2)
  %_array658 = bitcast i64* %_raw_array657 to { i64, [0 x i64] }*
  %_gep_lit659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array658, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit659
  %_gep_lit661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array658, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit661
  %_gep_lit663 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array648, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array658, { i64, [0 x i64] }** %_gep_lit663
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array648, { i64, [0 x { i64, [0 x i64] }*] }** %_a665
  %_a667 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a665
  %_gep668 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a667, i32 0, i32 1, i32 0
  %_load669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep668
  %_gep670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load669, i32 0, i32 1, i32 1
  %_load671 = load i64, i64* %_gep670
  ret i64 %_load671
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
