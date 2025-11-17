; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [0 x i64] }* bitcast ({ i64, [1 x i64] }* @_global_arr5887 to { i64, [0 x i64] }*)
@_global_arr5887 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_str5804 = global [1 x i8] c"\00"
@_str5776 = global [7 x i8] c"TOMATO\00"
@_str5780 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %i, i64 %j, i8* %a, i8* %b) {
  %_i5788 = alloca i64
  %_j5789 = alloca i64
  %_a5790 = alloca i8*
  %_b5791 = alloca i8*
  %_a_chars5808 = alloca { i64, [0 x i64] }*
  %_b_chars5812 = alloca { i64, [0 x i64] }*
  %_last_char_a5818 = alloca i64
  %_last_char_b5824 = alloca i64
  %_prev_lcs5839 = alloca i8*
  %_next_char5850 = alloca i8*
  %_left_lcs5861 = alloca i8*
  %_right_lcs5869 = alloca i8*
  %_left_len5873 = alloca i64
  %_right_len5877 = alloca i64
  store i64 %i, i64* %_i5788
  store i64 %j, i64* %_j5789
  store i8* %a, i8** %_a5790
  store i8* %b, i8** %_b5791
  %_i5799 = load i64, i64* %_i5788
  %_bop5800 = icmp slt i64 %_i5799, 0
  %_j5801 = load i64, i64* %_j5789
  %_bop5802 = icmp slt i64 %_j5801, 0
  %_bop5803 = or i1 %_bop5800, %_bop5802
  br i1 %_bop5803, label %_then5796, label %_else5797
_then5796:
  %_str5805 = bitcast [1 x i8]* @_str5804 to i8*
  ret i8* %_str5805
_else5797:
  br label %_join5798
_join5798:
  %_a5806 = load i8*, i8** %_a5790
  %_funcall5807 = call { i64, [0 x i64] }* @array_of_string(i8* %_a5806)
  store { i64, [0 x i64] }* %_funcall5807, { i64, [0 x i64] }** %_a_chars5808
  %_b5810 = load i8*, i8** %_b5791
  %_funcall5811 = call { i64, [0 x i64] }* @array_of_string(i8* %_b5810)
  store { i64, [0 x i64] }* %_funcall5811, { i64, [0 x i64] }** %_b_chars5812
  %_a_chars5814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5808
  %_i5815 = load i64, i64* %_i5788
  %_elem_addr5816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5814, i32 0, i32 1, i64 %_i5815
  %_read_val5817 = load i64, i64* %_elem_addr5816
  store i64 %_read_val5817, i64* %_last_char_a5818
  %_b_chars5820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars5812
  %_j5821 = load i64, i64* %_j5789
  %_elem_addr5822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars5820, i32 0, i32 1, i64 %_j5821
  %_read_val5823 = load i64, i64* %_elem_addr5822
  store i64 %_read_val5823, i64* %_last_char_b5824
  %_last_char_a5829 = load i64, i64* %_last_char_a5818
  %_last_char_b5830 = load i64, i64* %_last_char_b5824
  %_bop5831 = icmp eq i64 %_last_char_a5829, %_last_char_b5830
  br i1 %_bop5831, label %_then5826, label %_else5827
_then5826:
  %_b5837 = load i8*, i8** %_b5791
  %_a5836 = load i8*, i8** %_a5790
  %_j5834 = load i64, i64* %_j5789
  %_bop5835 = sub i64 %_j5834, 1
  %_i5832 = load i64, i64* %_i5788
  %_bop5833 = sub i64 %_i5832, 1
  %_funcall5838 = call i8* @lcs(i64 %_bop5833, i64 %_bop5835, i8* %_a5836, i8* %_b5837)
  store i8* %_funcall5838, i8** %_prev_lcs5839
  %_a_chars5841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5808
  %_i5842 = load i64, i64* %_i5788
  %_elem_addr5843 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5841, i32 0, i32 1, i64 %_i5842
  %_read_val5844 = load i64, i64* %_elem_addr5843
  %_buf5845 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_gep5846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_buf5845, i32 0, i32 1, i32 0
  store i64 %_read_val5844, i64* %_gep5846
  %_buf5848 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @buf
  %_funcall5849 = call i8* @string_of_array({ i64, [0 x i64] }* %_buf5848)
  store i8* %_funcall5849, i8** %_next_char5850
  %_next_char5853 = load i8*, i8** %_next_char5850
  %_prev_lcs5852 = load i8*, i8** %_prev_lcs5839
  %_funcall5854 = call i8* @string_cat(i8* %_prev_lcs5852, i8* %_next_char5853)
  ret i8* %_funcall5854
_else5827:
  br label %_join5828
_join5828:
  %_b5859 = load i8*, i8** %_b5791
  %_a5858 = load i8*, i8** %_a5790
  %_j5856 = load i64, i64* %_j5789
  %_bop5857 = sub i64 %_j5856, 1
  %_i5855 = load i64, i64* %_i5788
  %_funcall5860 = call i8* @lcs(i64 %_i5855, i64 %_bop5857, i8* %_a5858, i8* %_b5859)
  store i8* %_funcall5860, i8** %_left_lcs5861
  %_b5867 = load i8*, i8** %_b5791
  %_a5866 = load i8*, i8** %_a5790
  %_j5865 = load i64, i64* %_j5789
  %_i5863 = load i64, i64* %_i5788
  %_bop5864 = sub i64 %_i5863, 1
  %_funcall5868 = call i8* @lcs(i64 %_bop5864, i64 %_j5865, i8* %_a5866, i8* %_b5867)
  store i8* %_funcall5868, i8** %_right_lcs5869
  %_left_lcs5871 = load i8*, i8** %_left_lcs5861
  %_funcall5872 = call i64 @length_of_string(i8* %_left_lcs5871)
  store i64 %_funcall5872, i64* %_left_len5873
  %_right_lcs5875 = load i8*, i8** %_right_lcs5869
  %_funcall5876 = call i64 @length_of_string(i8* %_right_lcs5875)
  store i64 %_funcall5876, i64* %_right_len5877
  %_left_len5882 = load i64, i64* %_left_len5873
  %_right_len5883 = load i64, i64* %_right_len5877
  %_bop5884 = icmp slt i64 %_left_len5882, %_right_len5883
  br i1 %_bop5884, label %_then5879, label %_else5880
_then5879:
  %_right_lcs5885 = load i8*, i8** %_right_lcs5869
  ret i8* %_right_lcs5885
_else5880:
  %_left_lcs5886 = load i8*, i8** %_left_lcs5861
  ret i8* %_left_lcs5886
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5772 = alloca i64
  %_argv5773 = alloca { i64, [0 x i8*] }*
  %_tomato5778 = alloca i8*
  %_orating5782 = alloca i8*
  store i64 %argc, i64* %_argc5772
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5773
  %_str5777 = bitcast [7 x i8]* @_str5776 to i8*
  store i8* %_str5777, i8** %_tomato5778
  %_str5781 = bitcast [8 x i8]* @_str5780 to i8*
  store i8* %_str5781, i8** %_orating5782
  %_orating5785 = load i8*, i8** %_orating5782
  %_tomato5784 = load i8*, i8** %_tomato5778
  %_funcall5786 = call i8* @lcs(i64 5, i64 6, i8* %_tomato5784, i8* %_orating5785)
  call void @print_string(i8* %_funcall5786)
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
