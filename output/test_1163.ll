; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str4588 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4737 = alloca { i64, [0 x i64] }*
  %_len4739 = alloca i64
  %_min4744 = alloca i64
  %_i4746 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4737
  store i64 %len, i64* %_len4739
  %_load4741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4737
  %_gep4742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4741, i32 0, i32 1, i32 0
  %_load4743 = load i64, i64* %_gep4742
  store i64 %_load4743, i64* %_min4744
  store i64 0, i64* %_i4746
  br label %_for_cond4748
_for_cond4748:
  %_load4751 = load i64, i64* %_i4746
  %_load4752 = load i64, i64* %_len4739
  %_bop4753 = icmp slt i64 %_load4751, %_load4752
  br i1 %_bop4753, label %_for_body4749, label %_for_exit4750
_for_body4749:
  %_load4757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4737
  %_load4758 = load i64, i64* %_i4746
  %_gep4759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4757, i32 0, i32 1, i64 %_load4758
  %_load4760 = load i64, i64* %_gep4759
  %_load4761 = load i64, i64* %_min4744
  %_bop4762 = icmp slt i64 %_load4760, %_load4761
  br i1 %_bop4762, label %_then4754, label %_else4755
_then4754:
  %_load4763 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4737
  %_load4764 = load i64, i64* %_i4746
  %_gep4765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4763, i32 0, i32 1, i64 %_load4764
  %_load4766 = load i64, i64* %_gep4765
  store i64 %_load4766, i64* %_min4744
  br label %_join4756
_else4755:
  br label %_join4756
_join4756:
  %_load4768 = load i64, i64* %_i4746
  %_bop4769 = add i64 %_load4768, 1
  store i64 %_bop4769, i64* %_i4746
  br label %_for_cond4748
_for_exit4750:
  %_load4771 = load i64, i64* %_min4744
  ret i64 %_load4771
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4702 = alloca { i64, [0 x i64] }*
  %_len4704 = alloca i64
  %_max4709 = alloca i64
  %_i4711 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4702
  store i64 %len, i64* %_len4704
  %_load4706 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4702
  %_gep4707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4706, i32 0, i32 1, i32 0
  %_load4708 = load i64, i64* %_gep4707
  store i64 %_load4708, i64* %_max4709
  store i64 0, i64* %_i4711
  br label %_for_cond4713
_for_cond4713:
  %_load4716 = load i64, i64* %_i4711
  %_load4717 = load i64, i64* %_len4704
  %_bop4718 = icmp slt i64 %_load4716, %_load4717
  br i1 %_bop4718, label %_for_body4714, label %_for_exit4715
_for_body4714:
  %_load4722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4702
  %_load4723 = load i64, i64* %_i4711
  %_gep4724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4722, i32 0, i32 1, i64 %_load4723
  %_load4725 = load i64, i64* %_gep4724
  %_load4726 = load i64, i64* %_max4709
  %_bop4727 = icmp sgt i64 %_load4725, %_load4726
  br i1 %_bop4727, label %_then4719, label %_else4720
_then4719:
  %_load4728 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4702
  %_load4729 = load i64, i64* %_i4711
  %_gep4730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4728, i32 0, i32 1, i64 %_load4729
  %_load4731 = load i64, i64* %_gep4730
  store i64 %_load4731, i64* %_max4709
  br label %_join4721
_else4720:
  br label %_join4721
_join4721:
  %_load4733 = load i64, i64* %_i4711
  %_bop4734 = add i64 %_load4733, 1
  store i64 %_bop4734, i64* %_i4711
  br label %_for_cond4713
_for_exit4715:
  %_load4736 = load i64, i64* %_max4709
  ret i64 %_load4736
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4599 = alloca { i64, [0 x i64] }*
  %_len4601 = alloca i64
  %_min4606 = alloca i64
  %_max4611 = alloca i64
  %_counts4619 = alloca { i64, [0 x i64] }*
  %_i4621 = alloca i64
  %_i4652 = alloca i64
  %_j4654 = alloca i64
  %_out4659 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4599
  store i64 %len, i64* %_len4601
  %_load4604 = load i64, i64* %_len4601
  %_load4603 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_call4605 = call i64 @min({ i64, [0 x i64] }* %_load4603, i64 %_load4604)
  store i64 %_call4605, i64* %_min4606
  %_load4609 = load i64, i64* %_len4601
  %_load4608 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_call4610 = call i64 @max({ i64, [0 x i64] }* %_load4608, i64 %_load4609)
  store i64 %_call4610, i64* %_max4611
  %_load4613 = load i64, i64* %_max4611
  %_load4614 = load i64, i64* %_min4606
  %_bop4615 = sub i64 %_load4613, %_load4614
  %_bop4616 = add i64 %_bop4615, 1
  %_raw_array4617 = call i64* @oat_alloc_array(i64 %_bop4616)
  %_array4618 = bitcast i64* %_raw_array4617 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4618, { i64, [0 x i64] }** %_counts4619
  store i64 0, i64* %_i4621
  br label %_for_cond4623
_for_cond4623:
  %_load4626 = load i64, i64* %_i4621
  %_load4627 = load i64, i64* %_len4601
  %_bop4628 = icmp slt i64 %_load4626, %_load4627
  br i1 %_bop4628, label %_for_body4624, label %_for_exit4625
_for_body4624:
  %_load4629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_load4630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_load4631 = load i64, i64* %_i4621
  %_gep4632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4630, i32 0, i32 1, i64 %_load4631
  %_load4633 = load i64, i64* %_gep4632
  %_load4634 = load i64, i64* %_min4606
  %_bop4635 = sub i64 %_load4633, %_load4634
  %_gep4636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4629, i32 0, i32 1, i64 %_bop4635
  %_load4637 = load i64, i64* %_gep4636
  %_bop4638 = add i64 %_load4637, 1
  %_load4639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_load4640 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_load4641 = load i64, i64* %_i4621
  %_gep4642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4640, i32 0, i32 1, i64 %_load4641
  %_load4643 = load i64, i64* %_gep4642
  %_load4644 = load i64, i64* %_min4606
  %_bop4645 = sub i64 %_load4643, %_load4644
  %_gep4646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4639, i32 0, i32 1, i64 %_bop4645
  store i64 %_bop4638, i64* %_gep4646
  %_load4648 = load i64, i64* %_i4621
  %_bop4649 = add i64 %_load4648, 1
  store i64 %_bop4649, i64* %_i4621
  br label %_for_cond4623
_for_exit4625:
  %_load4651 = load i64, i64* %_min4606
  store i64 %_load4651, i64* %_i4652
  store i64 0, i64* %_j4654
  %_load4656 = load i64, i64* %_len4601
  %_raw_array4657 = call i64* @oat_alloc_array(i64 %_load4656)
  %_array4658 = bitcast i64* %_raw_array4657 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4658, { i64, [0 x i64] }** %_out4659
  br label %_while_cond4661
_while_cond4661:
  %_load4664 = load i64, i64* %_i4652
  %_load4665 = load i64, i64* %_max4611
  %_bop4666 = icmp sle i64 %_load4664, %_load4665
  br i1 %_bop4666, label %_while_body4662, label %_while_exit4663
_while_body4662:
  %_load4670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_load4671 = load i64, i64* %_i4652
  %_load4672 = load i64, i64* %_min4606
  %_bop4673 = sub i64 %_load4671, %_load4672
  %_gep4674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4670, i32 0, i32 1, i64 %_bop4673
  %_load4675 = load i64, i64* %_gep4674
  %_bop4676 = icmp sgt i64 %_load4675, 0
  br i1 %_bop4676, label %_then4667, label %_else4668
_then4667:
  %_load4677 = load i64, i64* %_i4652
  %_load4678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4659
  %_load4679 = load i64, i64* %_j4654
  %_gep4680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4678, i32 0, i32 1, i64 %_load4679
  store i64 %_load4677, i64* %_gep4680
  %_load4682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_load4683 = load i64, i64* %_i4652
  %_load4684 = load i64, i64* %_min4606
  %_bop4685 = sub i64 %_load4683, %_load4684
  %_gep4686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4682, i32 0, i32 1, i64 %_bop4685
  %_load4687 = load i64, i64* %_gep4686
  %_bop4688 = sub i64 %_load4687, 1
  %_load4689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_load4690 = load i64, i64* %_i4652
  %_load4691 = load i64, i64* %_min4606
  %_bop4692 = sub i64 %_load4690, %_load4691
  %_gep4693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4689, i32 0, i32 1, i64 %_bop4692
  store i64 %_bop4688, i64* %_gep4693
  %_load4695 = load i64, i64* %_j4654
  %_bop4696 = add i64 %_load4695, 1
  store i64 %_bop4696, i64* %_j4654
  br label %_join4669
_else4668:
  %_load4698 = load i64, i64* %_i4652
  %_bop4699 = add i64 %_load4698, 1
  store i64 %_bop4699, i64* %_i4652
  br label %_join4669
_join4669:
  br label %_while_cond4661
_while_exit4663:
  %_load4701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4659
  ret { i64, [0 x i64] }* %_load4701
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4557 = alloca i64
  %_argv4559 = alloca { i64, [0 x i8*] }*
  %_arr4581 = alloca { i64, [0 x i64] }*
  %_len4583 = alloca i64
  %_sorted4594 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc4557
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4559
  %_raw_array4561 = call i64* @oat_alloc_array(i64 9)
  %_array4562 = bitcast i64* %_raw_array4561 to { i64, [0 x i64] }*
  %_gep_lit4563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 0
  store i64 65, i64* %_gep_lit4563
  %_gep_lit4565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 1
  store i64 70, i64* %_gep_lit4565
  %_gep_lit4567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 2
  store i64 72, i64* %_gep_lit4567
  %_gep_lit4569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 3
  store i64 90, i64* %_gep_lit4569
  %_gep_lit4571 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 4
  store i64 65, i64* %_gep_lit4571
  %_gep_lit4573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 5
  store i64 65, i64* %_gep_lit4573
  %_gep_lit4575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 6
  store i64 69, i64* %_gep_lit4575
  %_gep_lit4577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 7
  store i64 89, i64* %_gep_lit4577
  %_gep_lit4579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4562, i32 0, i32 1, i32 8
  store i64 67, i64* %_gep_lit4579
  store { i64, [0 x i64] }* %_array4562, { i64, [0 x i64] }** %_arr4581
  store i64 9, i64* %_len4583
  %_load4585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4581
  %_call4586 = call i8* @string_of_array({ i64, [0 x i64] }* %_load4585)
  call void @print_string(i8* %_call4586)
  %_strptr4589 = bitcast [2 x i8]* @_str4588 to i8*
  call void @print_string(i8* %_strptr4589)
  %_load4592 = load i64, i64* %_len4583
  %_load4591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4581
  %_call4593 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_load4591, i64 %_load4592)
  store { i64, [0 x i64] }* %_call4593, { i64, [0 x i64] }** %_sorted4594
  %_load4596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4594
  %_call4597 = call i8* @string_of_array({ i64, [0 x i64] }* %_load4596)
  call void @print_string(i8* %_call4597)
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
