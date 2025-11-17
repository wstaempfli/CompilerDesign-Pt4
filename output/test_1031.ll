; generated from: ./sharedtests/dbernhard/tests_if4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6439 = alloca i64
  %_args6440 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6439
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6440
  %_call6443 = call i64 @function(i64 0)
  %_call6444 = call i64 @function(i64 1)
  %_bop6445 = add i64 %_call6443, %_call6444
  %_call6446 = call i64 @function(i64 2)
  %_bop6447 = add i64 %_bop6445, %_call6446
  ret i64 %_bop6447
}

define i64 @function(i64 %x) {
  %_x6427 = alloca i64
  store i64 %x, i64* %_x6427
  %_x6432 = load i64, i64* %_x6427
  %_bop6433 = icmp eq i64 %_x6432, 0
  br i1 %_bop6433, label %_then6429, label %_else6430
_then6429:
  ret i64 10
_else6430:
  %_x6437 = load i64, i64* %_x6427
  %_bop6438 = icmp eq i64 %_x6437, 1
  br i1 %_bop6438, label %_then6434, label %_else6435
_then6434:
  ret i64 0
_else6435:
  ret i64 50
_join6436:
  br label %_join6431
_join6431:
  ret i64 100
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
