; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board5453 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5454 = alloca i64
  %_j5455 = alloca i64
  %_count5456 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5453
  store i64 %i, i64* %_i5454
  store i64 %j, i64* %_j5455
  store i64 %count, i64* %_count5456
  %_i5464 = load i64, i64* %_i5454
  %_bop5465 = icmp sge i64 %_i5464, 0
  %_j5466 = load i64, i64* %_j5455
  %_bop5467 = icmp sge i64 %_j5466, 0
  %_bop5468 = and i1 %_bop5465, %_bop5467
  %_i5469 = load i64, i64* %_i5454
  %_len5470 = load i64, i64* @len
  %_bop5471 = icmp slt i64 %_i5469, %_len5470
  %_bop5472 = and i1 %_bop5468, %_bop5471
  %_j5473 = load i64, i64* %_j5455
  %_len5474 = load i64, i64* @len
  %_bop5475 = icmp slt i64 %_j5473, %_len5474
  %_bop5476 = and i1 %_bop5472, %_bop5475
  br i1 %_bop5476, label %_then5461, label %_else5462
_then5461:
  %_count5477 = load i64, i64* %_count5456
  %_board5478 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5453
  %_i5479 = load i64, i64* %_i5454
  %_gep5480 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5478, i32 0, i32 1, i64 %_i5479
  %_load5481 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5480
  %_j5482 = load i64, i64* %_j5455
  %_gep5483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5481, i32 0, i32 1, i64 %_j5482
  %_load5484 = load i64, i64* %_gep5483
  %_bop5485 = add i64 %_count5477, %_load5484
  ret i64 %_bop5485
_else5462:
  %_count5486 = load i64, i64* %_count5456
  ret i64 %_count5486
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board5356 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5357 = alloca i64
  %_j5358 = alloca i64
  %_alive5369 = alloca i64
  %_count5371 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  store i64 %i, i64* %_i5357
  store i64 %j, i64* %_j5358
  %_board5362 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_i5363 = load i64, i64* %_i5357
  %_gep5364 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5362, i32 0, i32 1, i64 %_i5363
  %_load5365 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5364
  %_j5366 = load i64, i64* %_j5358
  %_gep5367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5365, i32 0, i32 1, i64 %_j5366
  %_load5368 = load i64, i64* %_gep5367
  store i64 %_load5368, i64* %_alive5369
  store i64 0, i64* %_count5371
  %_count5378 = load i64, i64* %_count5371
  %_j5376 = load i64, i64* %_j5358
  %_bop5377 = sub i64 %_j5376, 1
  %_i5374 = load i64, i64* %_i5357
  %_bop5375 = sub i64 %_i5374, 1
  %_board5373 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5379 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5373, i64 %_bop5375, i64 %_bop5377, i64 %_count5378)
  store i64 %_call5379, i64* %_count5371
  %_count5385 = load i64, i64* %_count5371
  %_j5384 = load i64, i64* %_j5358
  %_i5382 = load i64, i64* %_i5357
  %_bop5383 = sub i64 %_i5382, 1
  %_board5381 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5386 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5381, i64 %_bop5383, i64 %_j5384, i64 %_count5385)
  store i64 %_call5386, i64* %_count5371
  %_count5393 = load i64, i64* %_count5371
  %_j5391 = load i64, i64* %_j5358
  %_bop5392 = add i64 %_j5391, 1
  %_i5389 = load i64, i64* %_i5357
  %_bop5390 = sub i64 %_i5389, 1
  %_board5388 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5394 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5388, i64 %_bop5390, i64 %_bop5392, i64 %_count5393)
  store i64 %_call5394, i64* %_count5371
  %_count5400 = load i64, i64* %_count5371
  %_j5398 = load i64, i64* %_j5358
  %_bop5399 = sub i64 %_j5398, 1
  %_i5397 = load i64, i64* %_i5357
  %_board5396 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5401 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5396, i64 %_i5397, i64 %_bop5399, i64 %_count5400)
  store i64 %_call5401, i64* %_count5371
  %_count5407 = load i64, i64* %_count5371
  %_j5405 = load i64, i64* %_j5358
  %_bop5406 = add i64 %_j5405, 1
  %_i5404 = load i64, i64* %_i5357
  %_board5403 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5408 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5403, i64 %_i5404, i64 %_bop5406, i64 %_count5407)
  store i64 %_call5408, i64* %_count5371
  %_count5415 = load i64, i64* %_count5371
  %_j5413 = load i64, i64* %_j5358
  %_bop5414 = sub i64 %_j5413, 1
  %_i5411 = load i64, i64* %_i5357
  %_bop5412 = add i64 %_i5411, 1
  %_board5410 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5416 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5410, i64 %_bop5412, i64 %_bop5414, i64 %_count5415)
  store i64 %_call5416, i64* %_count5371
  %_count5422 = load i64, i64* %_count5371
  %_j5421 = load i64, i64* %_j5358
  %_i5419 = load i64, i64* %_i5357
  %_bop5420 = add i64 %_i5419, 1
  %_board5418 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5423 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5418, i64 %_bop5420, i64 %_j5421, i64 %_count5422)
  store i64 %_call5423, i64* %_count5371
  %_count5430 = load i64, i64* %_count5371
  %_j5428 = load i64, i64* %_j5358
  %_bop5429 = add i64 %_j5428, 1
  %_i5426 = load i64, i64* %_i5357
  %_bop5427 = add i64 %_i5426, 1
  %_board5425 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5356
  %_call5431 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5425, i64 %_bop5427, i64 %_bop5429, i64 %_count5430)
  store i64 %_call5431, i64* %_count5371
  %_alive5436 = load i64, i64* %_alive5369
  %_bop5437 = icmp eq i64 %_alive5436, 1
  br i1 %_bop5437, label %_then5433, label %_else5434
_then5433:
  %_count5441 = load i64, i64* %_count5371
  %_bop5442 = icmp slt i64 %_count5441, 2
  br i1 %_bop5442, label %_then5438, label %_else5439
_then5438:
  ret i64 0
_else5439:
  %_count5446 = load i64, i64* %_count5371
  %_bop5447 = icmp slt i64 %_count5446, 4
  br i1 %_bop5447, label %_then5443, label %_else5444
_then5443:
  ret i64 1
_else5444:
  br label %_join5445
_join5445:
  br label %_join5440
_join5440:
  ret i64 0
_else5434:
  br label %_join5435
_join5435:
  %_count5451 = load i64, i64* %_count5371
  %_bop5452 = icmp eq i64 %_count5451, 3
  br i1 %_bop5452, label %_then5448, label %_else5449
_then5448:
  ret i64 1
_else5449:
  ret i64 0
_join5450:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5181 = alloca i64
  %_argv5182 = alloca { i64, [0 x i8*] }*
  %_board5235 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board5287 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5289 = alloca i64
  %_j5302 = alloca i64
  %_i5326 = alloca i64
  %_j5334 = alloca i64
  store i64 %argc, i64* %_argc5181
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5182
  %_raw_array5185 = call i64* @oat_alloc_array(i64 4)
  %_array5186 = bitcast i64* %_raw_array5185 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5187 = call i64* @oat_alloc_array(i64 4)
  %_array5188 = bitcast i64* %_raw_array5187 to { i64, [0 x i64] }*
  %_gep_lit5189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5189
  %_gep_lit5191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5191
  %_gep_lit5193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5193
  %_gep_lit5195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5188, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5195
  %_gep_lit5197 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5186, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5188, { i64, [0 x i64] }** %_gep_lit5197
  %_raw_array5199 = call i64* @oat_alloc_array(i64 4)
  %_array5200 = bitcast i64* %_raw_array5199 to { i64, [0 x i64] }*
  %_gep_lit5201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5200, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5201
  %_gep_lit5203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5200, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit5203
  %_gep_lit5205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5200, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit5205
  %_gep_lit5207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5200, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep_lit5207
  %_gep_lit5209 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5186, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5200, { i64, [0 x i64] }** %_gep_lit5209
  %_raw_array5211 = call i64* @oat_alloc_array(i64 4)
  %_array5212 = bitcast i64* %_raw_array5211 to { i64, [0 x i64] }*
  %_gep_lit5213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5212, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit5213
  %_gep_lit5215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5212, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit5215
  %_gep_lit5217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5212, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit5217
  %_gep_lit5219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5212, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5219
  %_gep_lit5221 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5186, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5212, { i64, [0 x i64] }** %_gep_lit5221
  %_raw_array5223 = call i64* @oat_alloc_array(i64 4)
  %_array5224 = bitcast i64* %_raw_array5223 to { i64, [0 x i64] }*
  %_gep_lit5225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5224, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5225
  %_gep_lit5227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5224, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5227
  %_gep_lit5229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5224, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5229
  %_gep_lit5231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5224, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5231
  %_gep_lit5233 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5186, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5224, { i64, [0 x i64] }** %_gep_lit5233
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5186, { i64, [0 x { i64, [0 x i64] }*] }** %_board5235
  %_raw_array5237 = call i64* @oat_alloc_array(i64 4)
  %_array5238 = bitcast i64* %_raw_array5237 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5239 = call i64* @oat_alloc_array(i64 4)
  %_array5240 = bitcast i64* %_raw_array5239 to { i64, [0 x i64] }*
  %_gep_lit5241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5240, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5241
  %_gep_lit5243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5240, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5243
  %_gep_lit5245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5240, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5245
  %_gep_lit5247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5240, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5247
  %_gep_lit5249 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5238, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5240, { i64, [0 x i64] }** %_gep_lit5249
  %_raw_array5251 = call i64* @oat_alloc_array(i64 4)
  %_array5252 = bitcast i64* %_raw_array5251 to { i64, [0 x i64] }*
  %_gep_lit5253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5252, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5253
  %_gep_lit5255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5252, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5255
  %_gep_lit5257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5252, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5257
  %_gep_lit5259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5252, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5259
  %_gep_lit5261 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5238, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5252, { i64, [0 x i64] }** %_gep_lit5261
  %_raw_array5263 = call i64* @oat_alloc_array(i64 4)
  %_array5264 = bitcast i64* %_raw_array5263 to { i64, [0 x i64] }*
  %_gep_lit5265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5264, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5265
  %_gep_lit5267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5264, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5267
  %_gep_lit5269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5264, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5269
  %_gep_lit5271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5264, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5271
  %_gep_lit5273 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5238, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5264, { i64, [0 x i64] }** %_gep_lit5273
  %_raw_array5275 = call i64* @oat_alloc_array(i64 4)
  %_array5276 = bitcast i64* %_raw_array5275 to { i64, [0 x i64] }*
  %_gep_lit5277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5277
  %_gep_lit5279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5279
  %_gep_lit5281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5281
  %_gep_lit5283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5276, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5283
  %_gep_lit5285 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5238, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5276, { i64, [0 x i64] }** %_gep_lit5285
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5238, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5287
  store i64 0, i64* %_i5289
  br label %_for_cond5291
_for_cond5291:
  %_i5294 = load i64, i64* %_i5289
  %_bop5295 = icmp slt i64 %_i5294, 4
  br i1 %_bop5295, label %_for_body5292, label %_for_exit5293
_for_body5292:
  %_raw_array5296 = call i64* @oat_alloc_array(i64 4)
  %_array5297 = bitcast i64* %_raw_array5296 to { i64, [0 x i64] }*
  %_new_board5298 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5287
  %_i5299 = load i64, i64* %_i5289
  %_gep5300 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5298, i32 0, i32 1, i64 %_i5299
  store { i64, [0 x i64] }* %_array5297, { i64, [0 x i64] }** %_gep5300
  store i64 0, i64* %_j5302
  br label %_for_cond5304
_for_cond5304:
  %_j5307 = load i64, i64* %_j5302
  %_bop5308 = icmp slt i64 %_j5307, 4
  br i1 %_bop5308, label %_for_body5305, label %_for_exit5306
_for_body5305:
  %_j5311 = load i64, i64* %_j5302
  %_i5310 = load i64, i64* %_i5289
  %_board5309 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5235
  %_call5312 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5309, i64 %_i5310, i64 %_j5311)
  %_new_board5313 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5287
  %_i5314 = load i64, i64* %_i5289
  %_gep5315 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5313, i32 0, i32 1, i64 %_i5314
  %_load5316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5315
  %_j5317 = load i64, i64* %_j5302
  %_gep5318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5316, i32 0, i32 1, i64 %_j5317
  store i64 %_call5312, i64* %_gep5318
  %_j5320 = load i64, i64* %_j5302
  %_bop5321 = add i64 %_j5320, 1
  store i64 %_bop5321, i64* %_j5302
  br label %_for_cond5304
_for_exit5306:
  %_i5323 = load i64, i64* %_i5289
  %_bop5324 = add i64 %_i5323, 1
  store i64 %_bop5324, i64* %_i5289
  br label %_for_cond5291
_for_exit5293:
  store i64 0, i64* %_i5326
  br label %_for_cond5328
_for_cond5328:
  %_i5331 = load i64, i64* %_i5326
  %_len5332 = load i64, i64* @len
  %_bop5333 = icmp slt i64 %_i5331, %_len5332
  br i1 %_bop5333, label %_for_body5329, label %_for_exit5330
_for_body5329:
  store i64 0, i64* %_j5334
  br label %_for_cond5336
_for_cond5336:
  %_j5339 = load i64, i64* %_j5334
  %_len5340 = load i64, i64* @len
  %_bop5341 = icmp slt i64 %_j5339, %_len5340
  br i1 %_bop5341, label %_for_body5337, label %_for_exit5338
_for_body5337:
  %_new_board5342 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5287
  %_i5343 = load i64, i64* %_i5326
  %_gep5344 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5342, i32 0, i32 1, i64 %_i5343
  %_load5345 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5344
  %_j5346 = load i64, i64* %_j5334
  %_gep5347 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5345, i32 0, i32 1, i64 %_j5346
  %_load5348 = load i64, i64* %_gep5347
  call void @print_int(i64 %_load5348)
  %_j5350 = load i64, i64* %_j5334
  %_bop5351 = add i64 %_j5350, 1
  store i64 %_bop5351, i64* %_j5334
  br label %_for_cond5336
_for_exit5338:
  %_i5353 = load i64, i64* %_i5326
  %_bop5354 = add i64 %_i5353, 1
  store i64 %_bop5354, i64* %_i5326
  br label %_for_cond5328
_for_exit5330:
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
