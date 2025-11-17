; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1210 = alloca i64
  %_argv1211 = alloca { i64, [0 x i8*] }*
  %_arr1232 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1210
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1211
  %_raw_array1214 = call i64* @oat_alloc_array(i64 2)
  %_array1215 = bitcast i64* %_raw_array1214 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1216 = call i64* @oat_alloc_array(i64 2)
  %_array1217 = bitcast i64* %_raw_array1216 to { i64, [0 x i64] }*
  %_gep_lit1218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1217, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1218
  %_gep_lit1220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1217, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1220
  %_gep_lit1222 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1215, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1217, { i64, [0 x i64] }** %_gep_lit1222
  %_raw_array1224 = call i64* @oat_alloc_array(i64 2)
  %_array1225 = bitcast i64* %_raw_array1224 to { i64, [0 x i64] }*
  %_gep_lit1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1226
  %_gep_lit1228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1225, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1228
  %_gep_lit1230 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1215, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1225, { i64, [0 x i64] }** %_gep_lit1230
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1215, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1232
  %_arr1234 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1232
  %_gep1235 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1234, i32 0, i32 1, i32 1
  %_load1236 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1235
  %_gep1237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1236, i32 0, i32 1, i32 1
  %_load1238 = load i64, i64* %_gep1237
  ret i64 %_load1238
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
