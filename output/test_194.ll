; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1458 = alloca i64
  %_x2459 = alloca i64
  %_x3460 = alloca i64
  %_x4461 = alloca i64
  %_x5462 = alloca i64
  %_x6463 = alloca i64
  %_x7464 = alloca i64
  %_x8465 = alloca i64
  store i64 %x1, i64* %_x1458
  store i64 %x2, i64* %_x2459
  store i64 %x3, i64* %_x3460
  store i64 %x4, i64* %_x4461
  store i64 %x5, i64* %_x5462
  store i64 %x6, i64* %_x6463
  store i64 %x7, i64* %_x7464
  store i64 %x8, i64* %_x8465
  %_x1474 = load i64, i64* %_x1458
  %_x2475 = load i64, i64* %_x2459
  %_bop476 = add i64 %_x1474, %_x2475
  %_x3477 = load i64, i64* %_x3460
  %_bop478 = add i64 %_bop476, %_x3477
  %_x4479 = load i64, i64* %_x4461
  %_bop480 = add i64 %_bop478, %_x4479
  %_x5481 = load i64, i64* %_x5462
  %_bop482 = add i64 %_bop480, %_x5481
  %_x6483 = load i64, i64* %_x6463
  %_bop484 = add i64 %_bop482, %_x6483
  %_x7485 = load i64, i64* %_x7464
  %_bop486 = add i64 %_bop484, %_x7485
  %_x8487 = load i64, i64* %_x8465
  %_bop488 = add i64 %_bop486, %_x8487
  ret i64 %_bop488
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc450 = alloca i64
  %_argv451 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc450
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv451
  %_uop456 = sub i64 0, 3
  %_uop455 = sub i64 0, 4
  %_uop454 = sub i64 0, 5
  %_call457 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop454, i64 %_uop455, i64 %_uop456)
  ret i64 %_call457
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
