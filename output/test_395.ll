; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str3475 = global [2 x i8] c" \00"
@_str3481 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3440 = alloca i64
  %_argv3441 = alloca { i64, [0 x i8*] }*
  %_i3444 = alloca i64
  %_a3468 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3440
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3441
  store i64 0, i64* %_i3444
  %_raw_array3446 = call i64* @oat_alloc_array(i64 10)
  %_array3447 = bitcast i64* %_raw_array3446 to { i64, [0 x i64] }*
  %_gep_lit3448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep_lit3448
  %_gep_lit3450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep_lit3450
  %_gep_lit3452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep_lit3452
  %_gep_lit3454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep_lit3454
  %_gep_lit3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep_lit3456
  %_gep_lit3458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep_lit3458
  %_gep_lit3460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep_lit3460
  %_gep_lit3462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep_lit3462
  %_gep_lit3464 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep_lit3464
  %_gep_lit3466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3447, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep_lit3466
  store { i64, [0 x i64] }* %_array3447, { i64, [0 x i64] }** %_a3468
  %_a3470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3468
  %_call3471 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3470)
  call void @print_string(i8* %_call3471)
  %_a3473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3468
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3473, i64 0, i64 9)
  %_strptr3476 = bitcast [2 x i8]* @_str3475 to i8*
  call void @print_string(i8* %_strptr3476)
  %_a3478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3468
  %_call3479 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3478)
  call void @print_string(i8* %_call3479)
  %_strptr3482 = bitcast [2 x i8]* @_str3481 to i8*
  call void @print_string(i8* %_strptr3482)
  %_i3484 = load i64, i64* %_i3444
  ret i64 %_i3484
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3407 = alloca { i64, [0 x i64] }*
  %_low3408 = alloca i64
  %_high3409 = alloca i64
  %_mid3413 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3407
  store i64 %low, i64* %_low3408
  store i64 %high, i64* %_high3409
  store i64 0, i64* %_mid3413
  %_low3418 = load i64, i64* %_low3408
  %_high3419 = load i64, i64* %_high3409
  %_bop3420 = icmp slt i64 %_low3418, %_high3419
  br i1 %_bop3420, label %_then3415, label %_else3416
_then3415:
  %_low3421 = load i64, i64* %_low3408
  %_high3422 = load i64, i64* %_high3409
  %_bop3423 = add i64 %_low3421, %_high3422
  %_bop3424 = lshr i64 %_bop3423, 1
  store i64 %_bop3424, i64* %_mid3413
  %_mid3428 = load i64, i64* %_mid3413
  %_low3427 = load i64, i64* %_low3408
  %_a3426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3407
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3426, i64 %_low3427, i64 %_mid3428)
  %_high3433 = load i64, i64* %_high3409
  %_mid3431 = load i64, i64* %_mid3413
  %_bop3432 = add i64 %_mid3431, 1
  %_a3430 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3407
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3430, i64 %_bop3432, i64 %_high3433)
  %_mid3438 = load i64, i64* %_mid3413
  %_high3437 = load i64, i64* %_high3409
  %_low3436 = load i64, i64* %_low3408
  %_a3435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3407
  call void @merge({ i64, [0 x i64] }* %_a3435, i64 %_low3436, i64 %_high3437, i64 %_mid3438)
  br label %_join3417
_else3416:
  br label %_join3417
_join3417:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3273 = alloca { i64, [0 x i64] }*
  %_low3274 = alloca i64
  %_high3275 = alloca i64
  %_mid3276 = alloca i64
  %_i3281 = alloca i64
  %_j3283 = alloca i64
  %_k3285 = alloca i64
  %_c3289 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3273
  store i64 %low, i64* %_low3274
  store i64 %high, i64* %_high3275
  store i64 %mid, i64* %_mid3276
  store i64 0, i64* %_i3281
  store i64 0, i64* %_j3283
  store i64 0, i64* %_k3285
  %_raw_array3287 = call i64* @oat_alloc_array(i64 50)
  %_array3288 = bitcast i64* %_raw_array3287 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3288, { i64, [0 x i64] }** %_c3289
  %_low3291 = load i64, i64* %_low3274
  store i64 %_low3291, i64* %_i3281
  %_mid3293 = load i64, i64* %_mid3276
  %_bop3294 = add i64 %_mid3293, 1
  store i64 %_bop3294, i64* %_j3283
  %_low3296 = load i64, i64* %_low3274
  store i64 %_low3296, i64* %_k3285
  br label %_while_cond3298
_while_cond3298:
  %_i3301 = load i64, i64* %_i3281
  %_mid3302 = load i64, i64* %_mid3276
  %_bop3303 = icmp sle i64 %_i3301, %_mid3302
  %_j3304 = load i64, i64* %_j3283
  %_high3305 = load i64, i64* %_high3275
  %_bop3306 = icmp sle i64 %_j3304, %_high3305
  %_bop3307 = and i1 %_bop3303, %_bop3306
  br i1 %_bop3307, label %_while_body3299, label %_while_exit3300
_while_body3299:
  %_a3311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_i3312 = load i64, i64* %_i3281
  %_gep3313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3311, i32 0, i32 1, i64 %_i3312
  %_load3314 = load i64, i64* %_gep3313
  %_a3315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_j3316 = load i64, i64* %_j3283
  %_gep3317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3315, i32 0, i32 1, i64 %_j3316
  %_load3318 = load i64, i64* %_gep3317
  %_bop3319 = icmp slt i64 %_load3314, %_load3318
  br i1 %_bop3319, label %_then3308, label %_else3309
_then3308:
  %_a3320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_i3321 = load i64, i64* %_i3281
  %_gep3322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3320, i32 0, i32 1, i64 %_i3321
  %_load3323 = load i64, i64* %_gep3322
  %_c3324 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3289
  %_k3325 = load i64, i64* %_k3285
  %_gep3326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3324, i32 0, i32 1, i64 %_k3325
  store i64 %_load3323, i64* %_gep3326
  %_k3328 = load i64, i64* %_k3285
  %_bop3329 = add i64 %_k3328, 1
  store i64 %_bop3329, i64* %_k3285
  %_i3331 = load i64, i64* %_i3281
  %_bop3332 = add i64 %_i3331, 1
  store i64 %_bop3332, i64* %_i3281
  br label %_join3310
_else3309:
  %_a3334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_j3335 = load i64, i64* %_j3283
  %_gep3336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3334, i32 0, i32 1, i64 %_j3335
  %_load3337 = load i64, i64* %_gep3336
  %_c3338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3289
  %_k3339 = load i64, i64* %_k3285
  %_gep3340 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3338, i32 0, i32 1, i64 %_k3339
  store i64 %_load3337, i64* %_gep3340
  %_k3342 = load i64, i64* %_k3285
  %_bop3343 = add i64 %_k3342, 1
  store i64 %_bop3343, i64* %_k3285
  %_j3345 = load i64, i64* %_j3283
  %_bop3346 = add i64 %_j3345, 1
  store i64 %_bop3346, i64* %_j3283
  br label %_join3310
_join3310:
  br label %_while_cond3298
_while_exit3300:
  br label %_while_cond3348
_while_cond3348:
  %_i3351 = load i64, i64* %_i3281
  %_mid3352 = load i64, i64* %_mid3276
  %_bop3353 = icmp sle i64 %_i3351, %_mid3352
  br i1 %_bop3353, label %_while_body3349, label %_while_exit3350
_while_body3349:
  %_a3354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_i3355 = load i64, i64* %_i3281
  %_gep3356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3354, i32 0, i32 1, i64 %_i3355
  %_load3357 = load i64, i64* %_gep3356
  %_c3358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3289
  %_k3359 = load i64, i64* %_k3285
  %_gep3360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3358, i32 0, i32 1, i64 %_k3359
  store i64 %_load3357, i64* %_gep3360
  %_k3362 = load i64, i64* %_k3285
  %_bop3363 = add i64 %_k3362, 1
  store i64 %_bop3363, i64* %_k3285
  %_i3365 = load i64, i64* %_i3281
  %_bop3366 = add i64 %_i3365, 1
  store i64 %_bop3366, i64* %_i3281
  br label %_while_cond3348
_while_exit3350:
  br label %_while_cond3368
_while_cond3368:
  %_j3371 = load i64, i64* %_j3283
  %_high3372 = load i64, i64* %_high3275
  %_bop3373 = icmp sle i64 %_j3371, %_high3372
  br i1 %_bop3373, label %_while_body3369, label %_while_exit3370
_while_body3369:
  %_a3374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_j3375 = load i64, i64* %_j3283
  %_gep3376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3374, i32 0, i32 1, i64 %_j3375
  %_load3377 = load i64, i64* %_gep3376
  %_c3378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3289
  %_k3379 = load i64, i64* %_k3285
  %_gep3380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3378, i32 0, i32 1, i64 %_k3379
  store i64 %_load3377, i64* %_gep3380
  %_k3382 = load i64, i64* %_k3285
  %_bop3383 = add i64 %_k3382, 1
  store i64 %_bop3383, i64* %_k3285
  %_j3385 = load i64, i64* %_j3283
  %_bop3386 = add i64 %_j3385, 1
  store i64 %_bop3386, i64* %_j3283
  br label %_while_cond3368
_while_exit3370:
  %_low3388 = load i64, i64* %_low3274
  store i64 %_low3388, i64* %_i3281
  br label %_for_cond3390
_for_cond3390:
  %_i3393 = load i64, i64* %_i3281
  %_k3394 = load i64, i64* %_k3285
  %_bop3395 = icmp slt i64 %_i3393, %_k3394
  br i1 %_bop3395, label %_for_body3391, label %_for_exit3392
_for_body3391:
  %_c3396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3289
  %_i3397 = load i64, i64* %_i3281
  %_gep3398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3396, i32 0, i32 1, i64 %_i3397
  %_load3399 = load i64, i64* %_gep3398
  %_a3400 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3273
  %_i3401 = load i64, i64* %_i3281
  %_gep3402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3400, i32 0, i32 1, i64 %_i3401
  store i64 %_load3399, i64* %_gep3402
  %_i3404 = load i64, i64* %_i3281
  %_bop3405 = add i64 %_i3404, 1
  store i64 %_bop3405, i64* %_i3281
  br label %_for_cond3390
_for_exit3392:
  ret void
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
