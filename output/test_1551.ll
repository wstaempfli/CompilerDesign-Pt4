; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str4258 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator4311 = alloca i64
  %_denominator4312 = alloca i64
  %_quotient4325 = alloca i64
  %_remainder4328 = alloca i64
  store i64 %numerator, i64* %_numerator4311
  store i64 %denominator, i64* %_denominator4312
  %_denominator4318 = load i64, i64* %_denominator4312
  %_bop4319 = icmp slt i64 %_denominator4318, 0
  br i1 %_bop4319, label %_then4315, label %_else4316
_then4315:
  %_denominator4321 = load i64, i64* %_denominator4312
  %_uop4322 = sub i64 0, %_denominator4321
  %_numerator4320 = load i64, i64* %_numerator4311
  %_funcall4323 = call i64 @euclid_division(i64 %_numerator4320, i64 %_uop4322)
  %_uop4324 = sub i64 0, %_funcall4323
  ret i64 %_uop4324
_else4316:
  br label %_join4317
_join4317:
  store i64 0, i64* %_quotient4325
  %_numerator4327 = load i64, i64* %_numerator4311
  store i64 %_numerator4327, i64* %_remainder4328
  %_numerator4333 = load i64, i64* %_numerator4311
  %_bop4334 = icmp slt i64 %_numerator4333, 0
  br i1 %_bop4334, label %_then4330, label %_else4331
_then4330:
  %_numerator4335 = load i64, i64* %_numerator4311
  %_uop4336 = sub i64 0, %_numerator4335
  store i64 %_uop4336, i64* %_remainder4328
  br label %_while_cond4338
_while_cond4338:
  %_remainder4341 = load i64, i64* %_remainder4328
  %_denominator4342 = load i64, i64* %_denominator4312
  %_bop4343 = icmp sge i64 %_remainder4341, %_denominator4342
  br i1 %_bop4343, label %_while_body4339, label %_while_exit4340
_while_body4339:
  %_quotient4344 = load i64, i64* %_quotient4325
  %_bop4345 = add i64 %_quotient4344, 1
  store i64 %_bop4345, i64* %_quotient4325
  %_remainder4347 = load i64, i64* %_remainder4328
  %_denominator4348 = load i64, i64* %_denominator4312
  %_bop4349 = sub i64 %_remainder4347, %_denominator4348
  store i64 %_bop4349, i64* %_remainder4328
  br label %_while_cond4338
_while_exit4340:
  %_remainder4354 = load i64, i64* %_remainder4328
  %_bop4355 = icmp eq i64 %_remainder4354, 0
  br i1 %_bop4355, label %_then4351, label %_else4352
_then4351:
  %_quotient4356 = load i64, i64* %_quotient4325
  %_uop4357 = sub i64 0, %_quotient4356
  ret i64 %_uop4357
_else4352:
  %_quotient4358 = load i64, i64* %_quotient4325
  %_uop4359 = sub i64 0, %_quotient4358
  %_bop4360 = sub i64 %_uop4359, 1
  ret i64 %_bop4360
_join4353:
  br label %_join4332
_else4331:
  br label %_join4332
_join4332:
  br label %_while_cond4361
_while_cond4361:
  %_remainder4364 = load i64, i64* %_remainder4328
  %_denominator4365 = load i64, i64* %_denominator4312
  %_bop4366 = icmp sge i64 %_remainder4364, %_denominator4365
  br i1 %_bop4366, label %_while_body4362, label %_while_exit4363
_while_body4362:
  %_quotient4367 = load i64, i64* %_quotient4325
  %_bop4368 = add i64 %_quotient4367, 1
  store i64 %_bop4368, i64* %_quotient4325
  %_remainder4370 = load i64, i64* %_remainder4328
  %_denominator4371 = load i64, i64* %_denominator4312
  %_bop4372 = sub i64 %_remainder4370, %_denominator4371
  store i64 %_bop4372, i64* %_remainder4328
  br label %_while_cond4361
_while_exit4363:
  %_quotient4374 = load i64, i64* %_quotient4325
  ret i64 %_quotient4374
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input4261 = alloca { i64, [0 x i64] }*
  %_key4262 = alloca i64
  %_min4263 = alloca i64
  %_max4264 = alloca i64
  %_midpt4279 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input4261
  store i64 %key, i64* %_key4262
  store i64 %min, i64* %_min4263
  store i64 %max, i64* %_max4264
  %_max4272 = load i64, i64* %_max4264
  %_min4273 = load i64, i64* %_min4263
  %_bop4274 = icmp slt i64 %_max4272, %_min4273
  br i1 %_bop4274, label %_then4269, label %_else4270
_then4269:
  ret i1 0
_else4270:
  br label %_join4271
_join4271:
  %_max4275 = load i64, i64* %_max4264
  %_min4276 = load i64, i64* %_min4263
  %_bop4277 = add i64 %_max4275, %_min4276
  %_funcall4278 = call i64 @euclid_division(i64 %_bop4277, i64 2)
  store i64 %_funcall4278, i64* %_midpt4279
  %_input4284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_midpt4285 = load i64, i64* %_midpt4279
  %_elem_addr4286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4284, i32 0, i32 1, i64 %_midpt4285
  %_read_val4287 = load i64, i64* %_elem_addr4286
  %_key4288 = load i64, i64* %_key4262
  %_bop4289 = icmp sgt i64 %_read_val4287, %_key4288
  br i1 %_bop4289, label %_then4281, label %_else4282
_then4281:
  %_midpt4293 = load i64, i64* %_midpt4279
  %_bop4294 = sub i64 %_midpt4293, 1
  %_min4292 = load i64, i64* %_min4263
  %_key4291 = load i64, i64* %_key4262
  %_input4290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_funcall4295 = call i1 @binary_search({ i64, [0 x i64] }* %_input4290, i64 %_key4291, i64 %_min4292, i64 %_bop4294)
  ret i1 %_funcall4295
_else4282:
  br label %_join4283
_join4283:
  %_input4299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_midpt4300 = load i64, i64* %_midpt4279
  %_elem_addr4301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input4299, i32 0, i32 1, i64 %_midpt4300
  %_read_val4302 = load i64, i64* %_elem_addr4301
  %_key4303 = load i64, i64* %_key4262
  %_bop4304 = icmp slt i64 %_read_val4302, %_key4303
  br i1 %_bop4304, label %_then4296, label %_else4297
_then4296:
  %_max4309 = load i64, i64* %_max4264
  %_midpt4307 = load i64, i64* %_midpt4279
  %_bop4308 = add i64 %_midpt4307, 1
  %_key4306 = load i64, i64* %_key4262
  %_input4305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_funcall4310 = call i1 @binary_search({ i64, [0 x i64] }* %_input4305, i64 %_key4306, i64 %_bop4308, i64 %_max4309)
  ret i1 %_funcall4310
_else4297:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4214 = alloca i64
  %_argv4215 = alloca { i64, [0 x i8*] }*
  %_test_array4220 = alloca { i64, [0 x i64] }*
  %_i4222 = alloca i64
  %_even4241 = alloca i1
  %_odd4245 = alloca i1
  store i64 %argc, i64* %_argc4214
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4215
  %_raw_array4218 = call i64* @oat_alloc_array(i64 100)
  %_array4219 = bitcast i64* %_raw_array4218 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4219, { i64, [0 x i64] }** %_test_array4220
  store i64 0, i64* %_i4222
  br label %_for_cond4224
_for_cond4224:
  %_i4227 = load i64, i64* %_i4222
  %_bop4228 = icmp slt i64 %_i4227, 100
  br i1 %_bop4228, label %_for_body4225, label %_for_exit4226
_for_body4225:
  %_i4229 = load i64, i64* %_i4222
  %_bop4230 = mul i64 2, %_i4229
  %_bop4231 = add i64 %_bop4230, 1
  %_test_array4232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4220
  %_i4233 = load i64, i64* %_i4222
  %_gep4234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array4232, i32 0, i32 1, i64 %_i4233
  store i64 %_bop4231, i64* %_gep4234
  %_i4236 = load i64, i64* %_i4222
  %_bop4237 = add i64 %_i4236, 1
  store i64 %_bop4237, i64* %_i4222
  br label %_for_cond4224
_for_exit4226:
  %_test_array4239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4220
  %_funcall4240 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4239, i64 80, i64 0, i64 99)
  store i1 %_funcall4240, i1* %_even4241
  %_test_array4243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4220
  %_funcall4244 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array4243, i64 81, i64 0, i64 99)
  store i1 %_funcall4244, i1* %_odd4245
  %_even4250 = load i1, i1* %_even4241
  %_odd4251 = load i1, i1* %_odd4245
  %_bop4252 = and i1 %_even4250, %_odd4251
  %_uop4253 = xor i1 %_bop4252, 1
  %_even4254 = load i1, i1* %_even4241
  %_odd4255 = load i1, i1* %_odd4245
  %_bop4256 = or i1 %_even4254, %_odd4255
  %_bop4257 = and i1 %_uop4253, %_bop4256
  br i1 %_bop4257, label %_then4247, label %_else4248
_then4247:
  %_strptr4259 = bitcast [9 x i8]* @_str4258 to i8*
  call void @print_string(i8* %_strptr4259)
  br label %_join4249
_else4248:
  br label %_join4249
_join4249:
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
