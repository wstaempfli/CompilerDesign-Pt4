; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str3302 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers3311 = alloca { i64, [0 x i64] }*
  %_array_size3313 = alloca i64
  %_temp3315 = alloca i64
  %_i3319 = alloca i64
  %_j3326 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers3311
  store i64 %array_size, i64* %_array_size3313
  store i64 0, i64* %_temp3315
  %_load3317 = load i64, i64* %_array_size3313
  %_bop3318 = sub i64 %_load3317, 1
  store i64 %_bop3318, i64* %_i3319
  br label %_for_cond3321
_for_cond3321:
  %_load3324 = load i64, i64* %_i3319
  %_bop3325 = icmp sgt i64 %_load3324, 0
  br i1 %_bop3325, label %_for_body3322, label %_for_exit3323
_for_body3322:
  store i64 1, i64* %_j3326
  br label %_for_cond3328
_for_cond3328:
  %_load3331 = load i64, i64* %_j3326
  %_load3332 = load i64, i64* %_i3319
  %_bop3333 = icmp sle i64 %_load3331, %_load3332
  br i1 %_bop3333, label %_for_body3329, label %_for_exit3330
_for_body3329:
  %_load3337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_load3338 = load i64, i64* %_j3326
  %_bop3339 = sub i64 %_load3338, 1
  %_gep3340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3337, i32 0, i32 1, i64 %_bop3339
  %_load3341 = load i64, i64* %_gep3340
  %_load3342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_load3343 = load i64, i64* %_i3319
  %_gep3344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3342, i32 0, i32 1, i64 %_load3343
  %_load3345 = load i64, i64* %_gep3344
  %_bop3346 = icmp sgt i64 %_load3341, %_load3345
  br i1 %_bop3346, label %_then3334, label %_else3335
_then3334:
  %_load3347 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_load3348 = load i64, i64* %_j3326
  %_bop3349 = sub i64 %_load3348, 1
  %_gep3350 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3347, i32 0, i32 1, i64 %_bop3349
  %_load3351 = load i64, i64* %_gep3350
  store i64 %_load3351, i64* %_temp3315
  %_load3353 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_load3354 = load i64, i64* %_i3319
  %_gep3355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3353, i32 0, i32 1, i64 %_load3354
  %_load3356 = load i64, i64* %_gep3355
  %_load3357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_load3358 = load i64, i64* %_j3326
  %_bop3359 = sub i64 %_load3358, 1
  %_gep3360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3357, i32 0, i32 1, i64 %_bop3359
  store i64 %_load3356, i64* %_gep3360
  %_load3362 = load i64, i64* %_temp3315
  %_load3363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3311
  %_load3364 = load i64, i64* %_i3319
  %_gep3365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3363, i32 0, i32 1, i64 %_load3364
  store i64 %_load3362, i64* %_gep3365
  br label %_join3336
_else3335:
  br label %_join3336
_join3336:
  %_load3367 = load i64, i64* %_j3326
  %_bop3368 = add i64 %_load3367, 1
  store i64 %_bop3368, i64* %_j3326
  br label %_for_cond3328
_for_exit3330:
  %_load3370 = load i64, i64* %_i3319
  %_bop3371 = sub i64 %_load3370, 1
  store i64 %_bop3371, i64* %_i3319
  br label %_for_cond3321
_for_exit3323:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3267 = alloca i64
  %_argv3269 = alloca { i64, [0 x i8*] }*
  %_a3273 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3267
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3269
  %_raw_array3271 = call i64* @oat_alloc_array(i64 8)
  %_array3272 = bitcast i64* %_raw_array3271 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3272, { i64, [0 x i64] }** %_a3273
  %_load3275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3275, i32 0, i32 1, i32 0
  store i64 121, i64* %_gep3276
  %_load3278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3278, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3279
  %_load3281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3281, i32 0, i32 1, i32 2
  store i64 120, i64* %_gep3282
  %_load3284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3284, i32 0, i32 1, i32 3
  store i64 111, i64* %_gep3285
  %_load3287 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3287, i32 0, i32 1, i32 4
  store i64 116, i64* %_gep3288
  %_load3290 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3290, i32 0, i32 1, i32 5
  store i64 110, i64* %_gep3291
  %_load3293 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3293, i32 0, i32 1, i32 6
  store i64 117, i64* %_gep3294
  %_load3296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_gep3297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3296, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3297
  %_load3299 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_call3300 = call i8* @string_of_array({ i64, [0 x i64] }* %_load3299)
  call void @print_string(i8* %_call3300)
  %_strptr3303 = bitcast [2 x i8]* @_str3302 to i8*
  call void @print_string(i8* %_strptr3303)
  %_load3305 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  call void @bubble_sort({ i64, [0 x i64] }* %_load3305, i64 8)
  %_load3307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_call3308 = call i8* @string_of_array({ i64, [0 x i64] }* %_load3307)
  call void @print_string(i8* %_call3308)
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
