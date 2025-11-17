; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc728 = alloca i64
  %_argv729 = alloca { i64, [0 x i8*] }*
  %_a738 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc728
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv729
  %_raw_array732 = call i64* @oat_alloc_array(i64 2)
  %_array733 = bitcast i64* %_raw_array732 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep734
  %_gep734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array733, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep736
  %_gep736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array733, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array733, { i64, [0 x i64] }** %_a738
  %_a740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a738
  %_load742 = load i64, i64* %_gep_ptr741
  %_gep_ptr741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a740, i32 0, i32 1, i32 1
  ret i64 %_load742
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
