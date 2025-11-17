; generated from: ./sharedtests/dbernhard/while_false.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6212 = alloca i64
  %_args6214 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6212
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6214
  %_call6216 = call i64 @function(i64 0)
  %_call6217 = call i64 @function(i64 1)
  %_bop6218 = add i64 %_call6216, %_call6217
  %_call6219 = call i64 @function(i64 2)
  %_bop6220 = add i64 %_bop6218, %_call6219
  %_call6221 = call i64 @function(i64 3)
  %_bop6222 = add i64 %_bop6220, %_call6221
  ret i64 %_bop6222
}

define i64 @function(i64 %x) {
  %_x6207 = alloca i64
  store i64 %x, i64* %_x6207
  br label %_while_cond6209
_while_cond6209:
  br i1 0, label %_while_body6210, label %_while_exit6211
_while_body6210:
  br label %_while_cond6209
_while_exit6211:
  ret i64 1
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
