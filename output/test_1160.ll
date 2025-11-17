; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str4258 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %numerator, i64 %denominator) {
  %_numerator4311 = alloca i64
  %_denominator4313 = alloca i64
  %_quotient4325 = alloca i64
  %_remainder4328 = alloca i64
  store i64 %numerator, i64* %_numerator4311
  store i64 %denominator, i64* %_denominator4313
  %_load4318 = load i64, i64* %_denominator4313
  %_bop4319 = icmp slt i64 %_load4318, 0
  br i1 %_bop4319, label %_then4315, label %_else4316
_then4315:
  %_load4321 = load i64, i64* %_denominator4313
  %_uop4322 = sub i64 0, %_load4321
  %_load4320 = load i64, i64* %_numerator4311
  %_call4323 = call i64 @euclid_division(i64 %_load4320, i64 %_uop4322)
  %_uop4324 = sub i64 0, %_call4323
  ret i64 %_uop4324
_else4316:
  br label %_join4317
_join4317:
  store i64 0, i64* %_quotient4325
  %_load4327 = load i64, i64* %_numerator4311
  store i64 %_load4327, i64* %_remainder4328
  %_load4333 = load i64, i64* %_numerator4311
  %_bop4334 = icmp slt i64 %_load4333, 0
  br i1 %_bop4334, label %_then4330, label %_else4331
_then4330:
  %_load4335 = load i64, i64* %_numerator4311
  %_uop4336 = sub i64 0, %_load4335
  store i64 %_uop4336, i64* %_remainder4328
  br label %_while_cond4338
_while_cond4338:
  %_load4341 = load i64, i64* %_remainder4328
  %_load4342 = load i64, i64* %_denominator4313
  %_bop4343 = icmp sge i64 %_load4341, %_load4342
  br i1 %_bop4343, label %_while_body4339, label %_while_exit4340
_while_body4339:
  %_load4344 = load i64, i64* %_quotient4325
  %_bop4345 = add i64 %_load4344, 1
  store i64 %_bop4345, i64* %_quotient4325
  %_load4347 = load i64, i64* %_remainder4328
  %_load4348 = load i64, i64* %_denominator4313
  %_bop4349 = sub i64 %_load4347, %_load4348
  store i64 %_bop4349, i64* %_remainder4328
  br label %_while_cond4338
_while_exit4340:
  %_load4354 = load i64, i64* %_remainder4328
  %_bop4355 = icmp eq i64 %_load4354, 0
  br i1 %_bop4355, label %_then4351, label %_else4352
_then4351:
  %_load4356 = load i64, i64* %_quotient4325
  %_uop4357 = sub i64 0, %_load4356
  ret i64 %_uop4357
_else4352:
  %_load4358 = load i64, i64* %_quotient4325
  %_uop4359 = sub i64 0, %_load4358
  %_bop4360 = sub i64 %_uop4359, 1
  ret i64 %_bop4360
_join4353:
  br label %_join4332
_else4331:
  br label %_join4332
_join4332:
  br label %_while_cond4361
_while_cond4361:
  %_load4364 = load i64, i64* %_remainder4328
  %_load4365 = load i64, i64* %_denominator4313
  %_bop4366 = icmp sge i64 %_load4364, %_load4365
  br i1 %_bop4366, label %_while_body4362, label %_while_exit4363
_while_body4362:
  %_load4367 = load i64, i64* %_quotient4325
  %_bop4368 = add i64 %_load4367, 1
  store i64 %_bop4368, i64* %_quotient4325
  %_load4370 = load i64, i64* %_remainder4328
  %_load4371 = load i64, i64* %_denominator4313
  %_bop4372 = sub i64 %_load4370, %_load4371
  store i64 %_bop4372, i64* %_remainder4328
  br label %_while_cond4361
_while_exit4363:
  %_load4374 = load i64, i64* %_quotient4325
  ret i64 %_load4374
}

define i1 @binary_search({ i64, [0 x i64] }* %input, i64 %key, i64 %min, i64 %max) {
  %_input4261 = alloca { i64, [0 x i64] }*
  %_key4263 = alloca i64
  %_min4265 = alloca i64
  %_max4267 = alloca i64
  %_midpt4279 = alloca i64
  store { i64, [0 x i64] }* %input, { i64, [0 x i64] }** %_input4261
  store i64 %key, i64* %_key4263
  store i64 %min, i64* %_min4265
  store i64 %max, i64* %_max4267
  %_load4272 = load i64, i64* %_max4267
  %_load4273 = load i64, i64* %_min4265
  %_bop4274 = icmp slt i64 %_load4272, %_load4273
  br i1 %_bop4274, label %_then4269, label %_else4270
_then4269:
  ret i1 0
_else4270:
  br label %_join4271
_join4271:
  %_load4275 = load i64, i64* %_max4267
  %_load4276 = load i64, i64* %_min4265
  %_bop4277 = add i64 %_load4275, %_load4276
  %_call4278 = call i64 @euclid_division(i64 %_bop4277, i64 2)
  store i64 %_call4278, i64* %_midpt4279
  %_load4284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_load4285 = load i64, i64* %_midpt4279
  %_gep4286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4284, i32 0, i32 1, i64 %_load4285
  %_load4287 = load i64, i64* %_gep4286
  %_load4288 = load i64, i64* %_key4263
  %_bop4289 = icmp sgt i64 %_load4287, %_load4288
  br i1 %_bop4289, label %_then4281, label %_else4282
_then4281:
  %_load4293 = load i64, i64* %_midpt4279
  %_bop4294 = sub i64 %_load4293, 1
  %_load4292 = load i64, i64* %_min4265
  %_load4291 = load i64, i64* %_key4263
  %_load4290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_call4295 = call i1 @binary_search({ i64, [0 x i64] }* %_load4290, i64 %_load4291, i64 %_load4292, i64 %_bop4294)
  ret i1 %_call4295
_else4282:
  br label %_join4283
_join4283:
  %_load4299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_load4300 = load i64, i64* %_midpt4279
  %_gep4301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4299, i32 0, i32 1, i64 %_load4300
  %_load4302 = load i64, i64* %_gep4301
  %_load4303 = load i64, i64* %_key4263
  %_bop4304 = icmp slt i64 %_load4302, %_load4303
  br i1 %_bop4304, label %_then4296, label %_else4297
_then4296:
  %_load4309 = load i64, i64* %_max4267
  %_load4307 = load i64, i64* %_midpt4279
  %_bop4308 = add i64 %_load4307, 1
  %_load4306 = load i64, i64* %_key4263
  %_load4305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input4261
  %_call4310 = call i1 @binary_search({ i64, [0 x i64] }* %_load4305, i64 %_load4306, i64 %_bop4308, i64 %_load4309)
  ret i1 %_call4310
_else4297:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4214 = alloca i64
  %_argv4216 = alloca { i64, [0 x i8*] }*
  %_test_array4220 = alloca { i64, [0 x i64] }*
  %_i4222 = alloca i64
  %_even4241 = alloca i1
  %_odd4245 = alloca i1
  store i64 %argc, i64* %_argc4214
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4216
  %_raw_array4218 = call i64* @oat_alloc_array(i64 100)
  %_array4219 = bitcast i64* %_raw_array4218 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4219, { i64, [0 x i64] }** %_test_array4220
  store i64 0, i64* %_i4222
  br label %_for_cond4224
_for_cond4224:
  %_load4227 = load i64, i64* %_i4222
  %_bop4228 = icmp slt i64 %_load4227, 100
  br i1 %_bop4228, label %_for_body4225, label %_for_exit4226
_for_body4225:
  %_load4229 = load i64, i64* %_i4222
  %_bop4230 = mul i64 2, %_load4229
  %_bop4231 = add i64 %_bop4230, 1
  %_load4232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4220
  %_load4233 = load i64, i64* %_i4222
  %_gep4234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4232, i32 0, i32 1, i64 %_load4233
  store i64 %_bop4231, i64* %_gep4234
  %_load4236 = load i64, i64* %_i4222
  %_bop4237 = add i64 %_load4236, 1
  store i64 %_bop4237, i64* %_i4222
  br label %_for_cond4224
_for_exit4226:
  %_load4239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4220
  %_call4240 = call i1 @binary_search({ i64, [0 x i64] }* %_load4239, i64 80, i64 0, i64 99)
  store i1 %_call4240, i1* %_even4241
  %_load4243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array4220
  %_call4244 = call i1 @binary_search({ i64, [0 x i64] }* %_load4243, i64 81, i64 0, i64 99)
  store i1 %_call4244, i1* %_odd4245
  %_load4250 = load i1, i1* %_even4241
  %_load4251 = load i1, i1* %_odd4245
  %_bop4252 = and i1 %_load4250, %_load4251
  %_uop4253 = xor i1 %_bop4252, 1
  %_load4254 = load i1, i1* %_even4241
  %_load4255 = load i1, i1* %_odd4245
  %_bop4256 = or i1 %_load4254, %_load4255
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
