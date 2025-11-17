; generated from: ./sharedtests/dbernhard/tests_if8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6548 = alloca i64
  %_args6549 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6548
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6549
  %_call6552 = call i64 @function(i64 0)
  %_call6553 = call i64 @function(i64 1)
  %_bop6554 = add i64 %_call6552, %_call6553
  %_call6555 = call i64 @function(i64 2)
  %_bop6556 = add i64 %_bop6554, %_call6555
  %_call6557 = call i64 @function(i64 3)
  %_bop6558 = add i64 %_bop6556, %_call6557
  ret i64 %_bop6558
}

define i64 @function(i64 %x) {
  %_x6531 = alloca i64
  store i64 %x, i64* %_x6531
  %_x6536 = load i64, i64* %_x6531
  %_bop6537 = icmp eq i64 %_x6536, 0
  br i1 %_bop6537, label %_then6533, label %_else6534
_then6533:
  br label %_join6535
_else6534:
  %_x6541 = load i64, i64* %_x6531
  %_bop6542 = icmp eq i64 %_x6541, 1
  br i1 %_bop6542, label %_then6538, label %_else6539
_then6538:
  br label %_join6540
_else6539:
  %_x6546 = load i64, i64* %_x6531
  %_bop6547 = icmp eq i64 %_x6546, 2
  br i1 %_bop6547, label %_then6543, label %_else6544
_then6543:
  ret i64 50
_else6544:
  br label %_join6545
_join6545:
  br label %_join6540
_join6540:
  br label %_join6535
_join6535:
  ret i64 0
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
