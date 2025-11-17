; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1231 = alloca i64
  %_argv1232 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1231
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1232
  %_raw_array1235 = call i64* @oat_alloc_array(i64 3)
  %_array1236 = bitcast i64* %_raw_array1235 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1237 = call i64* @oat_alloc_array(i64 2)
  %_array1238 = bitcast i64* %_raw_array1237 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1239 = call i64* @oat_alloc_array(i64 2)
  %_array1240 = bitcast i64* %_raw_array1239 to { i64, [0 x i64] }*
  %_gep_lit1241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1241
  %_gep_lit1243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1240, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1243
  %_gep_lit1245 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1240, { i64, [0 x i64] }** %_gep_lit1245
  %_raw_array1247 = call i64* @oat_alloc_array(i64 2)
  %_array1248 = bitcast i64* %_raw_array1247 to { i64, [0 x i64] }*
  %_gep_lit1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1249
  %_gep_lit1251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1251
  %_gep_lit1253 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1248, { i64, [0 x i64] }** %_gep_lit1253
  %_gep_lit1255 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1236, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1238, { i64, [0 x { i64, [0 x i64] }*] }** %_gep_lit1255
  %_raw_array1257 = call i64* @oat_alloc_array(i64 1)
  %_array1258 = bitcast i64* %_raw_array1257 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1259 = call i64* @oat_alloc_array(i64 1)
  %_array1260 = bitcast i64* %_raw_array1259 to { i64, [0 x i64] }*
  %_gep_lit1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep_lit1261
  %_gep_lit1263 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1260, { i64, [0 x i64] }** %_gep_lit1263
  %_gep_lit1265 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1236, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, { i64, [0 x { i64, [0 x i64] }*] }** %_gep_lit1265
  %_raw_array1267 = call i64* @oat_alloc_array(i64 2)
  %_array1268 = bitcast i64* %_raw_array1267 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1269 = call i64* @oat_alloc_array(i64 2)
  %_array1270 = bitcast i64* %_raw_array1269 to { i64, [0 x i64] }*
  %_gep_lit1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1270, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep_lit1271
  %_gep_lit1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1270, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep_lit1273
  %_gep_lit1275 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1268, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1270, { i64, [0 x i64] }** %_gep_lit1275
  %_raw_array1277 = call i64* @oat_alloc_array(i64 2)
  %_array1278 = bitcast i64* %_raw_array1277 to { i64, [0 x i64] }*
  %_gep_lit1279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1278, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep_lit1279
  %_gep_lit1281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1278, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep_lit1281
  %_gep_lit1283 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1268, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1278, { i64, [0 x i64] }** %_gep_lit1283
  %_gep_lit1285 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1236, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1268, { i64, [0 x { i64, [0 x i64] }*] }** %_gep_lit1285
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1236, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1288 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_1289 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1288, i32 0, i32 1, i32 2
  %_1290 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_1289
  %_1291 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_1290, i32 0, i32 1, i32 0
  %_1292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_1291
  %_1293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_1292, i32 0, i32 1, i32 1
  %_1294 = load i64, i64* %_1293
  ret i64 %_1294
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
