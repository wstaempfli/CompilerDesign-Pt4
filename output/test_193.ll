; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i438 = alloca i64
  store i64 %i, i64* %_i438
  %_i440 = load i64, i64* %_i438
  %_call441 = call i64 @f2(i64 %_i440)
  ret i64 %_call441
}

define i64 @f2(i64 %i) {
  %_i434 = alloca i64
  store i64 %i, i64* %_i434
  %_i436 = load i64, i64* %_i434
  %_call437 = call i64 @f3(i64 %_i436)
  ret i64 %_call437
}

define i64 @f3(i64 %i) {
  %_i430 = alloca i64
  store i64 %i, i64* %_i430
  %_i432 = load i64, i64* %_i430
  %_call433 = call i64 @f4(i64 %_i432)
  ret i64 %_call433
}

define i64 @f4(i64 %i) {
  %_i426 = alloca i64
  store i64 %i, i64* %_i426
  %_i428 = load i64, i64* %_i426
  %_call429 = call i64 @f5(i64 %_i428)
  ret i64 %_call429
}

define i64 @f5(i64 %i) {
  %_i422 = alloca i64
  store i64 %i, i64* %_i422
  %_i424 = load i64, i64* %_i422
  %_call425 = call i64 @f6(i64 %_i424)
  ret i64 %_call425
}

define i64 @f6(i64 %i) {
  %_i418 = alloca i64
  store i64 %i, i64* %_i418
  %_i420 = load i64, i64* %_i418
  %_call421 = call i64 @f7(i64 %_i420)
  ret i64 %_call421
}

define i64 @f7(i64 %i) {
  %_i414 = alloca i64
  store i64 %i, i64* %_i414
  %_i416 = load i64, i64* %_i414
  %_call417 = call i64 @f8(i64 %_i416)
  ret i64 %_call417
}

define i64 @f8(i64 %i) {
  %_i410 = alloca i64
  store i64 %i, i64* %_i410
  %_i412 = load i64, i64* %_i410
  %_call413 = call i64 @f9(i64 %_i412)
  ret i64 %_call413
}

define i64 @f9(i64 %i) {
  %_i407 = alloca i64
  store i64 %i, i64* %_i407
  %_i409 = load i64, i64* %_i407
  ret i64 %_i409
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc401 = alloca i64
  %_argv402 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc401
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv402
  %_argc405 = load i64, i64* %_argc401
  %_call406 = call i64 @f1(i64 %_argc405)
  ret i64 %_call406
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
