; generated from: ./sharedtests/dbernhard/tests_if7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6520 = alloca i64
  %_args6521 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6520
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6521
  %_call6524 = call i64 @function(i64 0)
  %_call6525 = call i64 @function(i64 1)
  %_bop6526 = add i64 %_call6524, %_call6525
  %_call6527 = call i64 @function(i64 2)
  %_bop6528 = add i64 %_bop6526, %_call6527
  %_call6529 = call i64 @function(i64 3)
  %_bop6530 = add i64 %_bop6528, %_call6529
  ret i64 %_bop6530
}

define i64 @function(i64 %x) {
  %_x6497 = alloca i64
  store i64 %x, i64* %_x6497
  %_x6502 = load i64, i64* %_x6497
  %_bop6503 = icmp eq i64 %_x6502, 0
  br i1 %_bop6503, label %_then6499, label %_else6500
_then6499:
  br i1 1, label %_then6504, label %_else6505
_then6504:
  ret i64 1
_else6505:
  br label %_join6506
_join6506:
  br label %_join6501
_else6500:
  %_x6510 = load i64, i64* %_x6497
  %_bop6511 = icmp eq i64 %_x6510, 1
  br i1 %_bop6511, label %_then6507, label %_else6508
_then6507:
  br i1 1, label %_then6512, label %_else6513
_then6512:
  ret i64 2
_else6513:
  br label %_join6514
_join6514:
  br label %_join6509
_else6508:
  %_x6518 = load i64, i64* %_x6497
  %_bop6519 = icmp eq i64 %_x6518, 2
  br i1 %_bop6519, label %_then6515, label %_else6516
_then6515:
  ret i64 50
_else6516:
  ret i64 0
_join6517:
  br label %_join6509
_join6509:
  br label %_join6501
_join6501:
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
