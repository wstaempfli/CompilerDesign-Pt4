; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2643 = alloca i64
  %_argv2644 = alloca { i64, [0 x i8*] }*
  %_str2656 = alloca i8*
  store i64 %argc, i64* %_argc2643
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2644
  %_raw_array2647 = call i64* @oat_alloc_array(i64 3)
  %_array2648 = bitcast i64* %_raw_array2647 to { i64, [0 x i64] }*
  %_gep_lit2649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2648, i32 0, i32 1, i32 0
  store i64 110, i64* %_gep_lit2649
  %_gep_lit2651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2648, i32 0, i32 1, i32 1
  store i64 110, i64* %_gep_lit2651
  %_gep_lit2653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2648, i32 0, i32 1, i32 2
  store i64 110, i64* %_gep_lit2653
  %_call2655 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2648)
  store i8* %_call2655, i8** %_str2656
  %_str2658 = load i8*, i8** %_str2656
  call void @print_string(i8* %_str2658)
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
