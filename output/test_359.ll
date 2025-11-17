; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1074 = alloca i64
  %_argv1075 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1074
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1075
  %_raw_array1078 = call i64* @oat_alloc_array(i64 2)
  %_array1079 = bitcast i64* %_raw_array1078 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1080 = call i64* @oat_alloc_array(i64 2)
  %_array1081 = bitcast i64* %_raw_array1080 to { i64, [0 x i64] }*
  %_gep_lit1082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1081, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1082
  %_gep_lit1084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1081, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1084
  %_gep_lit1086 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1079, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1081, { i64, [0 x i64] }** %_gep_lit1086
  %_raw_array1088 = call i64* @oat_alloc_array(i64 2)
  %_array1089 = bitcast i64* %_raw_array1088 to { i64, [0 x i64] }*
  %_gep_lit1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1089, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1090
  %_gep_lit1092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1089, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1092
  %_gep_lit1094 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1079, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1089, { i64, [0 x i64] }** %_gep_lit1094
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1079, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1097 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_gep1098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1097, i32 0, i32 1, i32 1
  %_load1099 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1098
  %_gep1100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1099, i32 0, i32 1, i32 1
  %_load1101 = load i64, i64* %_gep1100
  ret i64 %_load1101
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
