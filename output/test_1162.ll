; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %n) {
  %_n4469 = alloca i64
  %_arr4474 = alloca { i64, [0 x i1] }*
  %_i4476 = alloca i64
  %_i4497 = alloca i64
  %_j4514 = alloca i64
  %_count4533 = alloca i64
  %_i4535 = alloca i64
  store i64 %n, i64* %_n4469
  %_load4471 = load i64, i64* %_n4469
  %_raw_array4472 = call i64* @oat_alloc_array(i64 %_load4471)
  %_array4473 = bitcast i64* %_raw_array4472 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4473, { i64, [0 x i1] }** %_arr4474
  store i64 0, i64* %_i4476
  br label %_for_cond4478
_for_cond4478:
  %_load4481 = load i64, i64* %_i4476
  %_load4482 = load i64, i64* %_n4469
  %_bop4483 = icmp slt i64 %_load4481, %_load4482
  br i1 %_bop4483, label %_for_body4479, label %_for_exit4480
_for_body4479:
  %_load4484 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4474
  %_load4485 = load i64, i64* %_i4476
  %_gep4486 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load4484, i32 0, i32 1, i64 %_load4485
  store i1 1, i1* %_gep4486
  %_load4488 = load i64, i64* %_i4476
  %_bop4489 = add i64 %_load4488, 1
  store i64 %_bop4489, i64* %_i4476
  br label %_for_cond4478
_for_exit4480:
  %_load4491 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4474
  %_gep4492 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load4491, i32 0, i32 1, i32 0
  store i1 0, i1* %_gep4492
  %_load4494 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4474
  %_gep4495 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load4494, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep4495
  store i64 0, i64* %_i4497
  br label %_for_cond4499
_for_cond4499:
  %_load4502 = load i64, i64* %_i4497
  %_load4503 = load i64, i64* %_n4469
  %_bop4504 = icmp slt i64 %_load4502, %_load4503
  br i1 %_bop4504, label %_for_body4500, label %_for_exit4501
_for_body4500:
  %_load4508 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4474
  %_load4509 = load i64, i64* %_i4497
  %_gep4510 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load4508, i32 0, i32 1, i64 %_load4509
  %_load4511 = load i1, i1* %_gep4510
  br i1 %_load4511, label %_then4505, label %_else4506
_then4505:
  %_load4512 = load i64, i64* %_i4497
  %_bop4513 = mul i64 %_load4512, 2
  store i64 %_bop4513, i64* %_j4514
  br label %_for_cond4516
_for_cond4516:
  %_load4519 = load i64, i64* %_j4514
  %_load4520 = load i64, i64* %_n4469
  %_bop4521 = icmp slt i64 %_load4519, %_load4520
  br i1 %_bop4521, label %_for_body4517, label %_for_exit4518
_for_body4517:
  %_load4522 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4474
  %_load4523 = load i64, i64* %_j4514
  %_gep4524 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load4522, i32 0, i32 1, i64 %_load4523
  store i1 0, i1* %_gep4524
  %_load4526 = load i64, i64* %_j4514
  %_load4527 = load i64, i64* %_i4497
  %_bop4528 = add i64 %_load4526, %_load4527
  store i64 %_bop4528, i64* %_j4514
  br label %_for_cond4516
_for_exit4518:
  br label %_join4507
_else4506:
  br label %_join4507
_join4507:
  %_load4530 = load i64, i64* %_i4497
  %_bop4531 = add i64 %_load4530, 1
  store i64 %_bop4531, i64* %_i4497
  br label %_for_cond4499
_for_exit4501:
  store i64 0, i64* %_count4533
  store i64 0, i64* %_i4535
  br label %_for_cond4537
_for_cond4537:
  %_load4540 = load i64, i64* %_i4535
  %_load4541 = load i64, i64* %_n4469
  %_bop4542 = icmp slt i64 %_load4540, %_load4541
  br i1 %_bop4542, label %_for_body4538, label %_for_exit4539
_for_body4538:
  %_load4546 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4474
  %_load4547 = load i64, i64* %_i4535
  %_gep4548 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load4546, i32 0, i32 1, i64 %_load4547
  %_load4549 = load i1, i1* %_gep4548
  br i1 %_load4549, label %_then4543, label %_else4544
_then4543:
  %_load4550 = load i64, i64* %_count4533
  %_bop4551 = add i64 %_load4550, 1
  store i64 %_bop4551, i64* %_count4533
  br label %_join4545
_else4544:
  br label %_join4545
_join4545:
  %_load4553 = load i64, i64* %_i4535
  %_bop4554 = add i64 %_load4553, 1
  store i64 %_bop4554, i64* %_i4535
  br label %_for_cond4537
_for_exit4539:
  %_load4556 = load i64, i64* %_count4533
  ret i64 %_load4556
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4461 = alloca i64
  %_argv4463 = alloca { i64, [0 x i8*] }*
  %_n4465 = alloca i64
  store i64 %argc, i64* %_argc4461
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4463
  store i64 100, i64* %_n4465
  %_load4467 = load i64, i64* %_n4465
  %_call4468 = call i64 @sieve(i64 %_load4467)
  ret i64 %_call4468
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
