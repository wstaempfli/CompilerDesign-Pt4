; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr_data5415 to { i64, [0 x i64] }*)
@_global_arr_data5415 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr_data5414 to { i64, [0 x i64] }*)
@_global_arr_data5414 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }

define i64 @arrcheck({ i64, [0 x i64] }* %ar1, { i64, [0 x i64] }* %ar2, i64 %len) {
  %_ar15381 = alloca { i64, [0 x i64] }*
  %_ar25382 = alloca { i64, [0 x i64] }*
  %_len5383 = alloca i64
  %_val5387 = alloca i64
  %_i5389 = alloca i64
  store { i64, [0 x i64] }* %ar1, { i64, [0 x i64] }** %_ar15381
  store { i64, [0 x i64] }* %ar2, { i64, [0 x i64] }** %_ar25382
  store i64 %len, i64* %_len5383
  store i64 0, i64* %_val5387
  store i64 0, i64* %_i5389
  br label %_for_cond5391
_for_cond5391:
  %_i5394 = load i64, i64* %_i5389
  %_len5395 = load i64, i64* %_len5383
  %_bop5396 = icmp slt i64 %_i5394, %_len5395
  br i1 %_bop5396, label %_for_body5392, label %_for_exit5393
_for_body5392:
  %_ar15400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar15381
  %_i5401 = load i64, i64* %_i5389
  %_load5403 = load i64, i64* %_gep_ptr5402
  %_gep_ptr5402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar15400, i32 0, i32 1, i64 %_i5401
  %_ar25404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar25382
  %_i5405 = load i64, i64* %_i5389
  %_load5407 = load i64, i64* %_gep_ptr5406
  %_gep_ptr5406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar25404, i32 0, i32 1, i64 %_i5405
  %_bop5408 = icmp ne i64 %_load5403, %_load5407
  br i1 %_bop5408, label %_then5397, label %_else5398
_then5397:
  store i64 1, i64* %_val5387
  br label %_join5399
_else5398:
  br label %_join5399
_join5399:
  %_i5410 = load i64, i64* %_i5389
  %_bop5411 = add i64 %_i5410, 1
  store i64 %_bop5411, i64* %_i5389
  br label %_for_cond5391
_for_exit5393:
  %_val5413 = load i64, i64* %_val5387
  ret i64 %_val5413
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5366 = alloca i64
  %_argv5367 = alloca { i64, [0 x i8*] }*
  %_val5370 = alloca i64
  store i64 %argc, i64* %_argc5366
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5367
  store i64 1, i64* %_val5370
  %_arr25376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_arr15375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr1
  %_call5377 = call i64 @arrcheck({ i64, [0 x i64] }* %_arr15375, { i64, [0 x i64] }* %_arr25376, i64 4)
  %_bop5378 = icmp eq i64 %_call5377, 1
  br i1 %_bop5378, label %_then5372, label %_else5373
_then5372:
  store i64 0, i64* %_val5370
  br label %_join5374
_else5373:
  br label %_join5374
_join5374:
  %_val5380 = load i64, i64* %_val5370
  ret i64 %_val5380
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
