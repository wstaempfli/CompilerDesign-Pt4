; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr5678 = alloca { i64, [0 x i64] }*
  %_size5679 = alloca i64
  %_maxarr5685 = alloca { i64, [0 x i64] }*
  %_maxs5687 = alloca i64
  %_i5695 = alloca i64
  %_j5703 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr5678
  store i64 %size, i64* %_size5679
  %_size5682 = load i64, i64* %_size5679
  %_raw_array5683 = call i64* @oat_alloc_array(i64 %_size5682)
  %_array5684 = bitcast i64* %_raw_array5683 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5684, { i64, [0 x i64] }** %_maxarr5685
  store i64 0, i64* %_maxs5687
  %_arr5689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5678
  %_gep5690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5689, i32 0, i32 1, i32 0
  %_load5691 = load i64, i64* %_gep5690
  %_maxarr5692 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5685
  %_gep5693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5692, i32 0, i32 1, i32 0
  store i64 %_load5691, i64* %_gep5693
  store i64 0, i64* %_i5695
  br label %_for_cond5697
_for_cond5697:
  %_i5700 = load i64, i64* %_i5695
  %_size5701 = load i64, i64* %_size5679
  %_bop5702 = icmp slt i64 %_i5700, %_size5701
  br i1 %_bop5702, label %_for_body5698, label %_for_exit5699
_for_body5698:
  store i64 0, i64* %_j5703
  br label %_for_cond5705
_for_cond5705:
  %_j5708 = load i64, i64* %_j5703
  %_i5709 = load i64, i64* %_i5695
  %_bop5710 = icmp slt i64 %_j5708, %_i5709
  br i1 %_bop5710, label %_for_body5706, label %_for_exit5707
_for_body5706:
  %_arr5714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5678
  %_i5715 = load i64, i64* %_i5695
  %_gep5716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5714, i32 0, i32 1, i64 %_i5715
  %_load5717 = load i64, i64* %_gep5716
  %_arr5718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5678
  %_j5719 = load i64, i64* %_j5703
  %_gep5720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5718, i32 0, i32 1, i64 %_j5719
  %_load5721 = load i64, i64* %_gep5720
  %_bop5722 = icmp sgt i64 %_load5717, %_load5721
  %_maxarr5723 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5685
  %_i5724 = load i64, i64* %_i5695
  %_gep5725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5723, i32 0, i32 1, i64 %_i5724
  %_load5726 = load i64, i64* %_gep5725
  %_maxarr5727 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5685
  %_j5728 = load i64, i64* %_j5703
  %_gep5729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5727, i32 0, i32 1, i64 %_j5728
  %_load5730 = load i64, i64* %_gep5729
  %_arr5731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5678
  %_i5732 = load i64, i64* %_i5695
  %_gep5733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5731, i32 0, i32 1, i64 %_i5732
  %_load5734 = load i64, i64* %_gep5733
  %_bop5735 = add i64 %_load5730, %_load5734
  %_bop5736 = icmp slt i64 %_load5726, %_bop5735
  %_bop5737 = and i1 %_bop5722, %_bop5736
  br i1 %_bop5737, label %_then5711, label %_else5712
_then5711:
  %_maxarr5738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5685
  %_j5739 = load i64, i64* %_j5703
  %_gep5740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5738, i32 0, i32 1, i64 %_j5739
  %_load5741 = load i64, i64* %_gep5740
  %_arr5742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5678
  %_i5743 = load i64, i64* %_i5695
  %_gep5744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5742, i32 0, i32 1, i64 %_i5743
  %_load5745 = load i64, i64* %_gep5744
  %_bop5746 = add i64 %_load5741, %_load5745
  %_maxarr5747 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5685
  %_i5748 = load i64, i64* %_i5695
  %_gep5749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5747, i32 0, i32 1, i64 %_i5748
  store i64 %_bop5746, i64* %_gep5749
  br label %_join5713
_else5712:
  br label %_join5713
_join5713:
  %_j5751 = load i64, i64* %_j5703
  %_bop5752 = add i64 %_j5751, 1
  store i64 %_bop5752, i64* %_j5703
  br label %_for_cond5705
_for_exit5707:
  %_maxs5757 = load i64, i64* %_maxs5687
  %_maxarr5758 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5685
  %_i5759 = load i64, i64* %_i5695
  %_gep5760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5758, i32 0, i32 1, i64 %_i5759
  %_load5761 = load i64, i64* %_gep5760
  %_bop5762 = icmp slt i64 %_maxs5757, %_load5761
  br i1 %_bop5762, label %_then5754, label %_else5755
_then5754:
  %_maxarr5763 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5685
  %_i5764 = load i64, i64* %_i5695
  %_gep5765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5763, i32 0, i32 1, i64 %_i5764
  %_load5766 = load i64, i64* %_gep5765
  store i64 %_load5766, i64* %_maxs5687
  br label %_join5756
_else5755:
  br label %_join5756
_join5756:
  %_i5768 = load i64, i64* %_i5695
  %_bop5769 = add i64 %_i5768, 1
  store i64 %_bop5769, i64* %_i5695
  br label %_for_cond5697
_for_exit5699:
  %_maxs5771 = load i64, i64* %_maxs5687
  ret i64 %_maxs5771
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5651 = alloca i64
  %_argv5652 = alloca { i64, [0 x i8*] }*
  %_array5671 = alloca { i64, [0 x i64] }*
  %_max_ans5675 = alloca i64
  store i64 %argc, i64* %_argc5651
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5652
  %_raw_array5655 = call i64* @oat_alloc_array(i64 7)
  %_array5656 = bitcast i64* %_raw_array5655 to { i64, [0 x i64] }*
  %_gep_lit5657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit5657
  %_gep_lit5659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 1
  store i64 101, i64* %_gep_lit5659
  %_gep_lit5661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit5661
  %_gep_lit5663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep_lit5663
  %_gep_lit5665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 4
  store i64 101, i64* %_gep_lit5665
  %_gep_lit5667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 5
  store i64 4, i64* %_gep_lit5667
  %_gep_lit5669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5656, i32 0, i32 1, i32 6
  store i64 5, i64* %_gep_lit5669
  store { i64, [0 x i64] }* %_array5656, { i64, [0 x i64] }** %_array5671
  %_array5673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5671
  %_call5674 = call i64 @maxsum({ i64, [0 x i64] }* %_array5673, i64 7)
  store i64 %_call5674, i64* %_max_ans5675
  %_max_ans5677 = load i64, i64* %_max_ans5675
  ret i64 %_max_ans5677
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
