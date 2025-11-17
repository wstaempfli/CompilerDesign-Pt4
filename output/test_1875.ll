; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str4588 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4737 = alloca { i64, [0 x i64] }*
  %_len4738 = alloca i64
  %_min4744 = alloca i64
  %_i4746 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4737
  store i64 %len, i64* %_len4738
  %_arr4741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4737
  %_4742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4741, i32 0, i32 1, i32 0
  %_4743 = load i64, i64* %_4742
  store i64 %_4743, i64* %_min4744
  store i64 0, i64* %_i4746
  br label %_for_cond4748
_for_cond4748:
  %_i4751 = load i64, i64* %_i4746
  %_len4752 = load i64, i64* %_len4738
  %_bop4753 = icmp slt i64 %_i4751, %_len4752
  br i1 %_bop4753, label %_for_body4749, label %_for_exit4750
_for_body4749:
  %_arr4757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4737
  %_i4758 = load i64, i64* %_i4746
  %_4759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4757, i32 0, i32 1, i64 %_i4758
  %_4760 = load i64, i64* %_4759
  %_min4761 = load i64, i64* %_min4744
  %_bop4762 = icmp slt i64 %_4760, %_min4761
  br i1 %_bop4762, label %_then4754, label %_else4755
_then4754:
  %_arr4763 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4737
  %_i4764 = load i64, i64* %_i4746
  %_4765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4763, i32 0, i32 1, i64 %_i4764
  %_4766 = load i64, i64* %_4765
  store i64 %_4766, i64* %_min4744
  br label %_join4756
_else4755:
  br label %_join4756
_join4756:
  %_i4768 = load i64, i64* %_i4746
  %_bop4769 = add i64 %_i4768, 1
  store i64 %_bop4769, i64* %_i4746
  br label %_for_cond4748
_for_exit4750:
  %_min4771 = load i64, i64* %_min4744
  ret i64 %_min4771
}

define i64 @max({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4702 = alloca { i64, [0 x i64] }*
  %_len4703 = alloca i64
  %_max4709 = alloca i64
  %_i4711 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4702
  store i64 %len, i64* %_len4703
  %_arr4706 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4702
  %_4707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4706, i32 0, i32 1, i32 0
  %_4708 = load i64, i64* %_4707
  store i64 %_4708, i64* %_max4709
  store i64 0, i64* %_i4711
  br label %_for_cond4713
_for_cond4713:
  %_i4716 = load i64, i64* %_i4711
  %_len4717 = load i64, i64* %_len4703
  %_bop4718 = icmp slt i64 %_i4716, %_len4717
  br i1 %_bop4718, label %_for_body4714, label %_for_exit4715
_for_body4714:
  %_arr4722 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4702
  %_i4723 = load i64, i64* %_i4711
  %_4724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4722, i32 0, i32 1, i64 %_i4723
  %_4725 = load i64, i64* %_4724
  %_max4726 = load i64, i64* %_max4709
  %_bop4727 = icmp sgt i64 %_4725, %_max4726
  br i1 %_bop4727, label %_then4719, label %_else4720
_then4719:
  %_arr4728 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4702
  %_i4729 = load i64, i64* %_i4711
  %_4730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4728, i32 0, i32 1, i64 %_i4729
  %_4731 = load i64, i64* %_4730
  store i64 %_4731, i64* %_max4709
  br label %_join4721
_else4720:
  br label %_join4721
_join4721:
  %_i4733 = load i64, i64* %_i4711
  %_bop4734 = add i64 %_i4733, 1
  store i64 %_bop4734, i64* %_i4711
  br label %_for_cond4713
_for_exit4715:
  %_max4736 = load i64, i64* %_max4709
  ret i64 %_max4736
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %arr, i64 %len) {
  %_arr4599 = alloca { i64, [0 x i64] }*
  %_len4600 = alloca i64
  %_min4606 = alloca i64
  %_max4611 = alloca i64
  %_counts4619 = alloca { i64, [0 x i64] }*
  %_i4621 = alloca i64
  %_i4652 = alloca i64
  %_j4654 = alloca i64
  %_out4659 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr4599
  store i64 %len, i64* %_len4600
  %_len4604 = load i64, i64* %_len4600
  %_arr4603 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_funcall4605 = call i64 @min({ i64, [0 x i64] }* %_arr4603, i64 %_len4604)
  store i64 %_funcall4605, i64* %_min4606
  %_len4609 = load i64, i64* %_len4600
  %_arr4608 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_funcall4610 = call i64 @max({ i64, [0 x i64] }* %_arr4608, i64 %_len4609)
  store i64 %_funcall4610, i64* %_max4611
  %_max4613 = load i64, i64* %_max4611
  %_min4614 = load i64, i64* %_min4606
  %_bop4615 = sub i64 %_max4613, %_min4614
  %_bop4616 = add i64 %_bop4615, 1
  %_raw_array4617 = call i64* @oat_alloc_array(i64 %_bop4616)
  %_array4618 = bitcast i64* %_raw_array4617 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4618, { i64, [0 x i64] }** %_counts4619
  store i64 0, i64* %_i4621
  br label %_for_cond4623
_for_cond4623:
  %_i4626 = load i64, i64* %_i4621
  %_len4627 = load i64, i64* %_len4600
  %_bop4628 = icmp slt i64 %_i4626, %_len4627
  br i1 %_bop4628, label %_for_body4624, label %_for_exit4625
_for_body4624:
  %_counts4629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_arr4630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_i4631 = load i64, i64* %_i4621
  %_4632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4630, i32 0, i32 1, i64 %_i4631
  %_4633 = load i64, i64* %_4632
  %_min4634 = load i64, i64* %_min4606
  %_bop4635 = sub i64 %_4633, %_min4634
  %_4636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4629, i32 0, i32 1, i64 %_bop4635
  %_4637 = load i64, i64* %_4636
  %_bop4638 = add i64 %_4637, 1
  %_counts4639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_arr4640 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4599
  %_i4641 = load i64, i64* %_i4621
  %_4642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4640, i32 0, i32 1, i64 %_i4641
  %_4643 = load i64, i64* %_4642
  %_min4644 = load i64, i64* %_min4606
  %_bop4645 = sub i64 %_4643, %_min4644
  %_gep4646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4639, i32 0, i32 1, i64 %_bop4645
  store i64 %_bop4638, i64* %_gep4646
  %_i4648 = load i64, i64* %_i4621
  %_bop4649 = add i64 %_i4648, 1
  store i64 %_bop4649, i64* %_i4621
  br label %_for_cond4623
_for_exit4625:
  %_min4651 = load i64, i64* %_min4606
  store i64 %_min4651, i64* %_i4652
  store i64 0, i64* %_j4654
  %_len4656 = load i64, i64* %_len4600
  %_raw_array4657 = call i64* @oat_alloc_array(i64 %_len4656)
  %_array4658 = bitcast i64* %_raw_array4657 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4658, { i64, [0 x i64] }** %_out4659
  br label %_while_cond4661
_while_cond4661:
  %_i4664 = load i64, i64* %_i4652
  %_max4665 = load i64, i64* %_max4611
  %_bop4666 = icmp sle i64 %_i4664, %_max4665
  br i1 %_bop4666, label %_while_body4662, label %_while_exit4663
_while_body4662:
  %_counts4670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_i4671 = load i64, i64* %_i4652
  %_min4672 = load i64, i64* %_min4606
  %_bop4673 = sub i64 %_i4671, %_min4672
  %_4674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4670, i32 0, i32 1, i64 %_bop4673
  %_4675 = load i64, i64* %_4674
  %_bop4676 = icmp sgt i64 %_4675, 0
  br i1 %_bop4676, label %_then4667, label %_else4668
_then4667:
  %_i4677 = load i64, i64* %_i4652
  %_out4678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4659
  %_j4679 = load i64, i64* %_j4654
  %_gep4680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4678, i32 0, i32 1, i64 %_j4679
  store i64 %_i4677, i64* %_gep4680
  %_counts4682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_i4683 = load i64, i64* %_i4652
  %_min4684 = load i64, i64* %_min4606
  %_bop4685 = sub i64 %_i4683, %_min4684
  %_4686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4682, i32 0, i32 1, i64 %_bop4685
  %_4687 = load i64, i64* %_4686
  %_bop4688 = sub i64 %_4687, 1
  %_counts4689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4619
  %_i4690 = load i64, i64* %_i4652
  %_min4691 = load i64, i64* %_min4606
  %_bop4692 = sub i64 %_i4690, %_min4691
  %_gep4693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4689, i32 0, i32 1, i64 %_bop4692
  store i64 %_bop4688, i64* %_gep4693
  %_j4695 = load i64, i64* %_j4654
  %_bop4696 = add i64 %_j4695, 1
  store i64 %_bop4696, i64* %_j4654
  br label %_join4669
_else4668:
  %_i4698 = load i64, i64* %_i4652
  %_bop4699 = add i64 %_i4698, 1
  store i64 %_bop4699, i64* %_i4652
  br label %_join4669
_join4669:
  br label %_while_cond4661
_while_exit4663:
  %_out4701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4659
  ret { i64, [0 x i64] }* %_out4701
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4557 = alloca i64
  %_argv4558 = alloca { i64, [0 x i8*] }*
  %_arr4581 = alloca { i64, [0 x i64] }*
  %_len4583 = alloca i64
  %_sorted4594 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc4557
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4558
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
  %_arr4585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4581
  %_funcall4586 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4585)
  call void @print_string(i8* %_funcall4586)
  %_str4589 = bitcast [2 x i8]* @_str4588 to i8*
  call void @print_string(i8* %_str4589)
  %_len4592 = load i64, i64* %_len4583
  %_arr4591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4581
  %_funcall4593 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4591, i64 %_len4592)
  store { i64, [0 x i64] }* %_funcall4593, { i64, [0 x i64] }** %_sorted4594
  %_sorted4596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4594
  %_funcall4597 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4596)
  call void @print_string(i8* %_funcall4597)
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
