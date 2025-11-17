; generated from: ./sharedtests/dbernhard/tests_if6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6486 = alloca i64
  %_args6488 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6486
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6488
  %_call6490 = call i64 @function(i64 0)
  %_call6491 = call i64 @function(i64 1)
  %_bop6492 = add i64 %_call6490, %_call6491
  %_call6493 = call i64 @function(i64 2)
  %_bop6494 = add i64 %_bop6492, %_call6493
  %_call6495 = call i64 @function(i64 3)
  %_bop6496 = add i64 %_bop6494, %_call6495
  ret i64 %_bop6496
}

define i64 @function(i64 %x) {
  %_x6469 = alloca i64
  store i64 %x, i64* %_x6469
  %_load6474 = load i64, i64* %_x6469
  %_bop6475 = icmp eq i64 %_load6474, 0
  br i1 %_bop6475, label %_then6471, label %_else6472
_then6471:
  ret i64 10
_else6472:
  %_load6479 = load i64, i64* %_x6469
  %_bop6480 = icmp eq i64 %_load6479, 1
  br i1 %_bop6480, label %_then6476, label %_else6477
_then6476:
  ret i64 0
_else6477:
  %_load6484 = load i64, i64* %_x6469
  %_bop6485 = icmp eq i64 %_load6484, 2
  br i1 %_bop6485, label %_then6481, label %_else6482
_then6481:
  ret i64 50
_else6482:
  ret i64 5
_join6483:
  br label %_join6478
_join6478:
  br label %_join6473
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
