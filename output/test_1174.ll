; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %arr, i64 %size) {
  %_arr6079 = alloca { i64, [0 x i64] }*
  %_size6081 = alloca i64
  %_maxarr6086 = alloca { i64, [0 x i64] }*
  %_maxs6088 = alloca i64
  %_i6096 = alloca i64
  %_j6104 = alloca i64
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_arr6079
  store i64 %size, i64* %_size6081
  %_load6083 = load i64, i64* %_size6081
  %_raw_array6084 = call i64* @oat_alloc_array(i64 %_load6083)
  %_array6085 = bitcast i64* %_raw_array6084 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6085, { i64, [0 x i64] }** %_maxarr6086
  store i64 0, i64* %_maxs6088
  %_load6090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_gep6091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6090, i32 0, i32 1, i32 0
  %_load6092 = load i64, i64* %_gep6091
  %_load6093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_gep6094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6093, i32 0, i32 1, i32 0
  store i64 %_load6092, i64* %_gep6094
  store i64 0, i64* %_i6096
  br label %_for_cond6098
_for_cond6098:
  %_load6101 = load i64, i64* %_i6096
  %_load6102 = load i64, i64* %_size6081
  %_bop6103 = icmp slt i64 %_load6101, %_load6102
  br i1 %_bop6103, label %_for_body6099, label %_for_exit6100
_for_body6099:
  store i64 0, i64* %_j6104
  br label %_for_cond6106
_for_cond6106:
  %_load6109 = load i64, i64* %_j6104
  %_load6110 = load i64, i64* %_i6096
  %_bop6111 = icmp slt i64 %_load6109, %_load6110
  br i1 %_bop6111, label %_for_body6107, label %_for_exit6108
_for_body6107:
  %_load6115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_load6116 = load i64, i64* %_i6096
  %_gep6117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6115, i32 0, i32 1, i64 %_load6116
  %_load6118 = load i64, i64* %_gep6117
  %_load6119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_load6120 = load i64, i64* %_j6104
  %_gep6121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6119, i32 0, i32 1, i64 %_load6120
  %_load6122 = load i64, i64* %_gep6121
  %_bop6123 = icmp sgt i64 %_load6118, %_load6122
  %_load6124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_load6125 = load i64, i64* %_i6096
  %_gep6126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6124, i32 0, i32 1, i64 %_load6125
  %_load6127 = load i64, i64* %_gep6126
  %_load6128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_load6129 = load i64, i64* %_j6104
  %_gep6130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6128, i32 0, i32 1, i64 %_load6129
  %_load6131 = load i64, i64* %_gep6130
  %_load6132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_load6133 = load i64, i64* %_i6096
  %_gep6134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6132, i32 0, i32 1, i64 %_load6133
  %_load6135 = load i64, i64* %_gep6134
  %_bop6136 = add i64 %_load6131, %_load6135
  %_bop6137 = icmp slt i64 %_load6127, %_bop6136
  %_bop6138 = and i1 %_bop6123, %_bop6137
  br i1 %_bop6138, label %_then6112, label %_else6113
_then6112:
  %_load6139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_load6140 = load i64, i64* %_j6104
  %_gep6141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6139, i32 0, i32 1, i64 %_load6140
  %_load6142 = load i64, i64* %_gep6141
  %_load6143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr6079
  %_load6144 = load i64, i64* %_i6096
  %_gep6145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6143, i32 0, i32 1, i64 %_load6144
  %_load6146 = load i64, i64* %_gep6145
  %_bop6147 = add i64 %_load6142, %_load6146
  %_load6148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_load6149 = load i64, i64* %_i6096
  %_gep6150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6148, i32 0, i32 1, i64 %_load6149
  store i64 %_bop6147, i64* %_gep6150
  br label %_join6114
_else6113:
  br label %_join6114
_join6114:
  %_load6152 = load i64, i64* %_j6104
  %_bop6153 = add i64 %_load6152, 1
  store i64 %_bop6153, i64* %_j6104
  br label %_for_cond6106
_for_exit6108:
  %_load6158 = load i64, i64* %_maxs6088
  %_load6159 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_load6160 = load i64, i64* %_i6096
  %_gep6161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6159, i32 0, i32 1, i64 %_load6160
  %_load6162 = load i64, i64* %_gep6161
  %_bop6163 = icmp slt i64 %_load6158, %_load6162
  br i1 %_bop6163, label %_then6155, label %_else6156
_then6155:
  %_load6164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr6086
  %_load6165 = load i64, i64* %_i6096
  %_gep6166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6164, i32 0, i32 1, i64 %_load6165
  %_load6167 = load i64, i64* %_gep6166
  store i64 %_load6167, i64* %_maxs6088
  br label %_join6157
_else6156:
  br label %_join6157
_join6157:
  %_load6169 = load i64, i64* %_i6096
  %_bop6170 = add i64 %_load6169, 1
  store i64 %_bop6170, i64* %_i6096
  br label %_for_cond6098
_for_exit6100:
  %_load6172 = load i64, i64* %_maxs6088
  ret i64 %_load6172
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6052 = alloca i64
  %_argv6054 = alloca { i64, [0 x i8*] }*
  %_array6072 = alloca { i64, [0 x i64] }*
  %_max_ans6076 = alloca i64
  store i64 %argc, i64* %_argc6052
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6054
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
  %_load6074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array6072
  %_call6075 = call i64 @maxsum({ i64, [0 x i64] }* %_load6074, i64 7)
  store i64 %_call6075, i64* %_max_ans6076
  %_load6078 = load i64, i64* %_max_ans6076
  ret i64 %_load6078
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
