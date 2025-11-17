; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_arr1276 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr1276
  %_arr1278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1276
  ret { i64, [0 x i64] }* %_arr1278
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1239 = alloca i64
  %_argv1240 = alloca { i64, [0 x i8*] }*
  %_garr1265 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1271 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc1239
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1240
  %_raw_array1243 = call i64* @oat_alloc_array(i64 2)
  %_array1244 = bitcast i64* %_raw_array1243 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1245 = call i64* @oat_alloc_array(i64 3)
  %_array1246 = bitcast i64* %_raw_array1245 to { i64, [0 x i64] }*
  %_gep_lit1247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1246, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1247
  %_gep_lit1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1246, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1249
  %_gep_lit1251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1246, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit1251
  %_gep_lit1253 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1244, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1246, { i64, [0 x i64] }** %_gep_lit1253
  %_raw_array1255 = call i64* @oat_alloc_array(i64 3)
  %_array1256 = bitcast i64* %_raw_array1255 to { i64, [0 x i64] }*
  %_gep_lit1257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1256, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep_lit1257
  %_gep_lit1259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1256, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep_lit1259
  %_gep_lit1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1256, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep_lit1261
  %_gep_lit1263 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1244, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1256, { i64, [0 x i64] }** %_gep_lit1263
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1244, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1265
  %_garr1267 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1265
  %_gep1268 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1267, i32 0, i32 1, i32 1
  %_load1269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1268
  %_call1270 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_load1269)
  store { i64, [0 x i64] }* %_call1270, { i64, [0 x i64] }** %_arr1271
  %_arr1273 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1271
  %_gep1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1273, i32 0, i32 1, i32 1
  %_load1275 = load i64, i64* %_gep1274
  ret i64 %_load1275
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
