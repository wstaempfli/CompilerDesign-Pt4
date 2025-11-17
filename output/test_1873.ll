; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str4403 = global [2 x i8] c"
\00"

define i64 @xor(i64 %x, i64 %y) {
  %_x4449 = alloca i64
  %_y4450 = alloca i64
  store i64 %x, i64* %_x4449
  store i64 %y, i64* %_y4450
  %_x4453 = load i64, i64* %_x4449
  %_y4454 = load i64, i64* %_y4450
  %_bop4455 = and i64 %_x4453, %_y4454
  %_uop4456 = xor i64 %_bop4455, -1
  %_x4457 = load i64, i64* %_x4449
  %_y4458 = load i64, i64* %_y4450
  %_bop4459 = or i64 %_x4457, %_y4458
  %_bop4460 = and i64 %_uop4456, %_bop4459
  ret i64 %_bop4460
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %s) {
  %_s4409 = alloca { i64, [0 x i64] }*
  %_x4414 = alloca i64
  %_y4419 = alloca i64
  store { i64, [0 x i64] }* %s, { i64, [0 x i64] }** %_s4409
  %_s4411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4409
  %_4412 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4411, i32 0, i32 1, i32 0
  %_4413 = load i64, i64* %_4412
  store i64 %_4413, i64* %_x4414
  %_s4416 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4409
  %_4417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4416, i32 0, i32 1, i32 1
  %_4418 = load i64, i64* %_4417
  store i64 %_4418, i64* %_y4419
  %_y4421 = load i64, i64* %_y4419
  %_s4422 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4409
  %_gep4423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4422, i32 0, i32 1, i32 0
  store i64 %_y4421, i64* %_gep4423
  %_x4426 = load i64, i64* %_x4414
  %_bop4427 = shl i64 %_x4426, 23
  %_x4425 = load i64, i64* %_x4414
  %_funcall4428 = call i64 @xor(i64 %_x4425, i64 %_bop4427)
  store i64 %_funcall4428, i64* %_x4414
  %_x4431 = load i64, i64* %_x4414
  %_bop4432 = lshr i64 %_x4431, 17
  %_x4430 = load i64, i64* %_x4414
  %_funcall4433 = call i64 @xor(i64 %_x4430, i64 %_bop4432)
  store i64 %_funcall4433, i64* %_x4414
  %_y4437 = load i64, i64* %_y4419
  %_bop4438 = lshr i64 %_y4437, 26
  %_y4436 = load i64, i64* %_y4419
  %_funcall4439 = call i64 @xor(i64 %_y4436, i64 %_bop4438)
  %_x4435 = load i64, i64* %_x4414
  %_funcall4440 = call i64 @xor(i64 %_x4435, i64 %_funcall4439)
  store i64 %_funcall4440, i64* %_x4414
  %_x4442 = load i64, i64* %_x4414
  %_s4443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s4409
  %_gep4444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s4443, i32 0, i32 1, i32 1
  store i64 %_x4442, i64* %_gep4444
  %_x4446 = load i64, i64* %_x4414
  %_y4447 = load i64, i64* %_y4419
  %_bop4448 = add i64 %_x4446, %_y4447
  ret i64 %_bop4448
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4375 = alloca i64
  %_argv4376 = alloca { i64, [0 x i8*] }*
  %_seed4381 = alloca { i64, [0 x i64] }*
  %_i4383 = alloca i64
  store i64 %argc, i64* %_argc4375
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4376
  %_raw_array4379 = call i64* @oat_alloc_array(i64 2)
  %_array4380 = bitcast i64* %_raw_array4379 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4380, { i64, [0 x i64] }** %_seed4381
  store i64 0, i64* %_i4383
  br label %_for_cond4385
_for_cond4385:
  %_i4388 = load i64, i64* %_i4383
  %_bop4389 = icmp slt i64 %_i4388, 2
  br i1 %_bop4389, label %_for_body4386, label %_for_exit4387
_for_body4386:
  %_i4390 = load i64, i64* %_i4383
  %_bop4391 = add i64 %_i4390, 1
  %_bop4392 = mul i64 100, %_bop4391
  %_seed4393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4381
  %_i4394 = load i64, i64* %_i4383
  %_gep4395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed4393, i32 0, i32 1, i64 %_i4394
  store i64 %_bop4392, i64* %_gep4395
  %_i4397 = load i64, i64* %_i4383
  %_bop4398 = add i64 %_i4397, 1
  store i64 %_bop4398, i64* %_i4383
  br label %_for_cond4385
_for_exit4387:
  %_seed4400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4381
  %_funcall4401 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4400)
  call void @print_int(i64 %_funcall4401)
  %_str4404 = bitcast [2 x i8]* @_str4403 to i8*
  call void @print_string(i8* %_str4404)
  %_seed4406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed4381
  %_funcall4407 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed4406)
  call void @print_int(i64 %_funcall4407)
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
