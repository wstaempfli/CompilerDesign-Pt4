; generated from: ./sharedtests/dbernhard/tests_if3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6418 = alloca i64
  %_args6419 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6418
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6419
  %_call6422 = call i64 @function(i64 0)
  %_call6423 = call i64 @function(i64 1)
  %_bop6424 = add i64 %_call6422, %_call6423
  %_call6425 = call i64 @function(i64 2)
  %_bop6426 = add i64 %_bop6424, %_call6425
  ret i64 %_bop6426
}

define i64 @function(i64 %x) {
  %_x6406 = alloca i64
  store i64 %x, i64* %_x6406
  %_x6411 = load i64, i64* %_x6406
  %_bop6412 = icmp eq i64 %_x6411, 0
  br i1 %_bop6412, label %_then6408, label %_else6409
_then6408:
  ret i64 10
_else6409:
  %_x6416 = load i64, i64* %_x6406
  %_bop6417 = icmp eq i64 %_x6416, 1
  br i1 %_bop6417, label %_then6413, label %_else6414
_then6413:
  ret i64 0
_else6414:
  br label %_join6415
_join6415:
  br label %_join6410
_join6410:
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
