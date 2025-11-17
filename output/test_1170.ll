; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a5446 = alloca i64
  %_b5448 = alloca i64
  %_t5456 = alloca i64
  store i64 %a, i64* %_a5446
  store i64 %b, i64* %_b5448
  br label %_while_cond5450
_while_cond5450:
  %_load5453 = load i64, i64* %_b5448
  %_bop5454 = icmp ne i64 %_load5453, 0
  br i1 %_bop5454, label %_while_body5451, label %_while_exit5452
_while_body5451:
  %_load5455 = load i64, i64* %_b5448
  store i64 %_load5455, i64* %_t5456
  %_load5459 = load i64, i64* %_b5448
  %_load5458 = load i64, i64* %_a5446
  %_call5460 = call i64 @mod(i64 %_load5458, i64 %_load5459)
  store i64 %_call5460, i64* %_b5448
  %_load5462 = load i64, i64* %_t5456
  store i64 %_load5462, i64* %_a5446
  br label %_while_cond5450
_while_exit5452:
  %_load5464 = load i64, i64* %_a5446
  ret i64 %_load5464
}

define i64 @mod(i64 %a, i64 %b) {
  %_a5427 = alloca i64
  %_b5429 = alloca i64
  %_t5432 = alloca i64
  store i64 %a, i64* %_a5427
  store i64 %b, i64* %_b5429
  %_load5431 = load i64, i64* %_a5427
  store i64 %_load5431, i64* %_t5432
  br label %_while_cond5434
_while_cond5434:
  %_load5437 = load i64, i64* %_t5432
  %_load5438 = load i64, i64* %_b5429
  %_bop5439 = sub i64 %_load5437, %_load5438
  %_bop5440 = icmp sge i64 %_bop5439, 0
  br i1 %_bop5440, label %_while_body5435, label %_while_exit5436
_while_body5435:
  %_load5441 = load i64, i64* %_t5432
  %_load5442 = load i64, i64* %_b5429
  %_bop5443 = sub i64 %_load5441, %_load5442
  store i64 %_bop5443, i64* %_t5432
  br label %_while_cond5434
_while_exit5436:
  %_load5445 = load i64, i64* %_t5432
  ret i64 %_load5445
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5416 = alloca i64
  %_argv5418 = alloca { i64, [0 x i8*] }*
  %_a5420 = alloca i64
  %_b5422 = alloca i64
  store i64 %argc, i64* %_argc5416
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5418
  store i64 64, i64* %_a5420
  store i64 48, i64* %_b5422
  %_load5425 = load i64, i64* %_b5422
  %_load5424 = load i64, i64* %_a5420
  %_call5426 = call i64 @gcd(i64 %_load5424, i64 %_load5425)
  ret i64 %_call5426
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
