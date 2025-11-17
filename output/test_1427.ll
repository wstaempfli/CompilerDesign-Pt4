; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2743 = alloca i64
  %_argv2744 = alloca { i64, [0 x i8*] }*
  %_str2756 = alloca i8*
  store i64 %argc, i64* %_argc2743
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2744
  %_raw_array2747 = call i64* @oat_alloc_array(i64 3)
  %_array2748 = bitcast i64* %_raw_array2747 to { i64, [0 x i64] }*
  %_gep_lit2749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2748, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep_lit2749
  %_gep_lit2751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2748, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep_lit2751
  %_gep_lit2753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2748, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep_lit2753
  %_function2755 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2748)
  store i8* %_function2755, i8** %_str2756
  %_str2758 = load i8*, i8** %_str2756
  call void @print_string(i8* %_str2758)
  ret i64 0
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
