; generated from: ./sharedtests/dbernhard/tests_if5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6460 = alloca i64
  %_args6462 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6460
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6462
  %_call6464 = call i64 @function(i64 0)
  %_call6465 = call i64 @function(i64 1)
  %_bop6466 = add i64 %_call6464, %_call6465
  %_call6467 = call i64 @function(i64 2)
  %_bop6468 = add i64 %_bop6466, %_call6467
  ret i64 %_bop6468
}

define i64 @function(i64 %x) {
  %_x6448 = alloca i64
  store i64 %x, i64* %_x6448
  %_load6453 = load i64, i64* %_x6448
  %_bop6454 = icmp eq i64 %_load6453, 0
  br i1 %_bop6454, label %_then6450, label %_else6451
_then6450:
  ret i64 10
_else6451:
  %_load6458 = load i64, i64* %_x6448
  %_bop6459 = icmp eq i64 %_load6458, 1
  br i1 %_bop6459, label %_then6455, label %_else6456
_then6455:
  ret i64 0
_else6456:
  ret i64 50
_join6457:
  br label %_join6452
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
