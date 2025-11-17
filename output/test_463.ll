; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1174 = alloca i64
  %_argv1175 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1174
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1175
  %_raw_array1178 = call i64* @oat_alloc_array(i64 2)
  %_array1179 = bitcast i64* %_raw_array1178 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1180 = call i64* @oat_alloc_array(i64 2)
  %_array1181 = bitcast i64* %_raw_array1180 to { i64, [0 x i64] }*
  %_gep_lit1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1182
  %_gep_lit1184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1181, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1184
  %_gep_lit1186 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1179, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1181, { i64, [0 x i64] }** %_gep_lit1186
  %_raw_array1188 = call i64* @oat_alloc_array(i64 2)
  %_array1189 = bitcast i64* %_raw_array1188 to { i64, [0 x i64] }*
  %_gep_lit1190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1190
  %_gep_lit1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1189, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1192
  %_gep_lit1194 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1179, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1189, { i64, [0 x i64] }** %_gep_lit1194
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1179, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1197 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_gep1198 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1197, i32 0, i32 1, i32 1
  %_load1199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1198
  %_gep1200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1199, i32 0, i32 1, i32 1
  %_load1201 = load i64, i64* %_gep1200
  ret i64 %_load1201
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
