; generated from: ./sharedtests/dbernhard/while_false2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6232 = alloca i64
  %_args6234 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6232
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6234
  %_call6236 = call { i64, [0 x i64] }* @function(i64 0)
  %_gep6237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call6236, i32 0, i32 1, i32 0
  %_load6238 = load i64, i64* %_gep6237
  %_call6239 = call { i64, [0 x i64] }* @function(i64 1)
  %_gep6240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call6239, i32 0, i32 1, i32 0
  %_load6241 = load i64, i64* %_gep6240
  %_bop6242 = add i64 %_load6238, %_load6241
  %_call6243 = call { i64, [0 x i64] }* @function(i64 2)
  %_gep6244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call6243, i32 0, i32 1, i32 0
  %_load6245 = load i64, i64* %_gep6244
  %_bop6246 = add i64 %_bop6242, %_load6245
  %_call6247 = call { i64, [0 x i64] }* @function(i64 3)
  %_gep6248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call6247, i32 0, i32 1, i32 0
  %_load6249 = load i64, i64* %_gep6248
  %_bop6250 = add i64 %_bop6246, %_load6249
  ret i64 %_bop6250
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_x6223 = alloca i64
  store i64 %x, i64* %_x6223
  br label %_while_cond6225
_while_cond6225:
  br i1 0, label %_while_body6226, label %_while_exit6227
_while_body6226:
  br label %_while_cond6225
_while_exit6227:
  %_raw_array6228 = call i64* @oat_alloc_array(i64 1)
  %_array6229 = bitcast i64* %_raw_array6228 to { i64, [0 x i64] }*
  %_gep_lit6230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6229, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit6230
  ret { i64, [0 x i64] }* %_array6229
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
