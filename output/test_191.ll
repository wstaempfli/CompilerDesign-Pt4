; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc359 = alloca i64
  %_argv360 = alloca { i64, [0 x i8*] }*
  %_a381 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc359
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv360
  %_raw_array363 = call i64* @oat_alloc_array(i64 2)
  %_array364 = bitcast i64* %_raw_array363 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array365 = call i64* @oat_alloc_array(i64 2)
  %_array366 = bitcast i64* %_raw_array365 to { i64, [0 x i64] }*
  store i64 1, i64* %_gep367
  %_gep367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array366, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep369
  %_gep369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array366, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array366, { i64, [0 x i64] }** %_gep371
  %_gep371 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array364, i32 0, i32 1, i32 0
  %_raw_array373 = call i64* @oat_alloc_array(i64 2)
  %_array374 = bitcast i64* %_raw_array373 to { i64, [0 x i64] }*
  store i64 3, i64* %_gep375
  %_gep375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep377
  %_gep377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array374, { i64, [0 x i64] }** %_gep379
  %_gep379 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array364, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array364, { i64, [0 x { i64, [0 x i64] }*] }** %_a381
  %_a383 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a381
  %_load385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr384
  %_gep_ptr384 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a383, i32 0, i32 1, i32 0
  %_load387 = load i64, i64* %_gep_ptr386
  %_gep_ptr386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load385, i32 0, i32 1, i32 1
  ret i64 %_load387
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
