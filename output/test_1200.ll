; generated from: ./sharedtests/dbernhard/mat_mult2.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_global_arr7281 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_global_arr7281 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7278 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7279 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7280 to { i64, [0 x i64] }*) ] }
@_global_arr7278 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_global_arr7279 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_global_arr7280 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_str7028 = global [3 x i8] c"| \00"
@_str7046 = global [2 x i8] c" \00"
@_str7056 = global [4 x i8] c" |
\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7144 = alloca i64
  %_argv7146 = alloca { i64, [0 x i8*] }*
  %_eye7180 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_one7182 = alloca i64
  %_mat_17218 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_27261 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc7144
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7146
  %_raw_array7148 = call i64* @oat_alloc_array(i64 3)
  %_array7149 = bitcast i64* %_raw_array7148 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7150 = call i64* @oat_alloc_array(i64 3)
  %_array7151 = bitcast i64* %_raw_array7150 to { i64, [0 x i64] }*
  %_gep_lit7152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7151, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit7152
  %_gep_lit7154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7151, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit7154
  %_gep_lit7156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7151, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit7156
  %_gep_lit7158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7149, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7151, { i64, [0 x i64] }** %_gep_lit7158
  %_raw_array7160 = call i64* @oat_alloc_array(i64 3)
  %_array7161 = bitcast i64* %_raw_array7160 to { i64, [0 x i64] }*
  %_gep_lit7162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7161, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit7162
  %_gep_lit7164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7161, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit7164
  %_gep_lit7166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7161, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit7166
  %_gep_lit7168 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7149, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7161, { i64, [0 x i64] }** %_gep_lit7168
  %_raw_array7170 = call i64* @oat_alloc_array(i64 3)
  %_array7171 = bitcast i64* %_raw_array7170 to { i64, [0 x i64] }*
  %_gep_lit7172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7171, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit7172
  %_gep_lit7174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7171, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit7174
  %_gep_lit7176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7171, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit7176
  %_gep_lit7178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7149, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7171, { i64, [0 x i64] }** %_gep_lit7178
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7149, { i64, [0 x { i64, [0 x i64] }*] }** %_eye7180
  store i64 1, i64* %_one7182
  %_raw_array7184 = call i64* @oat_alloc_array(i64 3)
  %_array7185 = bitcast i64* %_raw_array7184 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7186 = call i64* @oat_alloc_array(i64 3)
  %_array7187 = bitcast i64* %_raw_array7186 to { i64, [0 x i64] }*
  %_load7188 = load i64, i64* %_one7182
  %_gep_lit7189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7187, i32 0, i32 1, i32 0
  store i64 %_load7188, i64* %_gep_lit7189
  %_gep_lit7191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7187, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit7191
  %_gep_lit7193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7187, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit7193
  %_gep_lit7195 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7185, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7187, { i64, [0 x i64] }** %_gep_lit7195
  %_raw_array7197 = call i64* @oat_alloc_array(i64 3)
  %_array7198 = bitcast i64* %_raw_array7197 to { i64, [0 x i64] }*
  %_gep_lit7199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7198, i32 0, i32 1, i32 0
  store i64 9, i64* %_gep_lit7199
  %_load7201 = load i64, i64* %_one7182
  %_gep_lit7202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7198, i32 0, i32 1, i32 1
  store i64 %_load7201, i64* %_gep_lit7202
  %_gep_lit7204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7198, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit7204
  %_gep_lit7206 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7185, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7198, { i64, [0 x i64] }** %_gep_lit7206
  %_raw_array7208 = call i64* @oat_alloc_array(i64 3)
  %_array7209 = bitcast i64* %_raw_array7208 to { i64, [0 x i64] }*
  %_gep_lit7210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7209, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit7210
  %_gep_lit7212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7209, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit7212
  %_gep_lit7214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7209, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit7214
  %_gep_lit7216 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7185, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7209, { i64, [0 x i64] }** %_gep_lit7216
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7185, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_17218
  %_raw_array7220 = call i64* @oat_alloc_array(i64 3)
  %_array7221 = bitcast i64* %_raw_array7220 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7222 = call i64* @oat_alloc_array(i64 3)
  %_array7223 = bitcast i64* %_raw_array7222 to { i64, [0 x i64] }*
  %_load7224 = load i64, i64* %_one7182
  %_gep_lit7225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7223, i32 0, i32 1, i32 0
  store i64 %_load7224, i64* %_gep_lit7225
  %_load7227 = load i64, i64* %_one7182
  %_load7228 = load i64, i64* %_one7182
  %_bop7229 = sub i64 %_load7227, %_load7228
  %_gep_lit7230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7223, i32 0, i32 1, i32 1
  store i64 %_bop7229, i64* %_gep_lit7230
  %_gep_lit7232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7223, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit7232
  %_gep_lit7234 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7221, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7223, { i64, [0 x i64] }** %_gep_lit7234
  %_raw_array7236 = call i64* @oat_alloc_array(i64 3)
  %_array7237 = bitcast i64* %_raw_array7236 to { i64, [0 x i64] }*
  %_gep_lit7238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7237, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit7238
  %_load7240 = load i64, i64* %_one7182
  %_gep_lit7241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7237, i32 0, i32 1, i32 1
  store i64 %_load7240, i64* %_gep_lit7241
  %_load7243 = load i64, i64* %_one7182
  %_load7244 = load i64, i64* %_one7182
  %_bop7245 = add i64 %_load7243, %_load7244
  %_gep_lit7246 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7237, i32 0, i32 1, i32 2
  store i64 %_bop7245, i64* %_gep_lit7246
  %_gep_lit7248 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7221, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7237, { i64, [0 x i64] }** %_gep_lit7248
  %_raw_array7250 = call i64* @oat_alloc_array(i64 3)
  %_array7251 = bitcast i64* %_raw_array7250 to { i64, [0 x i64] }*
  %_gep_lit7252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7251, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit7252
  %_load7254 = load i64, i64* %_one7182
  %_gep_lit7255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7251, i32 0, i32 1, i32 1
  store i64 %_load7254, i64* %_gep_lit7255
  %_gep_lit7257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7251, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit7257
  %_gep_lit7259 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7221, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7251, { i64, [0 x i64] }** %_gep_lit7259
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7221, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_27261
  %_load7266 = load i64, i64* %_one7182
  %_load7267 = load i64, i64* %_one7182
  %_uop7268 = xor i64 %_load7267, -1
  %_bop7269 = icmp eq i64 %_load7266, %_uop7268
  %_load7264 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_27261
  %_load7263 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_17218
  %_call7265 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_load7263, { i64, [0 x { i64, [0 x i64] }*] }* %_load7264)
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_call7265, i1 %_bop7269)
  %_load7274 = load i64, i64* %_one7182
  %_load7275 = load i64, i64* %_one7182
  %_bop7276 = icmp eq i64 %_load7274, %_load7275
  br i1 %_bop7276, label %_then7271, label %_else7272
_then7271:
  ret i64 0
_else7272:
  br label %_join7273
_join7273:
  %_uop7277 = sub i64 0, 1
  ret i64 %_uop7277
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array7130 = call i64* @oat_alloc_array(i64 3)
  %_array7131 = bitcast i64* %_raw_array7130 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7132 = call i64* @oat_alloc_array(i64 3)
  %_array7133 = bitcast i64* %_raw_array7132 to { i64, [0 x i64] }*
  %_gep_lit7134 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7131, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7133, { i64, [0 x i64] }** %_gep_lit7134
  %_raw_array7136 = call i64* @oat_alloc_array(i64 3)
  %_array7137 = bitcast i64* %_raw_array7136 to { i64, [0 x i64] }*
  %_gep_lit7138 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7131, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7137, { i64, [0 x i64] }** %_gep_lit7138
  %_raw_array7140 = call i64* @oat_alloc_array(i64 3)
  %_array7141 = bitcast i64* %_raw_array7140 to { i64, [0 x i64] }*
  %_gep_lit7142 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7131, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7141, { i64, [0 x i64] }** %_gep_lit7142
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array7131
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_mata7062 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_matb7064 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_res7067 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i7069 = alloca i64
  %_j7076 = alloca i64
  %_k7083 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_mata7062
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_matb7064
  %_call7066 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_call7066, { i64, [0 x { i64, [0 x i64] }*] }** %_res7067
  store i64 0, i64* %_i7069
  br label %_for_cond7071
_for_cond7071:
  %_load7074 = load i64, i64* %_i7069
  %_bop7075 = icmp slt i64 %_load7074, 3
  br i1 %_bop7075, label %_for_body7072, label %_for_exit7073
_for_body7072:
  store i64 0, i64* %_j7076
  br label %_for_cond7078
_for_cond7078:
  %_load7081 = load i64, i64* %_j7076
  %_bop7082 = icmp slt i64 %_load7081, 3
  br i1 %_bop7082, label %_for_body7079, label %_for_exit7080
_for_body7079:
  store i64 0, i64* %_k7083
  br label %_for_cond7085
_for_cond7085:
  %_load7088 = load i64, i64* %_k7083
  %_bop7089 = icmp slt i64 %_load7088, 3
  br i1 %_bop7089, label %_for_body7086, label %_for_exit7087
_for_body7086:
  %_load7090 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res7067
  %_load7091 = load i64, i64* %_i7069
  %_gep7092 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load7090, i32 0, i32 1, i64 %_load7091
  %_load7093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep7092
  %_load7094 = load i64, i64* %_j7076
  %_gep7095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7093, i32 0, i32 1, i64 %_load7094
  %_load7096 = load i64, i64* %_gep7095
  %_load7097 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mata7062
  %_load7098 = load i64, i64* %_i7069
  %_gep7099 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load7097, i32 0, i32 1, i64 %_load7098
  %_load7100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep7099
  %_load7101 = load i64, i64* %_k7083
  %_gep7102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7100, i32 0, i32 1, i64 %_load7101
  %_load7103 = load i64, i64* %_gep7102
  %_load7104 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matb7064
  %_load7105 = load i64, i64* %_k7083
  %_gep7106 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load7104, i32 0, i32 1, i64 %_load7105
  %_load7107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep7106
  %_load7108 = load i64, i64* %_j7076
  %_gep7109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7107, i32 0, i32 1, i64 %_load7108
  %_load7110 = load i64, i64* %_gep7109
  %_bop7111 = mul i64 %_load7103, %_load7110
  %_bop7112 = add i64 %_load7096, %_bop7111
  %_load7113 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res7067
  %_load7114 = load i64, i64* %_i7069
  %_gep7115 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load7113, i32 0, i32 1, i64 %_load7114
  %_load7116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep7115
  %_load7117 = load i64, i64* %_j7076
  %_gep7118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7116, i32 0, i32 1, i64 %_load7117
  store i64 %_bop7112, i64* %_gep7118
  %_load7120 = load i64, i64* %_k7083
  %_bop7121 = add i64 %_load7120, 1
  store i64 %_bop7121, i64* %_k7083
  br label %_for_cond7085
_for_exit7087:
  %_load7123 = load i64, i64* %_j7076
  %_bop7124 = add i64 %_load7123, 1
  store i64 %_bop7124, i64* %_j7076
  br label %_for_cond7078
_for_exit7080:
  %_load7126 = load i64, i64* %_i7069
  %_bop7127 = add i64 %_load7126, 1
  store i64 %_bop7127, i64* %_i7069
  br label %_for_cond7071
_for_exit7073:
  %_load7129 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res7067
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_load7129
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_mat7013 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_pretty7015 = alloca i1
  %_i7017 = alloca i64
  %_j7031 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_mat7013
  store i1 %pretty, i1* %_pretty7015
  store i64 0, i64* %_i7017
  br label %_for_cond7019
_for_cond7019:
  %_load7022 = load i64, i64* %_i7017
  %_bop7023 = icmp slt i64 %_load7022, 3
  br i1 %_bop7023, label %_for_body7020, label %_for_exit7021
_for_body7020:
  %_load7027 = load i1, i1* %_pretty7015
  br i1 %_load7027, label %_then7024, label %_else7025
_then7024:
  %_strptr7029 = bitcast [3 x i8]* @_str7028 to i8*
  call void @print_string(i8* %_strptr7029)
  br label %_join7026
_else7025:
  br label %_join7026
_join7026:
  store i64 0, i64* %_j7031
  br label %_for_cond7033
_for_cond7033:
  %_load7036 = load i64, i64* %_j7031
  %_bop7037 = icmp slt i64 %_load7036, 3
  br i1 %_bop7037, label %_for_body7034, label %_for_exit7035
_for_body7034:
  %_load7038 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat7013
  %_load7039 = load i64, i64* %_i7017
  %_gep7040 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load7038, i32 0, i32 1, i64 %_load7039
  %_load7041 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep7040
  %_load7042 = load i64, i64* %_j7031
  %_gep7043 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7041, i32 0, i32 1, i64 %_load7042
  %_load7044 = load i64, i64* %_gep7043
  call void @print_int(i64 %_load7044)
  %_strptr7047 = bitcast [2 x i8]* @_str7046 to i8*
  call void @print_string(i8* %_strptr7047)
  %_load7049 = load i64, i64* %_j7031
  %_bop7050 = add i64 %_load7049, 1
  store i64 %_bop7050, i64* %_j7031
  br label %_for_cond7033
_for_exit7035:
  %_load7055 = load i1, i1* %_pretty7015
  br i1 %_load7055, label %_then7052, label %_else7053
_then7052:
  %_strptr7057 = bitcast [4 x i8]* @_str7056 to i8*
  call void @print_string(i8* %_strptr7057)
  br label %_join7054
_else7053:
  br label %_join7054
_join7054:
  %_load7059 = load i64, i64* %_i7017
  %_bop7060 = add i64 %_load7059, 1
  store i64 %_bop7060, i64* %_i7017
  br label %_for_cond7019
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
