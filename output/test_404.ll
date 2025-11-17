; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4849 = alloca { i64, [0 x i64] }*
  %_i4850 = alloca i64
  %_len4851 = alloca i64
  %_l4857 = alloca i64
  %_r4861 = alloca i64
  %_tmp4863 = alloca i64
  %_m4866 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4849
  store i64 %i, i64* %_i4850
  store i64 %len, i64* %_len4851
  %_i4855 = load i64, i64* %_i4850
  %_bop4856 = mul i64 %_i4855, 2
  store i64 %_bop4856, i64* %_l4857
  %_i4859 = load i64, i64* %_i4850
  %_bop4860 = add i64 %_i4859, 1
  store i64 %_bop4860, i64* %_r4861
  store i64 0, i64* %_tmp4863
  %_i4865 = load i64, i64* %_i4850
  store i64 %_i4865, i64* %_m4866
  %_l4871 = load i64, i64* %_l4857
  %_len4872 = load i64, i64* %_len4851
  %_bop4873 = icmp slt i64 %_l4871, %_len4872
  br i1 %_bop4873, label %_then4868, label %_else4869
_then4868:
  %_array4877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_l4878 = load i64, i64* %_l4857
  %_gep4879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i64 %_l4878
  %_load4880 = load i64, i64* %_gep4879
  %_array4881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_m4882 = load i64, i64* %_m4866
  %_gep4883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4881, i32 0, i32 1, i64 %_m4882
  %_load4884 = load i64, i64* %_gep4883
  %_bop4885 = icmp sgt i64 %_load4880, %_load4884
  br i1 %_bop4885, label %_then4874, label %_else4875
_then4874:
  %_l4886 = load i64, i64* %_l4857
  store i64 %_l4886, i64* %_m4866
  br label %_join4876
_else4875:
  br label %_join4876
_join4876:
  br label %_join4870
_else4869:
  br label %_join4870
_join4870:
  %_r4891 = load i64, i64* %_r4861
  %_len4892 = load i64, i64* %_len4851
  %_bop4893 = icmp slt i64 %_r4891, %_len4892
  br i1 %_bop4893, label %_then4888, label %_else4889
_then4888:
  %_array4897 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_r4898 = load i64, i64* %_r4861
  %_gep4899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4897, i32 0, i32 1, i64 %_r4898
  %_load4900 = load i64, i64* %_gep4899
  %_array4901 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_m4902 = load i64, i64* %_m4866
  %_gep4903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4901, i32 0, i32 1, i64 %_m4902
  %_load4904 = load i64, i64* %_gep4903
  %_bop4905 = icmp sgt i64 %_load4900, %_load4904
  br i1 %_bop4905, label %_then4894, label %_else4895
_then4894:
  %_r4906 = load i64, i64* %_r4861
  store i64 %_r4906, i64* %_m4866
  br label %_join4896
_else4895:
  br label %_join4896
_join4896:
  br label %_join4890
_else4889:
  br label %_join4890
_join4890:
  %_m4911 = load i64, i64* %_m4866
  %_i4912 = load i64, i64* %_i4850
  %_bop4913 = icmp ne i64 %_m4911, %_i4912
  br i1 %_bop4913, label %_then4908, label %_else4909
_then4908:
  %_array4914 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_i4915 = load i64, i64* %_i4850
  %_gep4916 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4914, i32 0, i32 1, i64 %_i4915
  %_load4917 = load i64, i64* %_gep4916
  store i64 %_load4917, i64* %_tmp4863
  %_array4919 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_m4920 = load i64, i64* %_m4866
  %_gep4921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4919, i32 0, i32 1, i64 %_m4920
  %_load4922 = load i64, i64* %_gep4921
  %_array4923 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_i4924 = load i64, i64* %_i4850
  %_gep4925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4923, i32 0, i32 1, i64 %_i4924
  store i64 %_load4922, i64* %_gep4925
  %_tmp4927 = load i64, i64* %_tmp4863
  %_array4928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  %_m4929 = load i64, i64* %_m4866
  %_gep4930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4928, i32 0, i32 1, i64 %_m4929
  store i64 %_tmp4927, i64* %_gep4930
  %_len4934 = load i64, i64* %_len4851
  %_m4933 = load i64, i64* %_m4866
  %_array4932 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4849
  call void @min_heapify({ i64, [0 x i64] }* %_array4932, i64 %_m4933, i64 %_len4934)
  br label %_join4910
_else4909:
  br label %_join4910
_join4910:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4830 = alloca { i64, [0 x i64] }*
  %_len4831 = alloca i64
  %_i4835 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4830
  store i64 %len, i64* %_len4831
  %_len4834 = load i64, i64* %_len4831
  store i64 %_len4834, i64* %_i4835
  br label %_for_cond4837
_for_cond4837:
  %_i4840 = load i64, i64* %_i4835
  %_bop4841 = icmp sge i64 %_i4840, 1
  br i1 %_bop4841, label %_for_body4838, label %_for_exit4839
_for_body4838:
  %_len4844 = load i64, i64* %_len4831
  %_i4843 = load i64, i64* %_i4835
  %_array4842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4830
  call void @min_heapify({ i64, [0 x i64] }* %_array4842, i64 %_i4843, i64 %_len4844)
  %_i4846 = load i64, i64* %_i4835
  %_bop4847 = sub i64 %_i4846, 1
  store i64 %_bop4847, i64* %_i4835
  br label %_for_cond4837
_for_exit4839:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4746 = alloca i64
  %_argv4747 = alloca { i64, [0 x i8*] }*
  %_array4774 = alloca { i64, [0 x i64] }*
  %_end_result4800 = alloca { i64, [0 x i64] }*
  %_same4804 = alloca i64
  %_i4806 = alloca i64
  store i64 %argc, i64* %_argc4746
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4747
  %_raw_array4750 = call i64* @oat_alloc_array(i64 11)
  %_array4751 = bitcast i64* %_raw_array4750 to { i64, [0 x i64] }*
  %_gep_lit4752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4752
  %_gep_lit4754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep_lit4754
  %_gep_lit4756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit4756
  %_gep_lit4758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep_lit4758
  %_gep_lit4760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep_lit4760
  %_gep_lit4762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 5
  store i64 10, i64* %_gep_lit4762
  %_gep_lit4764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep_lit4764
  %_gep_lit4766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep_lit4766
  %_gep_lit4768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep_lit4768
  %_gep_lit4770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 9
  store i64 4, i64* %_gep_lit4770
  %_gep_lit4772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4751, i32 0, i32 1, i32 10
  store i64 5, i64* %_gep_lit4772
  store { i64, [0 x i64] }* %_array4751, { i64, [0 x i64] }** %_array4774
  %_raw_array4776 = call i64* @oat_alloc_array(i64 11)
  %_array4777 = bitcast i64* %_raw_array4776 to { i64, [0 x i64] }*
  %_gep_lit4778 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4778
  %_gep_lit4780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit4780
  %_gep_lit4782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep_lit4782
  %_gep_lit4784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep_lit4784
  %_gep_lit4786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep_lit4786
  %_gep_lit4788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 5
  store i64 5, i64* %_gep_lit4788
  %_gep_lit4790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep_lit4790
  %_gep_lit4792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep_lit4792
  %_gep_lit4794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep_lit4794
  %_gep_lit4796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 9
  store i64 9, i64* %_gep_lit4796
  %_gep_lit4798 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4777, i32 0, i32 1, i32 10
  store i64 10, i64* %_gep_lit4798
  store { i64, [0 x i64] }* %_array4777, { i64, [0 x i64] }** %_end_result4800
  %_array4802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4774
  call void @make_min_heap({ i64, [0 x i64] }* %_array4802, i64 10)
  store i64 0, i64* %_same4804
  store i64 0, i64* %_i4806
  br label %_for_cond4808
_for_cond4808:
  %_i4811 = load i64, i64* %_i4806
  %_bop4812 = icmp slt i64 %_i4811, 11
  br i1 %_bop4812, label %_for_body4809, label %_for_exit4810
_for_body4809:
  %_array4816 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4774
  %_i4817 = load i64, i64* %_i4806
  %_gep4818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4816, i32 0, i32 1, i64 %_i4817
  %_load4819 = load i64, i64* %_gep4818
  %_end_result4820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result4800
  %_i4821 = load i64, i64* %_i4806
  %_gep4822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result4820, i32 0, i32 1, i64 %_i4821
  %_load4823 = load i64, i64* %_gep4822
  %_bop4824 = icmp ne i64 %_load4819, %_load4823
  br i1 %_bop4824, label %_then4813, label %_else4814
_then4813:
  store i64 1, i64* %_same4804
  br label %_join4815
_else4814:
  br label %_join4815
_join4815:
  %_i4826 = load i64, i64* %_i4806
  %_bop4827 = add i64 %_i4826, 1
  store i64 %_bop4827, i64* %_i4806
  br label %_for_cond4808
_for_exit4810:
  %_same4829 = load i64, i64* %_same4804
  ret i64 %_same4829
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
