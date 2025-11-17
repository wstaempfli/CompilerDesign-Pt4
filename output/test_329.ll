; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x322 = alloca { i64, [0 x i64] }*
  %_y323 = alloca { i64, [0 x i64] }*
  %_b324 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x322
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y323
  store i1 %b, i1* %_b324
  %_b331 = load i1, i1* %_b324
  br i1 %_b331, label %_then328, label %_else329
_then328:
  %_x332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x322
  ret { i64, [0 x i64] }* %_x332
_else329:
  %_y333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y323
  ret { i64, [0 x i64] }* %_y333
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc271 = alloca i64
  %_argv272 = alloca { i64, [0 x i8*] }*
  %_x277 = alloca { i64, [0 x i64] }*
  %_i279 = alloca i64
  %_y296 = alloca { i64, [0 x i64] }*
  %_i298 = alloca i64
  store i64 %argc, i64* %_argc271
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv272
  %_raw_array275 = call i64* @oat_alloc_array(i64 3)
  %_array276 = bitcast i64* %_raw_array275 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array276, { i64, [0 x i64] }** %_x277
  store i64 0, i64* %_i279
  br label %_for_cond281
_for_cond281:
  %_i284 = load i64, i64* %_i279
  %_bop285 = icmp slt i64 %_i284, 3
  br i1 %_bop285, label %_for_body282, label %_for_exit283
_for_body282:
  %_i286 = load i64, i64* %_i279
  %_x287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x277
  %_i288 = load i64, i64* %_i279
  %_gep289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x287, i32 0, i32 1, i64 %_i288
  store i64 %_i286, i64* %_gep289
  %_i291 = load i64, i64* %_i279
  %_bop292 = add i64 %_i291, 1
  store i64 %_bop292, i64* %_i279
  br label %_for_cond281
_for_exit283:
  %_raw_array294 = call i64* @oat_alloc_array(i64 3)
  %_array295 = bitcast i64* %_raw_array294 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array295, { i64, [0 x i64] }** %_y296
  store i64 0, i64* %_i298
  br label %_for_cond300
_for_cond300:
  %_i303 = load i64, i64* %_i298
  %_bop304 = icmp slt i64 %_i303, 3
  br i1 %_bop304, label %_for_body301, label %_for_exit302
_for_body301:
  %_i305 = load i64, i64* %_i298
  %_bop306 = add i64 %_i305, 3
  %_y307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y296
  %_i308 = load i64, i64* %_i298
  %_gep309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y307, i32 0, i32 1, i64 %_i308
  store i64 %_bop306, i64* %_gep309
  %_i311 = load i64, i64* %_i298
  %_bop312 = add i64 %_i311, 1
  store i64 %_bop312, i64* %_i298
  br label %_for_cond300
_for_exit302:
  %_y315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y296
  %_x314 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x277
  %_call316 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x314, { i64, [0 x i64] }* %_y315, i1 1)
  %_gep317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call316, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep317
  %_x319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x277
  %_gep320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x319, i32 0, i32 1, i32 0
  %_load321 = load i64, i64* %_gep320
  ret i64 %_load321
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
