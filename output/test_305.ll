; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a5298 = alloca { i64, [0 x i64] }*
  %_len5299 = alloca i64
  %_i5302 = alloca i64
  %_j5304 = alloca i64
  %_tmp5335 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a5298
  store i64 %len, i64* %_len5299
  store i64 1, i64* %_i5302
  store i64 2, i64* %_j5304
  br label %_while_cond5306
_while_cond5306:
  %_i5309 = load i64, i64* %_i5302
  %_len5310 = load i64, i64* %_len5299
  %_bop5311 = icmp slt i64 %_i5309, %_len5310
  br i1 %_bop5311, label %_while_body5307, label %_while_exit5308
_while_body5307:
  %_a5315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5298
  %_i5316 = load i64, i64* %_i5302
  %_bop5317 = sub i64 %_i5316, 1
  %_load5319 = load i64, i64* %_gep_ptr5318
  %_gep_ptr5318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5315, i32 0, i32 1, i64 %_bop5317
  %_a5320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5298
  %_i5321 = load i64, i64* %_i5302
  %_load5323 = load i64, i64* %_gep_ptr5322
  %_gep_ptr5322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5320, i32 0, i32 1, i64 %_i5321
  %_bop5324 = icmp sle i64 %_load5319, %_load5323
  br i1 %_bop5324, label %_then5312, label %_else5313
_then5312:
  %_j5325 = load i64, i64* %_j5304
  store i64 %_j5325, i64* %_i5302
  %_j5327 = load i64, i64* %_j5304
  %_bop5328 = add i64 %_j5327, 1
  store i64 %_bop5328, i64* %_j5304
  br label %_join5314
_else5313:
  %_a5330 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5298
  %_i5331 = load i64, i64* %_i5302
  %_bop5332 = sub i64 %_i5331, 1
  %_load5334 = load i64, i64* %_gep_ptr5333
  %_gep_ptr5333 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5330, i32 0, i32 1, i64 %_bop5332
  store i64 %_load5334, i64* %_tmp5335
  %_a5337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5298
  %_i5338 = load i64, i64* %_i5302
  %_load5340 = load i64, i64* %_gep_ptr5339
  %_gep_ptr5339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5337, i32 0, i32 1, i64 %_i5338
  %_a5341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5298
  %_i5342 = load i64, i64* %_i5302
  %_bop5343 = sub i64 %_i5342, 1
  %_gep5344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5341, i32 0, i32 1, i64 %_bop5343
  store i64 %_load5340, i64* %_gep5344
  %_tmp5346 = load i64, i64* %_tmp5335
  %_a5347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5298
  %_i5348 = load i64, i64* %_i5302
  %_gep5349 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5347, i32 0, i32 1, i64 %_i5348
  store i64 %_tmp5346, i64* %_gep5349
  %_i5351 = load i64, i64* %_i5302
  %_bop5352 = sub i64 %_i5351, 1
  store i64 %_bop5352, i64* %_i5302
  %_i5357 = load i64, i64* %_i5302
  %_bop5358 = icmp eq i64 %_i5357, 0
  br i1 %_bop5358, label %_then5354, label %_else5355
_then5354:
  %_j5359 = load i64, i64* %_j5304
  store i64 %_j5359, i64* %_i5302
  %_j5361 = load i64, i64* %_j5304
  %_bop5362 = add i64 %_j5361, 1
  store i64 %_bop5362, i64* %_j5304
  br label %_join5356
_else5355:
  br label %_join5356
_join5356:
  br label %_join5314
_join5314:
  br label %_while_cond5306
_while_exit5308:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5254 = alloca i64
  %_argv5255 = alloca { i64, [0 x i8*] }*
  %_arr5276 = alloca { i64, [0 x i64] }*
  %_len5278 = alloca i64
  %_i5283 = alloca i64
  store i64 %argc, i64* %_argc5254
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5255
  %_raw_array5258 = call i64* @oat_alloc_array(i64 8)
  %_array5259 = bitcast i64* %_raw_array5258 to { i64, [0 x i64] }*
  store i64 5, i64* %_gep5260
  %_gep5260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 0
  store i64 200, i64* %_gep5262
  %_gep5262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep5264
  %_gep5264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 2
  store i64 65, i64* %_gep5266
  %_gep5266 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 3
  store i64 30, i64* %_gep5268
  %_gep5268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 4
  store i64 99, i64* %_gep5270
  %_gep5270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 5
  store i64 2, i64* %_gep5272
  %_gep5272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 6
  store i64 0, i64* %_gep5274
  %_gep5274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5259, i32 0, i32 1, i32 7
  store { i64, [0 x i64] }* %_array5259, { i64, [0 x i64] }** %_arr5276
  store i64 8, i64* %_len5278
  %_len5281 = load i64, i64* %_len5278
  %_arr5280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5276
  call void @gnomeSort({ i64, [0 x i64] }* %_arr5280, i64 %_len5281)
  store i64 0, i64* %_i5283
  br label %_for_cond5285
_for_cond5285:
  %_i5288 = load i64, i64* %_i5283
  %_bop5289 = icmp slt i64 %_i5288, 8
  br i1 %_bop5289, label %_for_body5286, label %_for_exit5287
_for_body5286:
  %_arr5290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5276
  %_i5291 = load i64, i64* %_i5283
  %_load5293 = load i64, i64* %_gep_ptr5292
  %_gep_ptr5292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5290, i32 0, i32 1, i64 %_i5291
  call void @print_int(i64 %_load5293)
  %_i5295 = load i64, i64* %_i5283
  %_bop5296 = add i64 %_i5295, 1
  store i64 %_bop5296, i64* %_i5283
  br label %_for_cond5285
_for_exit5287:
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
