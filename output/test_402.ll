; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str4488 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4637 = alloca { i64, [0 x i64] }*
  %_len4638 = alloca i64
  %_min4644 = alloca i64
  %_i4646 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4637
  store i64 %len, i64* %_len4638
  %_arr4641 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4637
  %_gep4642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4641, i32 0, i32 1, i32 0
  %_load4643 = load i64, i64* %_gep4642
  store i64 %_load4643, i64* %_min4644
  store i64 0, i64* %_i4646
  br label %_for_cond4648
_for_cond4648:
  %_i4651 = load i64, i64* %_i4646
  %_len4652 = load i64, i64* %_len4638
  %_bop4653 = icmp slt i64 %_i4651, %_len4652
  br i1 %_bop4653, label %_for_body4649, label %_for_exit4650
_for_body4649:
  %_arr4657 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4637
  %_i4658 = load i64, i64* %_i4646
  %_gep4659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4657, i32 0, i32 1, i64 %_i4658
  %_load4660 = load i64, i64* %_gep4659
  %_min4661 = load i64, i64* %_min4644
  %_bop4662 = icmp slt i64 %_load4660, %_min4661
  br i1 %_bop4662, label %_then4654, label %_else4655
_then4654:
  %_arr4663 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4637
  %_i4664 = load i64, i64* %_i4646
  %_gep4665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4663, i32 0, i32 1, i64 %_i4664
  %_load4666 = load i64, i64* %_gep4665
  store i64 %_load4666, i64* %_min4644
  br label %_join4656
_else4655:
  br label %_join4656
_join4656:
  %_i4668 = load i64, i64* %_i4646
  %_bop4669 = add i64 %_i4668, 1
  store i64 %_bop4669, i64* %_i4646
  br label %_for_cond4648
_for_exit4650:
  %_min4671 = load i64, i64* %_min4644
  ret i64 %_min4671
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4602 = alloca { i64, [0 x i64] }*
  %_len4603 = alloca i64
  %_max4609 = alloca i64
  %_i4611 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4602
  store i64 %len, i64* %_len4603
  %_arr4606 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4602
  %_gep4607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4606, i32 0, i32 1, i32 0
  %_load4608 = load i64, i64* %_gep4607
  store i64 %_load4608, i64* %_max4609
  store i64 0, i64* %_i4611
  br label %_for_cond4613
_for_cond4613:
  %_i4616 = load i64, i64* %_i4611
  %_len4617 = load i64, i64* %_len4603
  %_bop4618 = icmp slt i64 %_i4616, %_len4617
  br i1 %_bop4618, label %_for_body4614, label %_for_exit4615
_for_body4614:
  %_arr4622 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4602
  %_i4623 = load i64, i64* %_i4611
  %_gep4624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4622, i32 0, i32 1, i64 %_i4623
  %_load4625 = load i64, i64* %_gep4624
  %_max4626 = load i64, i64* %_max4609
  %_bop4627 = icmp sgt i64 %_load4625, %_max4626
  br i1 %_bop4627, label %_then4619, label %_else4620
_then4619:
  %_arr4628 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4602
  %_i4629 = load i64, i64* %_i4611
  %_gep4630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4628, i32 0, i32 1, i64 %_i4629
  %_load4631 = load i64, i64* %_gep4630
  store i64 %_load4631, i64* %_max4609
  br label %_join4621
_else4620:
  br label %_join4621
_join4621:
  %_i4633 = load i64, i64* %_i4611
  %_bop4634 = add i64 %_i4633, 1
  store i64 %_bop4634, i64* %_i4611
  br label %_for_cond4613
_for_exit4615:
  %_max4636 = load i64, i64* %_max4609
  ret i64 %_max4636
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4499 = alloca { i64, [0 x i64] }*
  %_len4500 = alloca i64
  %_min4506 = alloca i64
  %_max4511 = alloca i64
  %_counts4519 = alloca { i64, [0 x i64] }*
  %_i4521 = alloca i64
  %_i4552 = alloca i64
  %_j4554 = alloca i64
  %_out4559 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4499
  store i64 %len, i64* %_len4500
  %_len4504 = load i64, i64* %_len4500
  %_arr4503 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4499
  %_call4505 = call i64 @min({ i64, [0 x i64] }* %_arr4503, i64 %_len4504)
  store i64 %_call4505, i64* %_min4506
  %_len4509 = load i64, i64* %_len4500
  %_arr4508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4499
  %_call4510 = call i64 @max({ i64, [0 x i64] }* %_arr4508, i64 %_len4509)
  store i64 %_call4510, i64* %_max4511
  %_max4513 = load i64, i64* %_max4511
  %_min4514 = load i64, i64* %_min4506
  %_bop4515 = sub i64 %_max4513, %_min4514
  %_bop4516 = add i64 %_bop4515, 1
  %_raw_array4517 = call i64* @oat_alloc_array(i64 %_bop4516)
  %_array4518 = bitcast i64* %_raw_array4517 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4518, { i64, [0 x i64] }** %_counts4519
  store i64 0, i64* %_i4521
  br label %_for_cond4523
_for_cond4523:
  %_i4526 = load i64, i64* %_i4521
  %_len4527 = load i64, i64* %_len4500
  %_bop4528 = icmp slt i64 %_i4526, %_len4527
  br i1 %_bop4528, label %_for_body4524, label %_for_exit4525
_for_body4524:
  %_counts4529 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4519
  %_arr4530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4499
  %_i4531 = load i64, i64* %_i4521
  %_gep4532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4530, i32 0, i32 1, i64 %_i4531
  %_load4533 = load i64, i64* %_gep4532
  %_min4534 = load i64, i64* %_min4506
  %_bop4535 = sub i64 %_load4533, %_min4534
  %_gep4536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4529, i32 0, i32 1, i64 %_bop4535
  %_load4537 = load i64, i64* %_gep4536
  %_bop4538 = add i64 %_load4537, 1
  %_counts4539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4519
  %_arr4540 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4499
  %_i4541 = load i64, i64* %_i4521
  %_gep4542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4540, i32 0, i32 1, i64 %_i4541
  %_load4543 = load i64, i64* %_gep4542
  %_min4544 = load i64, i64* %_min4506
  %_bop4545 = sub i64 %_load4543, %_min4544
  %_gep4546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4539, i32 0, i32 1, i64 %_bop4545
  store i64 %_bop4538, i64* %_gep4546
  %_i4548 = load i64, i64* %_i4521
  %_bop4549 = add i64 %_i4548, 1
  store i64 %_bop4549, i64* %_i4521
  br label %_for_cond4523
_for_exit4525:
  %_min4551 = load i64, i64* %_min4506
  store i64 %_min4551, i64* %_i4552
  store i64 0, i64* %_j4554
  %_len4556 = load i64, i64* %_len4500
  %_raw_array4557 = call i64* @oat_alloc_array(i64 %_len4556)
  %_array4558 = bitcast i64* %_raw_array4557 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4558, { i64, [0 x i64] }** %_out4559
  br label %_while_cond4561
_while_cond4561:
  %_i4564 = load i64, i64* %_i4552
  %_max4565 = load i64, i64* %_max4511
  %_bop4566 = icmp sle i64 %_i4564, %_max4565
  br i1 %_bop4566, label %_while_body4562, label %_while_exit4563
_while_body4562:
  %_counts4570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4519
  %_i4571 = load i64, i64* %_i4552
  %_min4572 = load i64, i64* %_min4506
  %_bop4573 = sub i64 %_i4571, %_min4572
  %_gep4574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4570, i32 0, i32 1, i64 %_bop4573
  %_load4575 = load i64, i64* %_gep4574
  %_bop4576 = icmp sgt i64 %_load4575, 0
  br i1 %_bop4576, label %_then4567, label %_else4568
_then4567:
  %_i4577 = load i64, i64* %_i4552
  %_out4578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4559
  %_j4579 = load i64, i64* %_j4554
  %_gep4580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4578, i32 0, i32 1, i64 %_j4579
  store i64 %_i4577, i64* %_gep4580
  %_counts4582 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4519
  %_i4583 = load i64, i64* %_i4552
  %_min4584 = load i64, i64* %_min4506
  %_bop4585 = sub i64 %_i4583, %_min4584
  %_gep4586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4582, i32 0, i32 1, i64 %_bop4585
  %_load4587 = load i64, i64* %_gep4586
  %_bop4588 = sub i64 %_load4587, 1
  %_counts4589 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4519
  %_i4590 = load i64, i64* %_i4552
  %_min4591 = load i64, i64* %_min4506
  %_bop4592 = sub i64 %_i4590, %_min4591
  %_gep4593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4589, i32 0, i32 1, i64 %_bop4592
  store i64 %_bop4588, i64* %_gep4593
  %_j4595 = load i64, i64* %_j4554
  %_bop4596 = add i64 %_j4595, 1
  store i64 %_bop4596, i64* %_j4554
  br label %_join4569
_else4568:
  %_i4598 = load i64, i64* %_i4552
  %_bop4599 = add i64 %_i4598, 1
  store i64 %_bop4599, i64* %_i4552
  br label %_join4569
_join4569:
  br label %_while_cond4561
_while_exit4563:
  %_out4601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4559
  ret { i64, [0 x i64] }* %_out4601
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4457 = alloca i64
  %_argv4458 = alloca { i64, [0 x i8*] }*
  %_arr4481 = alloca { i64, [0 x i64] }*
  %_len4483 = alloca i64
  %_sorted4494 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc4457
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4458
  %_raw_array4461 = call i64* @oat_alloc_array(i64 9)
  %_array4462 = bitcast i64* %_raw_array4461 to { i64, [0 x i64] }*
  %_gep_lit4463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 0
  store i64 65, i64* %_gep_lit4463
  %_gep_lit4465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 1
  store i64 70, i64* %_gep_lit4465
  %_gep_lit4467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 2
  store i64 72, i64* %_gep_lit4467
  %_gep_lit4469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 3
  store i64 90, i64* %_gep_lit4469
  %_gep_lit4471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 4
  store i64 65, i64* %_gep_lit4471
  %_gep_lit4473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 5
  store i64 65, i64* %_gep_lit4473
  %_gep_lit4475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 6
  store i64 69, i64* %_gep_lit4475
  %_gep_lit4477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 7
  store i64 89, i64* %_gep_lit4477
  %_gep_lit4479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4462, i32 0, i32 1, i32 8
  store i64 67, i64* %_gep_lit4479
  store { i64, [0 x i64] }* %_array4462, { i64, [0 x i64] }** %_arr4481
  store i64 9, i64* %_len4483
  %_arr4485 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4481
  %_call4486 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4485)
  call void @print_string(i8* %_call4486)
  %_strptr4489 = bitcast [2 x i8]* @_str4488 to i8*
  call void @print_string(i8* %_strptr4489)
  %_len4492 = load i64, i64* %_len4483
  %_arr4491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4481
  %_call4493 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4491, i64 %_len4492)
  store { i64, [0 x i64] }* %_call4493, { i64, [0 x i64] }** %_sorted4494
  %_sorted4496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4494
  %_call4497 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4496)
  call void @print_string(i8* %_call4497)
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
