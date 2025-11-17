; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x354 = alloca { i64, [0 x i64] }*
  %_y355 = alloca { i64, [0 x i64] }*
  %_b356 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x354
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y355
  store i1 %b, i1* %_b356
  %_b363 = load i1, i1* %_b356
  br i1 %_b363, label %_then360, label %_else361
_then360:
  %_x364 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x354
  ret { i64, [0 x i64] }* %_x364
_else361:
  %_y365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y355
  ret { i64, [0 x i64] }* %_y365
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc334 = alloca i64
  %_argv335 = alloca { i64, [0 x i8*] }*
  %_x340 = alloca { i64, [0 x i64] }*
  %_y344 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc334
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv335
  %_raw_array338 = call i64* @oat_alloc_array(i64 3)
  %_array339 = bitcast i64* %_raw_array338 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array339, { i64, [0 x i64] }** %_x340
  %_raw_array342 = call i64* @oat_alloc_array(i64 3)
  %_array343 = bitcast i64* %_raw_array342 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array343, { i64, [0 x i64] }** %_y344
  %_y347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y344
  %_x346 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x340
  %_call348 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x346, { i64, [0 x i64] }* %_y347, i1 1)
  %_gep349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call348, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep349
  %_x351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x340
  %_gep352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x351, i32 0, i32 1, i32 0
  %_load353 = load i64, i64* %_gep352
  ret i64 %_load353
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
