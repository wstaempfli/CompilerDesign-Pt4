; generated from: ./sharedtests/dbernhard/tests_if2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6397 = alloca i64
  %_args6399 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6397
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6399
  %_call6401 = call i64 @function(i64 0)
  %_call6402 = call i64 @function(i64 1)
  %_bop6403 = add i64 %_call6401, %_call6402
  %_call6404 = call i64 @function(i64 2)
  %_bop6405 = add i64 %_bop6403, %_call6404
  ret i64 %_bop6405
}

define i64 @function(i64 %x) {
  %_x6390 = alloca i64
  store i64 %x, i64* %_x6390
  %_load6395 = load i64, i64* %_x6390
  %_bop6396 = icmp eq i64 %_load6395, 0
  br i1 %_bop6396, label %_then6392, label %_else6393
_then6392:
  ret i64 1
_else6393:
  br label %_join6394
_join6394:
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
