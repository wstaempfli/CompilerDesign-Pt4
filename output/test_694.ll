; generated from: ./sharedtests/thbwd/nested_return_bool.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7998 = alloca i64
  %_args7999 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7998
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7999
  %_scall_void8002 = call i1 @function(i64 0)
  %_scall_void8003 = call i1 @function(i64 1)
  %_scall_void8004 = call i1 @function(i64 2)
  ret i64 0
}

define i1 @function(i64 %x) {
  %_x7985 = alloca i64
  store i64 %x, i64* %_x7985
  %_x7990 = load i64, i64* %_x7985
  %_bop7991 = icmp eq i64 %_x7990, 0
  br i1 %_bop7991, label %_then7987, label %_else7988
_then7987:
  ret i1 1
_else7988:
  %_x7995 = load i64, i64* %_x7985
  %_bop7996 = icmp eq i64 %_x7995, 1
  br i1 %_bop7996, label %_then7992, label %_else7993
_then7992:
  ret i1 0
_else7993:
  %_uop7997 = xor i1 0, 1
  ret i1 %_uop7997
_join7994:
  br label %_join7989
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
