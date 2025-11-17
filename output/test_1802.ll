; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x415 = alloca { i64, [0 x i64] }*
  %_y416 = alloca { i64, [0 x i64] }*
  %_b417 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x415
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y416
  store i1 %b, i1* %_b417
  %_b424 = load i1, i1* %_b417
  br i1 %_b424, label %_then421, label %_else422
_then421:
  %_x425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x415
  ret { i64, [0 x i64] }* %_x425
_else422:
  %_y426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y416
  ret { i64, [0 x i64] }* %_y426
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc395 = alloca i64
  %_argv396 = alloca { i64, [0 x i8*] }*
  %_x401 = alloca { i64, [0 x i64] }*
  %_y405 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc395
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv396
  %_raw_array399 = call i64* @oat_alloc_array(i64 3)
  %_array400 = bitcast i64* %_raw_array399 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array400, { i64, [0 x i64] }** %_x401
  %_raw_array403 = call i64* @oat_alloc_array(i64 3)
  %_array404 = bitcast i64* %_raw_array403 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array404, { i64, [0 x i64] }** %_y405
  %_y408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y405
  %_x407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x401
  %_funcall409 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x407, { i64, [0 x i64] }* %_y408, i1 1)
  %_gep410 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_funcall409, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep410
  %_x412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x401
  %_413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x412, i32 0, i32 1, i32 0
  %_414 = load i64, i64* %_413
  ret i64 %_414
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
