; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr6079 = alloca { i64, [0 x i64] }*
  %_size6080 = alloca i64
  %_maxarr6086 = alloca { i64, [0 x i64] }*
  %_maxs6088 = alloca i64
  %_i6096 = alloca i64
  %_j6104 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr6079
  store i64 %size, i64* %_size6080
  %_size6083 = load i64, i64* %_size6080
  %_raw_array6084 = call i64* @oat_alloc_array(i64 %_size6083)
  %_array6085 = bitcast i64* %_raw_array6084 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6085, { i64, [0 x i64] }** %_maxarr6086
  store i64 0, i64* %_maxs6088
  %_arr6090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_6091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6090, i32 0, i32 1, i32 0
  %_6092 = load i64, i64* %_6091
  %_maxarr6093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_gep6094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6093, i32 0, i32 1, i32 0
  store i64 %_6092, i64* %_gep6094
  store i64 0, i64* %_i6096
  br label %_for_cond6098
_for_cond6098:
  %_i6101 = load i64, i64* %_i6096
  %_size6102 = load i64, i64* %_size6080
  %_bop6103 = icmp slt i64 %_i6101, %_size6102
  br i1 %_bop6103, label %_for_body6099, label %_for_exit6100
_for_body6099:
  store i64 0, i64* %_j6104
  br label %_for_cond6106
_for_cond6106:
  %_j6109 = load i64, i64* %_j6104
  %_i6110 = load i64, i64* %_i6096
  %_bop6111 = icmp slt i64 %_j6109, %_i6110
  br i1 %_bop6111, label %_for_body6107, label %_for_exit6108
_for_body6107:
  %_arr6115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_i6116 = load i64, i64* %_i6096
  %_6117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6115, i32 0, i32 1, i64 %_i6116
  %_6118 = load i64, i64* %_6117
  %_arr6119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_j6120 = load i64, i64* %_j6104
  %_6121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6119, i32 0, i32 1, i64 %_j6120
  %_6122 = load i64, i64* %_6121
  %_bop6123 = icmp sgt i64 %_6118, %_6122
  %_maxarr6124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_i6125 = load i64, i64* %_i6096
  %_6126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6124, i32 0, i32 1, i64 %_i6125
  %_6127 = load i64, i64* %_6126
  %_maxarr6128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_j6129 = load i64, i64* %_j6104
  %_6130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6128, i32 0, i32 1, i64 %_j6129
  %_6131 = load i64, i64* %_6130
  %_arr6132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_i6133 = load i64, i64* %_i6096
  %_6134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6132, i32 0, i32 1, i64 %_i6133
  %_6135 = load i64, i64* %_6134
  %_bop6136 = add i64 %_6131, %_6135
  %_bop6137 = icmp slt i64 %_6127, %_bop6136
  %_bop6138 = and i1 %_bop6123, %_bop6137
  br i1 %_bop6138, label %_then6112, label %_else6113
_then6112:
  %_maxarr6139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_j6140 = load i64, i64* %_j6104
  %_6141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6139, i32 0, i32 1, i64 %_j6140
  %_6142 = load i64, i64* %_6141
  %_arr6143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_i6144 = load i64, i64* %_i6096
  %_6145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6143, i32 0, i32 1, i64 %_i6144
  %_6146 = load i64, i64* %_6145
  %_bop6147 = add i64 %_6142, %_6146
  %_maxarr6148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_i6149 = load i64, i64* %_i6096
  %_gep6150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6148, i32 0, i32 1, i64 %_i6149
  store i64 %_bop6147, i64* %_gep6150
  br label %_join6114
_else6113:
  br label %_join6114
_join6114:
  %_j6152 = load i64, i64* %_j6104
  %_bop6153 = add i64 %_j6152, 1
  store i64 %_bop6153, i64* %_j6104
  br label %_for_cond6106
_for_exit6108:
  %_maxs6158 = load i64, i64* %_maxs6088
  %_maxarr6159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_i6160 = load i64, i64* %_i6096
  %_6161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6159, i32 0, i32 1, i64 %_i6160
  %_6162 = load i64, i64* %_6161
  %_bop6163 = icmp slt i64 %_maxs6158, %_6162
  br i1 %_bop6163, label %_then6155, label %_else6156
_then6155:
  %_maxarr6164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_i6165 = load i64, i64* %_i6096
  %_6166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr6164, i32 0, i32 1, i64 %_i6165
  %_6167 = load i64, i64* %_6166
  store i64 %_6167, i64* %_maxs6088
  br label %_join6157
_else6156:
  br label %_join6157
_join6157:
  %_i6169 = load i64, i64* %_i6096
  %_bop6170 = add i64 %_i6169, 1
  store i64 %_bop6170, i64* %_i6096
  br label %_for_cond6098
_for_exit6100:
  %_maxs6172 = load i64, i64* %_maxs6088
  ret i64 %_maxs6172
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6052 = alloca i64
  %_argv6053 = alloca { i64, [0 x i8*] }*
  %_array6072 = alloca { i64, [0 x i64] }*
  %_max_ans6076 = alloca i64
  store i64 %argc, i64* %_argc6052
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6053
  %_raw_array6056 = call i64* @oat_alloc_array(i64 7)
  %_array6057 = bitcast i64* %_raw_array6056 to { i64, [0 x i64] }*
  %_gep_lit6058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6057, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit6058
  %_gep_lit6060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6057, i32 0, i32 1, i32 1
  store i64 101, i64* %_gep_lit6060
  %_gep_lit6062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6057, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit6062
  %_gep_lit6064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6057, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep_lit6064
  %_gep_lit6066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6057, i32 0, i32 1, i32 4
  store i64 101, i64* %_gep_lit6066
  %_gep_lit6068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6057, i32 0, i32 1, i32 5
  store i64 4, i64* %_gep_lit6068
  %_gep_lit6070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6057, i32 0, i32 1, i32 6
  store i64 5, i64* %_gep_lit6070
  store { i64, [0 x i64] }* %_array6057, { i64, [0 x i64] }** %_array6072
  %_array6074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6072
  %_funcall6075 = call i64 @maxsum({ i64, [0 x i64] }* %_array6074, i64 7)
  store i64 %_funcall6075, i64* %_max_ans6076
  %_max_ans6078 = load i64, i64* %_max_ans6076
  ret i64 %_max_ans6078
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
