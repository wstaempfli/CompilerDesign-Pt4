; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2993 = alloca i64
  %_argv2995 = alloca { i64, [0 x i8*] }*
  %_a3019 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2993
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2995
  %_raw_array2997 = call i64* @oat_alloc_array(i64 10)
  %_array2998 = bitcast i64* %_raw_array2997 to { i64, [0 x i64] }*
  %_gep_lit2999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep_lit2999
  %_gep_lit3001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep_lit3001
  %_gep_lit3003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep_lit3003
  %_gep_lit3005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep_lit3005
  %_gep_lit3007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep_lit3007
  %_gep_lit3009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep_lit3009
  %_gep_lit3011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep_lit3011
  %_gep_lit3013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep_lit3013
  %_gep_lit3015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep_lit3015
  %_gep_lit3017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep_lit3017
  store { i64, [0 x i64] }* %_array2998, { i64, [0 x i64] }** %_a3019
  %_load3021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3019
  %_call3022 = call i8* @string_of_array({ i64, [0 x i64] }* %_load3021)
  call void @print_string(i8* %_call3022)
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
