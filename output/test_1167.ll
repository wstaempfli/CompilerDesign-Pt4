; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@lfsr_length = global i64 4
@lfsr_init_values = global { i64, [0 x i1] }* bitcast ({ i64, [4 x i1] }* @_global_arr5253 to { i64, [0 x i1] }*)
@_global_arr5253 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_str5236 = global [2 x i8] c"T\00"
@_str5238 = global [2 x i8] c"F\00"
@_str5203 = global [2 x i8] c" \00"

define i1 @xor(i1 %x, i1 %y) {
  %_x5240 = alloca i1
  %_y5242 = alloca i1
  store i1 %x, i1* %_x5240
  store i1 %y, i1* %_y5242
  %_load5244 = load i1, i1* %_x5240
  %_load5245 = load i1, i1* %_y5242
  %_uop5246 = xor i1 %_load5245, 1
  %_bop5247 = and i1 %_load5244, %_uop5246
  %_load5248 = load i1, i1* %_x5240
  %_uop5249 = xor i1 %_load5248, 1
  %_load5250 = load i1, i1* %_y5242
  %_bop5251 = and i1 %_uop5249, %_load5250
  %_bop5252 = or i1 %_bop5247, %_bop5251
  ret i1 %_bop5252
}

define i8* @string_of_bool(i1 %b) {
  %_b5230 = alloca i1
  store i1 %b, i1* %_b5230
  %_load5235 = load i1, i1* %_b5230
  br i1 %_load5235, label %_then5232, label %_else5233
_then5232:
  %_strptr5237 = bitcast [2 x i8]* @_str5236 to i8*
  ret i8* %_strptr5237
_else5233:
  %_strptr5239 = bitcast [2 x i8]* @_str5238 to i8*
  ret i8* %_strptr5239
}

define void @print_lfsr({ i64, [0 x i1] }* %lfsr_register, i64 %len) {
  %_lfsr_register5209 = alloca { i64, [0 x i1] }*
  %_len5211 = alloca i64
  %_i5213 = alloca i64
  store { i64, [0 x i1] }* %lfsr_register, { i64, [0 x i1] }** %_lfsr_register5209
  store i64 %len, i64* %_len5211
  store i64 0, i64* %_i5213
  br label %_for_cond5215
_for_cond5215:
  %_load5218 = load i64, i64* %_i5213
  %_load5219 = load i64, i64* %_len5211
  %_bop5220 = icmp slt i64 %_load5218, %_load5219
  br i1 %_bop5220, label %_for_body5216, label %_for_exit5217
_for_body5216:
  %_load5221 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5209
  %_load5222 = load i64, i64* %_i5213
  %_gep5223 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5221, i32 0, i32 1, i64 %_load5222
  %_load5224 = load i1, i1* %_gep5223
  %_call5225 = call i8* @string_of_bool(i1 %_load5224)
  call void @print_string(i8* %_call5225)
  %_load5227 = load i64, i64* %_i5213
  %_bop5228 = add i64 %_load5227, 1
  store i64 %_bop5228, i64* %_i5213
  br label %_for_cond5215
_for_exit5217:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5123 = alloca i64
  %_argv5125 = alloca { i64, [0 x i8*] }*
  %_lfsr_register5130 = alloca { i64, [0 x i1] }*
  %_i5132 = alloca i64
  %_i5151 = alloca i64
  %_new_first5170 = alloca i1
  %_j5174 = alloca i64
  store i64 %argc, i64* %_argc5123
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5125
  %_load5127 = load i64, i64* @lfsr_length
  %_raw_array5128 = call i64* @oat_alloc_array(i64 %_load5127)
  %_array5129 = bitcast i64* %_raw_array5128 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array5129, { i64, [0 x i1] }** %_lfsr_register5130
  store i64 0, i64* %_i5132
  br label %_for_cond5134
_for_cond5134:
  %_load5137 = load i64, i64* %_i5132
  %_load5138 = load i64, i64* @lfsr_length
  %_bop5139 = icmp slt i64 %_load5137, %_load5138
  br i1 %_bop5139, label %_for_body5135, label %_for_exit5136
_for_body5135:
  %_load5140 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  %_load5141 = load i64, i64* %_i5132
  %_gep5142 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5140, i32 0, i32 1, i64 %_load5141
  %_load5143 = load i1, i1* %_gep5142
  %_load5144 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5130
  %_load5145 = load i64, i64* %_i5132
  %_gep5146 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5144, i32 0, i32 1, i64 %_load5145
  store i1 %_load5143, i1* %_gep5146
  %_load5148 = load i64, i64* %_i5132
  %_bop5149 = add i64 %_load5148, 1
  store i64 %_bop5149, i64* %_i5132
  br label %_for_cond5134
_for_exit5136:
  store i64 0, i64* %_i5151
  br label %_for_cond5153
_for_cond5153:
  %_load5156 = load i64, i64* %_i5151
  %_load5157 = load i64, i64* @lfsr_iterations
  %_bop5158 = icmp slt i64 %_load5156, %_load5157
  br i1 %_bop5158, label %_for_body5154, label %_for_exit5155
_for_body5154:
  %_load5164 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5130
  %_load5165 = load i64, i64* @lfsr_length
  %_bop5166 = sub i64 %_load5165, 2
  %_gep5167 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5164, i32 0, i32 1, i64 %_bop5166
  %_load5168 = load i1, i1* %_gep5167
  %_load5159 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5130
  %_load5160 = load i64, i64* @lfsr_length
  %_bop5161 = sub i64 %_load5160, 1
  %_gep5162 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5159, i32 0, i32 1, i64 %_bop5161
  %_load5163 = load i1, i1* %_gep5162
  %_call5169 = call i1 @xor(i1 %_load5163, i1 %_load5168)
  store i1 %_call5169, i1* %_new_first5170
  %_load5172 = load i64, i64* @lfsr_length
  %_bop5173 = sub i64 %_load5172, 1
  store i64 %_bop5173, i64* %_j5174
  br label %_for_cond5176
_for_cond5176:
  %_load5179 = load i64, i64* %_j5174
  %_bop5180 = icmp sgt i64 %_load5179, 0
  br i1 %_bop5180, label %_for_body5177, label %_for_exit5178
_for_body5177:
  %_load5181 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5130
  %_load5182 = load i64, i64* %_j5174
  %_bop5183 = sub i64 %_load5182, 1
  %_gep5184 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5181, i32 0, i32 1, i64 %_bop5183
  %_load5185 = load i1, i1* %_gep5184
  %_load5186 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5130
  %_load5187 = load i64, i64* %_j5174
  %_gep5188 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5186, i32 0, i32 1, i64 %_load5187
  store i1 %_load5185, i1* %_gep5188
  %_load5190 = load i64, i64* %_j5174
  %_bop5191 = sub i64 %_load5190, 1
  store i64 %_bop5191, i64* %_j5174
  br label %_for_cond5176
_for_exit5178:
  %_load5193 = load i1, i1* %_new_first5170
  %_load5194 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5130
  %_gep5195 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_load5194, i32 0, i32 1, i32 0
  store i1 %_load5193, i1* %_gep5195
  %_load5197 = load i64, i64* %_i5151
  %_bop5198 = add i64 %_load5197, 1
  store i64 %_bop5198, i64* %_i5151
  br label %_for_cond5153
_for_exit5155:
  %_load5201 = load i64, i64* @lfsr_length
  %_load5200 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** @lfsr_init_values
  call void @print_lfsr({ i64, [0 x i1] }* %_load5200, i64 %_load5201)
  %_strptr5204 = bitcast [2 x i8]* @_str5203 to i8*
  call void @print_string(i8* %_strptr5204)
  %_load5207 = load i64, i64* @lfsr_length
  %_load5206 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register5130
  call void @print_lfsr({ i64, [0 x i1] }* %_load5206, i64 %_load5207)
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
