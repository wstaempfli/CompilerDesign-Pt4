; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x355 = alloca { i64, [0 x i64] }*
  %_y357 = alloca { i64, [0 x i64] }*
  %_b359 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x355
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y357
  store i1 %b, i1* %_b359
  %_load364 = load i1, i1* %_b359
  br i1 %_load364, label %_then361, label %_else362
_then361:
  %_load365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x355
  ret { i64, [0 x i64] }* %_load365
_else362:
  %_load366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y357
  ret { i64, [0 x i64] }* %_load366
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc304 = alloca i64
  %_argv306 = alloca { i64, [0 x i8*] }*
  %_x310 = alloca { i64, [0 x i64] }*
  %_i312 = alloca i64
  %_y329 = alloca { i64, [0 x i64] }*
  %_i331 = alloca i64
  store i64 %argc, i64* %_argc304
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv306
  %_raw_array308 = call i64* @oat_alloc_array(i64 3)
  %_array309 = bitcast i64* %_raw_array308 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array309, { i64, [0 x i64] }** %_x310
  store i64 0, i64* %_i312
  br label %_for_cond314
_for_cond314:
  %_load317 = load i64, i64* %_i312
  %_bop318 = icmp slt i64 %_load317, 3
  br i1 %_bop318, label %_for_body315, label %_for_exit316
_for_body315:
  %_load319 = load i64, i64* %_i312
  %_load320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x310
  %_load321 = load i64, i64* %_i312
  %_gep322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load320, i32 0, i32 1, i64 %_load321
  store i64 %_load319, i64* %_gep322
  %_load324 = load i64, i64* %_i312
  %_bop325 = add i64 %_load324, 1
  store i64 %_bop325, i64* %_i312
  br label %_for_cond314
_for_exit316:
  %_raw_array327 = call i64* @oat_alloc_array(i64 3)
  %_array328 = bitcast i64* %_raw_array327 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array328, { i64, [0 x i64] }** %_y329
  store i64 0, i64* %_i331
  br label %_for_cond333
_for_cond333:
  %_load336 = load i64, i64* %_i331
  %_bop337 = icmp slt i64 %_load336, 3
  br i1 %_bop337, label %_for_body334, label %_for_exit335
_for_body334:
  %_load338 = load i64, i64* %_i331
  %_bop339 = add i64 %_load338, 3
  %_load340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y329
  %_load341 = load i64, i64* %_i331
  %_gep342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load340, i32 0, i32 1, i64 %_load341
  store i64 %_bop339, i64* %_gep342
  %_load344 = load i64, i64* %_i331
  %_bop345 = add i64 %_load344, 1
  store i64 %_bop345, i64* %_i331
  br label %_for_cond333
_for_exit335:
  %_load348 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y329
  %_load347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x310
  %_call349 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_load347, { i64, [0 x i64] }* %_load348, i1 1)
  %_gep350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call349, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep350
  %_load352 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x310
  %_gep353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load352, i32 0, i32 1, i32 0
  %_load354 = load i64, i64* %_gep353
  ret i64 %_load354
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
