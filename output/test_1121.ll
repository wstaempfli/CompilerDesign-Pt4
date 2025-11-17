; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1202 = alloca i64
  %_argv1204 = alloca { i64, [0 x i8*] }*
  %_arr1224 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1202
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1204
  %_raw_array1206 = call i64* @oat_alloc_array(i64 2)
  %_array1207 = bitcast i64* %_raw_array1206 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1208 = call i64* @oat_alloc_array(i64 2)
  %_array1209 = bitcast i64* %_raw_array1208 to { i64, [0 x i64] }*
  %_gep_lit1210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1210
  %_gep_lit1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1209, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1212
  %_gep_lit1214 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1207, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1209, { i64, [0 x i64] }** %_gep_lit1214
  %_raw_array1216 = call i64* @oat_alloc_array(i64 2)
  %_array1217 = bitcast i64* %_raw_array1216 to { i64, [0 x i64] }*
  %_gep_lit1218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1217, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1218
  %_gep_lit1220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1217, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1220
  %_gep_lit1222 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1207, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1217, { i64, [0 x i64] }** %_gep_lit1222
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1207, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1224
  %_load1226 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1224
  %_gep1227 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load1226, i32 0, i32 1, i32 0
  %_load1228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1227
  %_gep1229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1228, i32 0, i32 1, i32 0
  %_load1230 = load i64, i64* %_gep1229
  ret i64 %_load1230
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
