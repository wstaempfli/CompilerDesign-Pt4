; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str4303 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x4349 = alloca i64
  %_y4350 = alloca i64
  store i64 %x, i64* %_x4349
  store i64 %y, i64* %_y4350
  %_x4353 = load i64, i64* %_x4349
  %_y4354 = load i64, i64* %_y4350
  %_bop4355 = and i64 %_x4353, %_y4354
  %_uop4356 = xor i64 %_bop4355, -1
  %_x4357 = load i64, i64* %_x4349
  %_y4358 = load i64, i64* %_y4350
  %_bop4359 = or i64 %_x4357, %_y4358
  %_bop4360 = and i64 %_uop4356, %_bop4359
  ret i64 %_bop4360
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s4309 = alloca { i64, [0 x i64] }*
  %_x4314 = alloca i64
  %_y4319 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s4309
  %_s4311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4309
  %_gep4312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4311, i32 0, i32 1, i32 0
  %_load4313 = load i64, i64* %_gep4312
  store i64 %_load4313, i64* %_x4314
  %_s4316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4309
  %_gep4317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4316, i32 0, i32 1, i32 1
  %_load4318 = load i64, i64* %_gep4317
  store i64 %_load4318, i64* %_y4319
  %_y4321 = load i64, i64* %_y4319
  %_s4322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4309
  %_gep4323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4322, i32 0, i32 1, i32 0
  store i64 %_y4321, i64* %_gep4323
  %_x4326 = load i64, i64* %_x4314
  %_bop4327 = shl i64 %_x4326, 23
  %_x4325 = load i64, i64* %_x4314
  %_call4328 = call i64 @xor(i64 %_x4325, i64 %_bop4327)
  store i64 %_call4328, i64* %_x4314
  %_x4331 = load i64, i64* %_x4314
  %_bop4332 = lshr i64 %_x4331, 17
  %_x4330 = load i64, i64* %_x4314
  %_call4333 = call i64 @xor(i64 %_x4330, i64 %_bop4332)
  store i64 %_call4333, i64* %_x4314
  %_y4337 = load i64, i64* %_y4319
  %_bop4338 = lshr i64 %_y4337, 26
  %_y4336 = load i64, i64* %_y4319
  %_call4339 = call i64 @xor(i64 %_y4336, i64 %_bop4338)
  %_x4335 = load i64, i64* %_x4314
  %_call4340 = call i64 @xor(i64 %_x4335, i64 %_call4339)
  store i64 %_call4340, i64* %_x4314
  %_x4342 = load i64, i64* %_x4314
  %_s4343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4309
  %_gep4344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4343, i32 0, i32 1, i32 1
  store i64 %_x4342, i64* %_gep4344
  %_x4346 = load i64, i64* %_x4314
  %_y4347 = load i64, i64* %_y4319
  %_bop4348 = add i64 %_x4346, %_y4347
  ret i64 %_bop4348
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4275 = alloca i64
  %_argv4276 = alloca { i64, [0 x i8*] }*
  %_seed4281 = alloca { i64, [0 x i64] }*
  %_i4283 = alloca i64
  store i64 %argc, i64* %_argc4275
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4276
  %_raw_array4279 = call i64* @oat_alloc_array(i64 2)
  %_array4280 = bitcast i64* %_raw_array4279 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4280, { i64, [0 x i64] }** %_seed4281
  store i64 0, i64* %_i4283
  br label %_for_cond4285
_for_cond4285:
  %_i4288 = load i64, i64* %_i4283
  %_bop4289 = icmp slt i64 %_i4288, 2
  br i1 %_bop4289, label %_for_body4286, label %_for_exit4287
_for_body4286:
  %_i4290 = load i64, i64* %_i4283
  %_bop4291 = add i64 %_i4290, 1
  %_bop4292 = mul i64 100, %_bop4291
  %_seed4293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4281
  %_i4294 = load i64, i64* %_i4283
  %_gep4295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed4293, i32 0, i32 1, i64 %_i4294
  store i64 %_bop4292, i64* %_gep4295
  %_i4297 = load i64, i64* %_i4283
  %_bop4298 = add i64 %_i4297, 1
  store i64 %_bop4298, i64* %_i4283
  br label %_for_cond4285
_for_exit4287:
  %_seed4300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4281
  %_call4301 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4300)
  call void @print_int(i64 %_call4301)
  %_strptr4304 = bitcast [2 x i8]* @_str4303 to i8*
  call void @print_string(i8* %_strptr4304)
  %_seed4306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4281
  %_call4307 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4306)
  call void @print_int(i64 %_call4307)
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
