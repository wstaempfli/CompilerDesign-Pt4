; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc392 = alloca i64
  %_argv393 = alloca { i64, [0 x i8*] }*
  %_i396 = alloca i64
  %_j401 = alloca i64
  store i64 %argc, i64* %_argc392
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv393
  store i64 9, i64* %_i396
  %_i398 = load i64, i64* %_i396
  %_i399 = load i64, i64* %_i396
  %_bop400 = add i64 %_i398, %_i399
  store i64 %_bop400, i64* %_j401
  %_i403 = load i64, i64* %_i396
  %_i404 = load i64, i64* %_i396
  %_i405 = load i64, i64* %_i396
  %_bop406 = mul i64 %_i404, %_i405
  %_bop407 = add i64 %_i403, %_bop406
  %_j408 = load i64, i64* %_j401
  %_bop409 = sub i64 %_bop407, %_j408
  %_bop410 = lshr i64 %_bop409, 2
  %_bop411 = shl i64 %_bop410, 2
  %_bop412 = ashr i64 %_bop411, 2
  ret i64 %_bop412
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
