; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str3302 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers3311 = alloca { i64, [0 x i64] }*
  %_array_size3312 = alloca i64
  %_temp3315 = alloca i64
  %_i3319 = alloca i64
  %_j3326 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers3311
  store i64 %array_size, i64* %_array_size3312
  store i64 0, i64* %_temp3315
  %_array_size3317 = load i64, i64* %_array_size3312
  %_bop3318 = sub i64 %_array_size3317, 1
  store i64 %_bop3318, i64* %_i3319
  br label %_for_cond3321
_for_cond3321:
  %_i3324 = load i64, i64* %_i3319
  %_bop3325 = icmp sgt i64 %_i3324, 0
  br i1 %_bop3325, label %_for_body3322, label %_for_exit3323
_for_body3322:
  store i64 1, i64* %_j3326
  br label %_for_cond3328
_for_cond3328:
  %_j3331 = load i64, i64* %_j3326
  %_i3332 = load i64, i64* %_i3319
  %_bop3333 = icmp sle i64 %_j3331, %_i3332
  br i1 %_bop3333, label %_for_body3329, label %_for_exit3330
_for_body3329:
  %_numbers3337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_j3338 = load i64, i64* %_j3326
  %_bop3339 = sub i64 %_j3338, 1
  %_gep3340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3337, i32 0, i32 1, i64 %_bop3339
  %_load3341 = load i64, i64* %_gep3340
  %_numbers3342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_i3343 = load i64, i64* %_i3319
  %_gep3344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3342, i32 0, i32 1, i64 %_i3343
  %_load3345 = load i64, i64* %_gep3344
  %_bop3346 = icmp sgt i64 %_load3341, %_load3345
  br i1 %_bop3346, label %_then3334, label %_else3335
_then3334:
  %_numbers3347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_j3348 = load i64, i64* %_j3326
  %_bop3349 = sub i64 %_j3348, 1
  %_gep3350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3347, i32 0, i32 1, i64 %_bop3349
  %_load3351 = load i64, i64* %_gep3350
  store i64 %_load3351, i64* %_temp3315
  %_numbers3353 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_i3354 = load i64, i64* %_i3319
  %_gep3355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3353, i32 0, i32 1, i64 %_i3354
  %_load3356 = load i64, i64* %_gep3355
  %_numbers3357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_j3358 = load i64, i64* %_j3326
  %_bop3359 = sub i64 %_j3358, 1
  %_gep3360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3357, i32 0, i32 1, i64 %_bop3359
  store i64 %_load3356, i64* %_gep3360
  %_temp3362 = load i64, i64* %_temp3315
  %_numbers3363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_i3364 = load i64, i64* %_i3319
  %_gep3365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3363, i32 0, i32 1, i64 %_i3364
  store i64 %_temp3362, i64* %_gep3365
  br label %_join3336
_else3335:
  br label %_join3336
_join3336:
  %_j3367 = load i64, i64* %_j3326
  %_bop3368 = add i64 %_j3367, 1
  store i64 %_bop3368, i64* %_j3326
  br label %_for_cond3328
_for_exit3330:
  %_i3370 = load i64, i64* %_i3319
  %_bop3371 = sub i64 %_i3370, 1
  store i64 %_bop3371, i64* %_i3319
  br label %_for_cond3321
_for_exit3323:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3267 = alloca i64
  %_argv3268 = alloca { i64, [0 x i8*] }*
  %_a3273 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3267
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3268
  %_raw_array3271 = call i64* @oat_alloc_array(i64 8)
  %_array3272 = bitcast i64* %_raw_array3271 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3272, { i64, [0 x i64] }** %_a3273
  %_a3275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3275, i32 0, i32 1, i32 0
  store i64 121, i64* %_gep3276
  %_a3278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3278, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3279
  %_a3281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3281, i32 0, i32 1, i32 2
  store i64 120, i64* %_gep3282
  %_a3284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3284, i32 0, i32 1, i32 3
  store i64 111, i64* %_gep3285
  %_a3287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3287, i32 0, i32 1, i32 4
  store i64 116, i64* %_gep3288
  %_a3290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3290, i32 0, i32 1, i32 5
  store i64 110, i64* %_gep3291
  %_a3293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3293, i32 0, i32 1, i32 6
  store i64 117, i64* %_gep3294
  %_a3296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3296, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3297
  %_a3299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_function3300 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3299)
  call void @print_string(i8* %_function3300)
  %_strptr3303 = bitcast [2 x i8]* @_str3302 to i8*
  call void @print_string(i8* %_strptr3303)
  %_a3305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  call void @bubble_sort({ i64, [0 x i64] }* %_a3305, i64 8)
  %_a3307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_function3308 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3307)
  call void @print_string(i8* %_function3308)
  %_uop3310 = sub i64 0, 1
  ret i64 %_uop3310
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
