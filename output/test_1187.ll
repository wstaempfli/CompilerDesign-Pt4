; generated from: ./sharedtests/dbernhard/tests_if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6381 = alloca i64
  %_args6383 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6381
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6383
  %_call6385 = call i64 @function(i64 0)
  %_call6386 = call i64 @function(i64 1)
  %_bop6387 = add i64 %_call6385, %_call6386
  %_call6388 = call i64 @function(i64 2)
  %_bop6389 = add i64 %_bop6387, %_call6388
  ret i64 %_bop6389
}

define i64 @function(i64 %x) {
  %_x6374 = alloca i64
  store i64 %x, i64* %_x6374
  %_load6379 = load i64, i64* %_x6374
  %_bop6380 = icmp eq i64 %_load6379, 0
  br i1 %_bop6380, label %_then6376, label %_else6377
_then6376:
  ret i64 1
_else6377:
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
