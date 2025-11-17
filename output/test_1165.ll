; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %array, i64 %i, i64 %len) {
  %_array4949 = alloca { i64, [0 x i64] }*
  %_i4951 = alloca i64
  %_len4953 = alloca i64
  %_l4957 = alloca i64
  %_r4961 = alloca i64
  %_tmp4963 = alloca i64
  %_m4966 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4949
  store i64 %i, i64* %_i4951
  store i64 %len, i64* %_len4953
  %_load4955 = load i64, i64* %_i4951
  %_bop4956 = mul i64 %_load4955, 2
  store i64 %_bop4956, i64* %_l4957
  %_load4959 = load i64, i64* %_i4951
  %_bop4960 = add i64 %_load4959, 1
  store i64 %_bop4960, i64* %_r4961
  store i64 0, i64* %_tmp4963
  %_load4965 = load i64, i64* %_i4951
  store i64 %_load4965, i64* %_m4966
  %_load4971 = load i64, i64* %_l4957
  %_load4972 = load i64, i64* %_len4953
  %_bop4973 = icmp slt i64 %_load4971, %_load4972
  br i1 %_bop4973, label %_then4968, label %_else4969
_then4968:
  %_load4977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load4978 = load i64, i64* %_l4957
  %_gep4979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4977, i32 0, i32 1, i64 %_load4978
  %_load4980 = load i64, i64* %_gep4979
  %_load4981 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load4982 = load i64, i64* %_m4966
  %_gep4983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4981, i32 0, i32 1, i64 %_load4982
  %_load4984 = load i64, i64* %_gep4983
  %_bop4985 = icmp sgt i64 %_load4980, %_load4984
  br i1 %_bop4985, label %_then4974, label %_else4975
_then4974:
  %_load4986 = load i64, i64* %_l4957
  store i64 %_load4986, i64* %_m4966
  br label %_join4976
_else4975:
  br label %_join4976
_join4976:
  br label %_join4970
_else4969:
  br label %_join4970
_join4970:
  %_load4991 = load i64, i64* %_r4961
  %_load4992 = load i64, i64* %_len4953
  %_bop4993 = icmp slt i64 %_load4991, %_load4992
  br i1 %_bop4993, label %_then4988, label %_else4989
_then4988:
  %_load4997 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load4998 = load i64, i64* %_r4961
  %_gep4999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4997, i32 0, i32 1, i64 %_load4998
  %_load5000 = load i64, i64* %_gep4999
  %_load5001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load5002 = load i64, i64* %_m4966
  %_gep5003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5001, i32 0, i32 1, i64 %_load5002
  %_load5004 = load i64, i64* %_gep5003
  %_bop5005 = icmp sgt i64 %_load5000, %_load5004
  br i1 %_bop5005, label %_then4994, label %_else4995
_then4994:
  %_load5006 = load i64, i64* %_r4961
  store i64 %_load5006, i64* %_m4966
  br label %_join4996
_else4995:
  br label %_join4996
_join4996:
  br label %_join4990
_else4989:
  br label %_join4990
_join4990:
  %_load5011 = load i64, i64* %_m4966
  %_load5012 = load i64, i64* %_i4951
  %_bop5013 = icmp ne i64 %_load5011, %_load5012
  br i1 %_bop5013, label %_then5008, label %_else5009
_then5008:
  %_load5014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load5015 = load i64, i64* %_i4951
  %_gep5016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5014, i32 0, i32 1, i64 %_load5015
  %_load5017 = load i64, i64* %_gep5016
  store i64 %_load5017, i64* %_tmp4963
  %_load5019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load5020 = load i64, i64* %_m4966
  %_gep5021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5019, i32 0, i32 1, i64 %_load5020
  %_load5022 = load i64, i64* %_gep5021
  %_load5023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load5024 = load i64, i64* %_i4951
  %_gep5025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5023, i32 0, i32 1, i64 %_load5024
  store i64 %_load5022, i64* %_gep5025
  %_load5027 = load i64, i64* %_tmp4963
  %_load5028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  %_load5029 = load i64, i64* %_m4966
  %_gep5030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5028, i32 0, i32 1, i64 %_load5029
  store i64 %_load5027, i64* %_gep5030
  %_load5034 = load i64, i64* %_len4953
  %_load5033 = load i64, i64* %_m4966
  %_load5032 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4949
  call void @min_heapify({ i64, [0 x i64] }* %_load5032, i64 %_load5033, i64 %_load5034)
  br label %_join5010
_else5009:
  br label %_join5010
_join5010:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %array, i64 %len) {
  %_array4930 = alloca { i64, [0 x i64] }*
  %_len4932 = alloca i64
  %_i4935 = alloca i64
  store { i64, [0 x i64] }* %array, { i64, [0 x i64] }** %_array4930
  store i64 %len, i64* %_len4932
  %_load4934 = load i64, i64* %_len4932
  store i64 %_load4934, i64* %_i4935
  br label %_for_cond4937
_for_cond4937:
  %_load4940 = load i64, i64* %_i4935
  %_bop4941 = icmp sge i64 %_load4940, 1
  br i1 %_bop4941, label %_for_body4938, label %_for_exit4939
_for_body4938:
  %_load4944 = load i64, i64* %_len4932
  %_load4943 = load i64, i64* %_i4935
  %_load4942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4930
  call void @min_heapify({ i64, [0 x i64] }* %_load4942, i64 %_load4943, i64 %_load4944)
  %_load4946 = load i64, i64* %_i4935
  %_bop4947 = sub i64 %_load4946, 1
  store i64 %_bop4947, i64* %_i4935
  br label %_for_cond4937
_for_exit4939:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4846 = alloca i64
  %_argv4848 = alloca { i64, [0 x i8*] }*
  %_array4874 = alloca { i64, [0 x i64] }*
  %_end_result4900 = alloca { i64, [0 x i64] }*
  %_same4904 = alloca i64
  %_i4906 = alloca i64
  store i64 %argc, i64* %_argc4846
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4848
  %_raw_array4850 = call i64* @oat_alloc_array(i64 11)
  %_array4851 = bitcast i64* %_raw_array4850 to { i64, [0 x i64] }*
  %_gep_lit4852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4852
  %_gep_lit4854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep_lit4854
  %_gep_lit4856 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit4856
  %_gep_lit4858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep_lit4858
  %_gep_lit4860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep_lit4860
  %_gep_lit4862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 5
  store i64 10, i64* %_gep_lit4862
  %_gep_lit4864 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep_lit4864
  %_gep_lit4866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep_lit4866
  %_gep_lit4868 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep_lit4868
  %_gep_lit4870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 9
  store i64 4, i64* %_gep_lit4870
  %_gep_lit4872 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4851, i32 0, i32 1, i32 10
  store i64 5, i64* %_gep_lit4872
  store { i64, [0 x i64] }* %_array4851, { i64, [0 x i64] }** %_array4874
  %_raw_array4876 = call i64* @oat_alloc_array(i64 11)
  %_array4877 = bitcast i64* %_raw_array4876 to { i64, [0 x i64] }*
  %_gep_lit4878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4878
  %_gep_lit4880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit4880
  %_gep_lit4882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep_lit4882
  %_gep_lit4884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep_lit4884
  %_gep_lit4886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 4
  store i64 8, i64* %_gep_lit4886
  %_gep_lit4888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 5
  store i64 5, i64* %_gep_lit4888
  %_gep_lit4890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 6
  store i64 7, i64* %_gep_lit4890
  %_gep_lit4892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 7
  store i64 3, i64* %_gep_lit4892
  %_gep_lit4894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 8
  store i64 6, i64* %_gep_lit4894
  %_gep_lit4896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 9
  store i64 9, i64* %_gep_lit4896
  %_gep_lit4898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4877, i32 0, i32 1, i32 10
  store i64 10, i64* %_gep_lit4898
  store { i64, [0 x i64] }* %_array4877, { i64, [0 x i64] }** %_end_result4900
  %_load4902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4874
  call void @make_min_heap({ i64, [0 x i64] }* %_load4902, i64 10)
  store i64 0, i64* %_same4904
  store i64 0, i64* %_i4906
  br label %_for_cond4908
_for_cond4908:
  %_load4911 = load i64, i64* %_i4906
  %_bop4912 = icmp slt i64 %_load4911, 11
  br i1 %_bop4912, label %_for_body4909, label %_for_exit4910
_for_body4909:
  %_load4916 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4874
  %_load4917 = load i64, i64* %_i4906
  %_gep4918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4916, i32 0, i32 1, i64 %_load4917
  %_load4919 = load i64, i64* %_gep4918
  %_load4920 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result4900
  %_load4921 = load i64, i64* %_i4906
  %_gep4922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4920, i32 0, i32 1, i64 %_load4921
  %_load4923 = load i64, i64* %_gep4922
  %_bop4924 = icmp ne i64 %_load4919, %_load4923
  br i1 %_bop4924, label %_then4913, label %_else4914
_then4913:
  store i64 1, i64* %_same4904
  br label %_join4915
_else4914:
  br label %_join4915
_join4915:
  %_load4926 = load i64, i64* %_i4906
  %_bop4927 = add i64 %_load4926, 1
  store i64 %_bop4927, i64* %_i4906
  br label %_for_cond4908
_for_exit4910:
  %_load4929 = load i64, i64* %_same4904
  ret i64 %_load4929
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
