; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial5951 = alloca { i64, [0 x i64] }*
  %_len5952 = alloca i64
  %_insertee5953 = alloca i64
  %_inserted5961 = alloca { i64, [0 x i64] }*
  %_i5963 = alloca i64
  %_not_yet_inserted5980 = alloca i1
  %_i5995 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial5951
  store i64 %len, i64* %_len5952
  store i64 %insertee, i64* %_insertee5953
  %_len5957 = load i64, i64* %_len5952
  %_bop5958 = add i64 %_len5957, 1
  %_raw_array5959 = call i64* @oat_alloc_array(i64 %_bop5958)
  %_array5960 = bitcast i64* %_raw_array5959 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5960, { i64, [0 x i64] }** %_inserted5961
  store i64 0, i64* %_i5963
  br label %_for_cond5965
_for_cond5965:
  %_i5968 = load i64, i64* %_i5963
  %_len5969 = load i64, i64* %_len5952
  %_bop5970 = add i64 %_len5969, 1
  %_bop5971 = icmp slt i64 %_i5968, %_bop5970
  br i1 %_bop5971, label %_for_body5966, label %_for_exit5967
_for_body5966:
  %_uop5972 = sub i64 0, 1
  %_inserted5973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5961
  %_i5974 = load i64, i64* %_i5963
  %_gep5975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5973, i32 0, i32 1, i64 %_i5974
  store i64 %_uop5972, i64* %_gep5975
  %_i5977 = load i64, i64* %_i5963
  %_bop5978 = add i64 %_i5977, 1
  store i64 %_bop5978, i64* %_i5963
  br label %_for_cond5965
_for_exit5967:
  store i1 1, i1* %_not_yet_inserted5980
  %_insertee5985 = load i64, i64* %_insertee5953
  %_partial5986 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5951
  %_5987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5986, i32 0, i32 1, i32 0
  %_5988 = load i64, i64* %_5987
  %_bop5989 = icmp slt i64 %_insertee5985, %_5988
  br i1 %_bop5989, label %_then5982, label %_else5983
_then5982:
  store i1 0, i1* %_not_yet_inserted5980
  %_insertee5991 = load i64, i64* %_insertee5953
  %_inserted5992 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5961
  %_gep5993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5992, i32 0, i32 1, i32 0
  store i64 %_insertee5991, i64* %_gep5993
  br label %_join5984
_else5983:
  br label %_join5984
_join5984:
  store i64 0, i64* %_i5995
  br label %_for_cond5997
_for_cond5997:
  %_i6000 = load i64, i64* %_i5995
  %_len6001 = load i64, i64* %_len5952
  %_bop6002 = icmp slt i64 %_i6000, %_len6001
  br i1 %_bop6002, label %_for_body5998, label %_for_exit5999
_for_body5998:
  %_not_yet_inserted6006 = load i1, i1* %_not_yet_inserted5980
  br i1 %_not_yet_inserted6006, label %_then6003, label %_else6004
_then6003:
  %_insertee6010 = load i64, i64* %_insertee5953
  %_partial6011 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5951
  %_i6012 = load i64, i64* %_i5995
  %_6013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6011, i32 0, i32 1, i64 %_i6012
  %_6014 = load i64, i64* %_6013
  %_bop6015 = icmp sgt i64 %_insertee6010, %_6014
  br i1 %_bop6015, label %_then6007, label %_else6008
_then6007:
  store i1 0, i1* %_not_yet_inserted5980
  %_insertee6017 = load i64, i64* %_insertee5953
  %_inserted6018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5961
  %_i6019 = load i64, i64* %_i5995
  %_bop6020 = add i64 %_i6019, 1
  %_gep6021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6018, i32 0, i32 1, i64 %_bop6020
  store i64 %_insertee6017, i64* %_gep6021
  %_partial6023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5951
  %_i6024 = load i64, i64* %_i5995
  %_6025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6023, i32 0, i32 1, i64 %_i6024
  %_6026 = load i64, i64* %_6025
  %_inserted6027 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5961
  %_i6028 = load i64, i64* %_i5995
  %_gep6029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6027, i32 0, i32 1, i64 %_i6028
  store i64 %_6026, i64* %_gep6029
  br label %_join6009
_else6008:
  %_partial6031 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5951
  %_i6032 = load i64, i64* %_i5995
  %_6033 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6031, i32 0, i32 1, i64 %_i6032
  %_6034 = load i64, i64* %_6033
  %_inserted6035 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5961
  %_i6036 = load i64, i64* %_i5995
  %_gep6037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6035, i32 0, i32 1, i64 %_i6036
  store i64 %_6034, i64* %_gep6037
  br label %_join6009
_join6009:
  br label %_join6005
_else6004:
  %_partial6039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5951
  %_i6040 = load i64, i64* %_i5995
  %_6041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial6039, i32 0, i32 1, i64 %_i6040
  %_6042 = load i64, i64* %_6041
  %_inserted6043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5961
  %_i6044 = load i64, i64* %_i5995
  %_bop6045 = add i64 %_i6044, 1
  %_gep6046 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted6043, i32 0, i32 1, i64 %_bop6045
  store i64 %_6042, i64* %_gep6046
  br label %_join6005
_join6005:
  %_i6048 = load i64, i64* %_i5995
  %_bop6049 = add i64 %_i6048, 1
  store i64 %_bop6049, i64* %_i5995
  br label %_for_cond5997
_for_exit5999:
  %_inserted6051 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5961
  ret { i64, [0 x i64] }* %_inserted6051
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted5915 = alloca { i64, [0 x i64] }*
  %_len5916 = alloca i64
  %_out5923 = alloca { i64, [0 x i64] }*
  %_i5931 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted5915
  store i64 %len, i64* %_len5916
  %_raw_array5919 = call i64* @oat_alloc_array(i64 1)
  %_array5920 = bitcast i64* %_raw_array5919 to { i64, [0 x i64] }*
  %_gep_lit5921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5920, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5921
  store { i64, [0 x i64] }* %_array5920, { i64, [0 x i64] }** %_out5923
  %_unsorted5925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5915
  %_5926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5925, i32 0, i32 1, i32 0
  %_5927 = load i64, i64* %_5926
  %_out5928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5923
  %_gep5929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out5928, i32 0, i32 1, i32 0
  store i64 %_5927, i64* %_gep5929
  store i64 1, i64* %_i5931
  br label %_for_cond5933
_for_cond5933:
  %_i5936 = load i64, i64* %_i5931
  %_len5937 = load i64, i64* %_len5916
  %_bop5938 = icmp slt i64 %_i5936, %_len5937
  br i1 %_bop5938, label %_for_body5934, label %_for_exit5935
_for_body5934:
  %_unsorted5941 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5915
  %_i5942 = load i64, i64* %_i5931
  %_5943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5941, i32 0, i32 1, i64 %_i5942
  %_5944 = load i64, i64* %_5943
  %_i5940 = load i64, i64* %_i5931
  %_out5939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5923
  %_funcall5945 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out5939, i64 %_i5940, i64 %_5944)
  store { i64, [0 x i64] }* %_funcall5945, { i64, [0 x i64] }** %_out5923
  %_i5947 = load i64, i64* %_i5931
  %_bop5948 = add i64 %_i5947, 1
  store i64 %_bop5948, i64* %_i5931
  br label %_for_cond5933
_for_exit5935:
  %_out5950 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5923
  ret { i64, [0 x i64] }* %_out5950
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5888 = alloca i64
  %_argv5889 = alloca { i64, [0 x i8*] }*
  %_array5906 = alloca { i64, [0 x i64] }*
  %_result5910 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5888
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5889
  %_raw_array5892 = call i64* @oat_alloc_array(i64 6)
  %_array5893 = bitcast i64* %_raw_array5892 to { i64, [0 x i64] }*
  %_gep_lit5894 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5893, i32 0, i32 1, i32 0
  store i64 13, i64* %_gep_lit5894
  %_gep_lit5896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5893, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep_lit5896
  %_gep_lit5898 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5893, i32 0, i32 1, i32 2
  store i64 32, i64* %_gep_lit5898
  %_gep_lit5900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5893, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep_lit5900
  %_gep_lit5902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5893, i32 0, i32 1, i32 4
  store i64 2, i64* %_gep_lit5902
  %_gep_lit5904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5893, i32 0, i32 1, i32 5
  store i64 6, i64* %_gep_lit5904
  store { i64, [0 x i64] }* %_array5893, { i64, [0 x i64] }** %_array5906
  %_array5908 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5906
  %_funcall5909 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array5908, i64 6)
  store { i64, [0 x i64] }* %_funcall5909, { i64, [0 x i64] }** %_result5910
  %_result5912 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result5910
  %_5913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result5912, i32 0, i32 1, i32 5
  %_5914 = load i64, i64* %_5913
  ret i64 %_5914
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
