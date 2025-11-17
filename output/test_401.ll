; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_n4369 = alloca i64
  %_arr4374 = alloca { i64, [0 x i1] }*
  %_i4376 = alloca i64
  %_i4397 = alloca i64
  %_j4414 = alloca i64
  %_count4433 = alloca i64
  %_i4435 = alloca i64
  store i64 %n, i64* %_n4369
  %_n4371 = load i64, i64* %_n4369
  %_raw_array4372 = call i64* @oat_alloc_array(i64 %_n4371)
  %_array4373 = bitcast i64* %_raw_array4372 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4373, { i64, [0 x i1] }** %_arr4374
  store i64 0, i64* %_i4376
  br label %_for_cond4378
_for_cond4378:
  %_i4381 = load i64, i64* %_i4376
  %_n4382 = load i64, i64* %_n4369
  %_bop4383 = icmp slt i64 %_i4381, %_n4382
  br i1 %_bop4383, label %_for_body4379, label %_for_exit4380
_for_body4379:
  %_arr4384 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4374
  %_i4385 = load i64, i64* %_i4376
  %_gep4386 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4384, i32 0, i32 1, i64 %_i4385
  store i1 1, i1* %_gep4386
  %_i4388 = load i64, i64* %_i4376
  %_bop4389 = add i64 %_i4388, 1
  store i64 %_bop4389, i64* %_i4376
  br label %_for_cond4378
_for_exit4380:
  %_arr4391 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4374
  %_gep4392 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4391, i32 0, i32 1, i32 0
  store i1 0, i1* %_gep4392
  %_arr4394 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4374
  %_gep4395 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4394, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep4395
  store i64 0, i64* %_i4397
  br label %_for_cond4399
_for_cond4399:
  %_i4402 = load i64, i64* %_i4397
  %_n4403 = load i64, i64* %_n4369
  %_bop4404 = icmp slt i64 %_i4402, %_n4403
  br i1 %_bop4404, label %_for_body4400, label %_for_exit4401
_for_body4400:
  %_arr4408 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4374
  %_i4409 = load i64, i64* %_i4397
  %_gep4410 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4408, i32 0, i32 1, i64 %_i4409
  %_load4411 = load i1, i1* %_gep4410
  br i1 %_load4411, label %_then4405, label %_else4406
_then4405:
  %_i4412 = load i64, i64* %_i4397
  %_bop4413 = mul i64 %_i4412, 2
  store i64 %_bop4413, i64* %_j4414
  br label %_for_cond4416
_for_cond4416:
  %_j4419 = load i64, i64* %_j4414
  %_n4420 = load i64, i64* %_n4369
  %_bop4421 = icmp slt i64 %_j4419, %_n4420
  br i1 %_bop4421, label %_for_body4417, label %_for_exit4418
_for_body4417:
  %_arr4422 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4374
  %_j4423 = load i64, i64* %_j4414
  %_gep4424 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4422, i32 0, i32 1, i64 %_j4423
  store i1 0, i1* %_gep4424
  %_j4426 = load i64, i64* %_j4414
  %_i4427 = load i64, i64* %_i4397
  %_bop4428 = add i64 %_j4426, %_i4427
  store i64 %_bop4428, i64* %_j4414
  br label %_for_cond4416
_for_exit4418:
  br label %_join4407
_else4406:
  br label %_join4407
_join4407:
  %_i4430 = load i64, i64* %_i4397
  %_bop4431 = add i64 %_i4430, 1
  store i64 %_bop4431, i64* %_i4397
  br label %_for_cond4399
_for_exit4401:
  store i64 0, i64* %_count4433
  store i64 0, i64* %_i4435
  br label %_for_cond4437
_for_cond4437:
  %_i4440 = load i64, i64* %_i4435
  %_n4441 = load i64, i64* %_n4369
  %_bop4442 = icmp slt i64 %_i4440, %_n4441
  br i1 %_bop4442, label %_for_body4438, label %_for_exit4439
_for_body4438:
  %_arr4446 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4374
  %_i4447 = load i64, i64* %_i4435
  %_gep4448 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4446, i32 0, i32 1, i64 %_i4447
  %_load4449 = load i1, i1* %_gep4448
  br i1 %_load4449, label %_then4443, label %_else4444
_then4443:
  %_count4450 = load i64, i64* %_count4433
  %_bop4451 = add i64 %_count4450, 1
  store i64 %_bop4451, i64* %_count4433
  br label %_join4445
_else4444:
  br label %_join4445
_join4445:
  %_i4453 = load i64, i64* %_i4435
  %_bop4454 = add i64 %_i4453, 1
  store i64 %_bop4454, i64* %_i4435
  br label %_for_cond4437
_for_exit4439:
  %_count4456 = load i64, i64* %_count4433
  ret i64 %_count4456
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4361 = alloca i64
  %_argv4362 = alloca { i64, [0 x i8*] }*
  %_n4365 = alloca i64
  store i64 %argc, i64* %_argc4361
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4362
  store i64 100, i64* %_n4365
  %_n4367 = load i64, i64* %_n4365
  %_call4368 = call i64 @sieve(i64 %_n4367)
  ret i64 %_call4368
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
