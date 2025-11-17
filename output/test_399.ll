; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str4158 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator4211 = alloca i64
  %_denominator4212 = alloca i64
  %_quotient4225 = alloca i64
  %_remainder4228 = alloca i64
  store i64 %numerator, i64* %_numerator4211
  store i64 %denominator, i64* %_denominator4212
  %_denominator4218 = load i64, i64* %_denominator4212
  %_bop4219 = icmp slt i64 %_denominator4218, 0
  br i1 %_bop4219, label %_then4215, label %_else4216
_then4215:
  %_denominator4221 = load i64, i64* %_denominator4212
  %_uop4222 = sub i64 0, %_denominator4221
  %_numerator4220 = load i64, i64* %_numerator4211
  %_call4223 = call i64 @euclid_division(i64 %_numerator4220, i64 %_uop4222)
  %_uop4224 = sub i64 0, %_call4223
  ret i64 %_uop4224
_else4216:
  br label %_join4217
_join4217:
  store i64 0, i64* %_quotient4225
  %_numerator4227 = load i64, i64* %_numerator4211
  store i64 %_numerator4227, i64* %_remainder4228
  %_numerator4233 = load i64, i64* %_numerator4211
  %_bop4234 = icmp slt i64 %_numerator4233, 0
  br i1 %_bop4234, label %_then4230, label %_else4231
_then4230:
  %_numerator4235 = load i64, i64* %_numerator4211
  %_uop4236 = sub i64 0, %_numerator4235
  store i64 %_uop4236, i64* %_remainder4228
  br label %_while_cond4238
_while_cond4238:
  %_remainder4241 = load i64, i64* %_remainder4228
  %_denominator4242 = load i64, i64* %_denominator4212
  %_bop4243 = icmp sge i64 %_remainder4241, %_denominator4242
  br i1 %_bop4243, label %_while_body4239, label %_while_exit4240
_while_body4239:
  %_quotient4244 = load i64, i64* %_quotient4225
  %_bop4245 = add i64 %_quotient4244, 1
  store i64 %_bop4245, i64* %_quotient4225
  %_remainder4247 = load i64, i64* %_remainder4228
  %_denominator4248 = load i64, i64* %_denominator4212
  %_bop4249 = sub i64 %_remainder4247, %_denominator4248
  store i64 %_bop4249, i64* %_remainder4228
  br label %_while_cond4238
_while_exit4240:
  %_remainder4254 = load i64, i64* %_remainder4228
  %_bop4255 = icmp eq i64 %_remainder4254, 0
  br i1 %_bop4255, label %_then4251, label %_else4252
_then4251:
  %_quotient4256 = load i64, i64* %_quotient4225
  %_uop4257 = sub i64 0, %_quotient4256
  ret i64 %_uop4257
_else4252:
  %_quotient4258 = load i64, i64* %_quotient4225
  %_uop4259 = sub i64 0, %_quotient4258
  %_bop4260 = sub i64 %_uop4259, 1
  ret i64 %_bop4260
_join4253:
  br label %_join4232
_else4231:
  br label %_join4232
_join4232:
  br label %_while_cond4261
_while_cond4261:
  %_remainder4264 = load i64, i64* %_remainder4228
  %_denominator4265 = load i64, i64* %_denominator4212
  %_bop4266 = icmp sge i64 %_remainder4264, %_denominator4265
  br i1 %_bop4266, label %_while_body4262, label %_while_exit4263
_while_body4262:
  %_quotient4267 = load i64, i64* %_quotient4225
  %_bop4268 = add i64 %_quotient4267, 1
  store i64 %_bop4268, i64* %_quotient4225
  %_remainder4270 = load i64, i64* %_remainder4228
  %_denominator4271 = load i64, i64* %_denominator4212
  %_bop4272 = sub i64 %_remainder4270, %_denominator4271
  store i64 %_bop4272, i64* %_remainder4228
  br label %_while_cond4261
_while_exit4263:
  %_quotient4274 = load i64, i64* %_quotient4225
  ret i64 %_quotient4274
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input4161 = alloca { i64, [0 x i64] }*
  %_key4162 = alloca i64
  %_min4163 = alloca i64
  %_max4164 = alloca i64
  %_midpt4179 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input4161
  store i64 %key, i64* %_key4162
  store i64 %min, i64* %_min4163
  store i64 %max, i64* %_max4164
  %_max4172 = load i64, i64* %_max4164
  %_min4173 = load i64, i64* %_min4163
  %_bop4174 = icmp slt i64 %_max4172, %_min4173
  br i1 %_bop4174, label %_then4169, label %_else4170
_then4169:
  ret i1 0
_else4170:
  br label %_join4171
_join4171:
  %_max4175 = load i64, i64* %_max4164
  %_min4176 = load i64, i64* %_min4163
  %_bop4177 = add i64 %_max4175, %_min4176
  %_call4178 = call i64 @euclid_division(i64 %_bop4177, i64 2)
  store i64 %_call4178, i64* %_midpt4179
  %_input4184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4161
  %_midpt4185 = load i64, i64* %_midpt4179
  %_gep4186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4184, i32 0, i32 1, i64 %_midpt4185
  %_load4187 = load i64, i64* %_gep4186
  %_key4188 = load i64, i64* %_key4162
  %_bop4189 = icmp sgt i64 %_load4187, %_key4188
  br i1 %_bop4189, label %_then4181, label %_else4182
_then4181:
  %_midpt4193 = load i64, i64* %_midpt4179
  %_bop4194 = sub i64 %_midpt4193, 1
  %_min4192 = load i64, i64* %_min4163
  %_key4191 = load i64, i64* %_key4162
  %_input4190 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4161
  %_call4195 = call i1 @binary_search({ i64, [0 x i64] }* %_input4190, i64 %_key4191, i64 %_min4192, i64 %_bop4194)
  ret i1 %_call4195
_else4182:
  br label %_join4183
_join4183:
  %_input4199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4161
  %_midpt4200 = load i64, i64* %_midpt4179
  %_gep4201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4199, i32 0, i32 1, i64 %_midpt4200
  %_load4202 = load i64, i64* %_gep4201
  %_key4203 = load i64, i64* %_key4162
  %_bop4204 = icmp slt i64 %_load4202, %_key4203
  br i1 %_bop4204, label %_then4196, label %_else4197
_then4196:
  %_max4209 = load i64, i64* %_max4164
  %_midpt4207 = load i64, i64* %_midpt4179
  %_bop4208 = add i64 %_midpt4207, 1
  %_key4206 = load i64, i64* %_key4162
  %_input4205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4161
  %_call4210 = call i1 @binary_search({ i64, [0 x i64] }* %_input4205, i64 %_key4206, i64 %_bop4208, i64 %_max4209)
  ret i1 %_call4210
_else4197:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4114 = alloca i64
  %_argv4115 = alloca { i64, [0 x i8*] }*
  %_test_array4120 = alloca { i64, [0 x i64] }*
  %_i4122 = alloca i64
  %_even4141 = alloca i1
  %_odd4145 = alloca i1
  store i64 %argc, i64* %_argc4114
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4115
  %_raw_array4118 = call i64* @oat_alloc_array(i64 100)
  %_array4119 = bitcast i64* %_raw_array4118 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4119, { i64, [0 x i64] }** %_test_array4120
  store i64 0, i64* %_i4122
  br label %_for_cond4124
_for_cond4124:
  %_i4127 = load i64, i64* %_i4122
  %_bop4128 = icmp slt i64 %_i4127, 100
  br i1 %_bop4128, label %_for_body4125, label %_for_exit4126
_for_body4125:
  %_i4129 = load i64, i64* %_i4122
  %_bop4130 = mul i64 2, %_i4129
  %_bop4131 = add i64 %_bop4130, 1
  %_test_array4132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4120
  %_i4133 = load i64, i64* %_i4122
  %_gep4134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array4132, i32 0, i32 1, i64 %_i4133
  store i64 %_bop4131, i64* %_gep4134
  %_i4136 = load i64, i64* %_i4122
  %_bop4137 = add i64 %_i4136, 1
  store i64 %_bop4137, i64* %_i4122
  br label %_for_cond4124
_for_exit4126:
  %_test_array4139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4120
  %_call4140 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4139, i64 80, i64 0, i64 99)
  store i1 %_call4140, i1* %_even4141
  %_test_array4143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4120
  %_call4144 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4143, i64 81, i64 0, i64 99)
  store i1 %_call4144, i1* %_odd4145
  %_even4150 = load i1, i1* %_even4141
  %_odd4151 = load i1, i1* %_odd4145
  %_bop4152 = and i1 %_even4150, %_odd4151
  %_uop4153 = xor i1 %_bop4152, 1
  %_even4154 = load i1, i1* %_even4141
  %_odd4155 = load i1, i1* %_odd4145
  %_bop4156 = or i1 %_even4154, %_odd4155
  %_bop4157 = and i1 %_uop4153, %_bop4156
  br i1 %_bop4157, label %_then4147, label %_else4148
_then4147:
  %_strptr4159 = bitcast [9 x i8]* @_str4158 to i8*
  call void @print_string(i8* %_strptr4159)
  br label %_join4149
_else4148:
  br label %_join4149
_join4149:
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
