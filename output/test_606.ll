; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str3575 = global [2 x i8] c" \00"
@_str3581 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3540 = alloca i64
  %_argv3541 = alloca { i64, [0 x i8*] }*
  %_i3544 = alloca i64
  %_a3568 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3540
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3541
  store i64 0, i64* %_i3544
  %_raw_array3546 = call i64* @oat_alloc_array(i64 10)
  %_array3547 = bitcast i64* %_raw_array3546 to { i64, [0 x i64] }*
  %_gep_lit3548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep_lit3548
  %_gep_lit3550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep_lit3550
  %_gep_lit3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep_lit3552
  %_gep_lit3554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep_lit3554
  %_gep_lit3556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep_lit3556
  %_gep_lit3558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep_lit3558
  %_gep_lit3560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep_lit3560
  %_gep_lit3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep_lit3562
  %_gep_lit3564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep_lit3564
  %_gep_lit3566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3547, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep_lit3566
  store { i64, [0 x i64] }* %_array3547, { i64, [0 x i64] }** %_a3568
  %_a3570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3568
  %_call3571 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3570)
  call void @print_string(i8* %_call3571)
  %_a3573 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3568
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3573, i64 0, i64 9)
  %_strptr3576 = bitcast [2 x i8]* @_str3575 to i8*
  call void @print_string(i8* %_strptr3576)
  %_a3578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3568
  %_call3579 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3578)
  call void @print_string(i8* %_call3579)
  %_strptr3582 = bitcast [2 x i8]* @_str3581 to i8*
  call void @print_string(i8* %_strptr3582)
  %_i3584 = load i64, i64* %_i3544
  ret i64 %_i3584
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3507 = alloca { i64, [0 x i64] }*
  %_low3508 = alloca i64
  %_high3509 = alloca i64
  %_mid3513 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3507
  store i64 %low, i64* %_low3508
  store i64 %high, i64* %_high3509
  store i64 0, i64* %_mid3513
  %_low3518 = load i64, i64* %_low3508
  %_high3519 = load i64, i64* %_high3509
  %_bop3520 = icmp slt i64 %_low3518, %_high3519
  br i1 %_bop3520, label %_then3515, label %_else3516
_then3515:
  %_low3521 = load i64, i64* %_low3508
  %_high3522 = load i64, i64* %_high3509
  %_bop3523 = add i64 %_low3521, %_high3522
  %_bop3524 = lshr i64 %_bop3523, 1
  store i64 %_bop3524, i64* %_mid3513
  %_mid3528 = load i64, i64* %_mid3513
  %_low3527 = load i64, i64* %_low3508
  %_a3526 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3507
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3526, i64 %_low3527, i64 %_mid3528)
  %_high3533 = load i64, i64* %_high3509
  %_mid3531 = load i64, i64* %_mid3513
  %_bop3532 = add i64 %_mid3531, 1
  %_a3530 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3507
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3530, i64 %_bop3532, i64 %_high3533)
  %_mid3538 = load i64, i64* %_mid3513
  %_high3537 = load i64, i64* %_high3509
  %_low3536 = load i64, i64* %_low3508
  %_a3535 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3507
  call void @merge({ i64, [0 x i64] }* %_a3535, i64 %_low3536, i64 %_high3537, i64 %_mid3538)
  br label %_join3517
_else3516:
  br label %_join3517
_join3517:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3373 = alloca { i64, [0 x i64] }*
  %_low3374 = alloca i64
  %_high3375 = alloca i64
  %_mid3376 = alloca i64
  %_i3381 = alloca i64
  %_j3383 = alloca i64
  %_k3385 = alloca i64
  %_c3389 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3373
  store i64 %low, i64* %_low3374
  store i64 %high, i64* %_high3375
  store i64 %mid, i64* %_mid3376
  store i64 0, i64* %_i3381
  store i64 0, i64* %_j3383
  store i64 0, i64* %_k3385
  %_raw_array3387 = call i64* @oat_alloc_array(i64 50)
  %_array3388 = bitcast i64* %_raw_array3387 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3388, { i64, [0 x i64] }** %_c3389
  %_low3391 = load i64, i64* %_low3374
  store i64 %_low3391, i64* %_i3381
  %_mid3393 = load i64, i64* %_mid3376
  %_bop3394 = add i64 %_mid3393, 1
  store i64 %_bop3394, i64* %_j3383
  %_low3396 = load i64, i64* %_low3374
  store i64 %_low3396, i64* %_k3385
  br label %_while_cond3398
_while_cond3398:
  %_i3401 = load i64, i64* %_i3381
  %_mid3402 = load i64, i64* %_mid3376
  %_bop3403 = icmp sle i64 %_i3401, %_mid3402
  %_j3404 = load i64, i64* %_j3383
  %_high3405 = load i64, i64* %_high3375
  %_bop3406 = icmp sle i64 %_j3404, %_high3405
  %_bop3407 = and i1 %_bop3403, %_bop3406
  br i1 %_bop3407, label %_while_body3399, label %_while_exit3400
_while_body3399:
  %_a3411 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3373
  %_i3412 = load i64, i64* %_i3381
  %_gep3413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3411, i32 0, i32 1, i64 %_i3412
  %_load3414 = load i64, i64* %_gep3413
  %_a3415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3373
  %_j3416 = load i64, i64* %_j3383
  %_gep3417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3415, i32 0, i32 1, i64 %_j3416
  %_load3418 = load i64, i64* %_gep3417
  %_bop3419 = icmp slt i64 %_load3414, %_load3418
  br i1 %_bop3419, label %_then3408, label %_else3409
_then3408:
  %_a3420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3373
  %_i3421 = load i64, i64* %_i3381
  %_gep3422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3420, i32 0, i32 1, i64 %_i3421
  %_load3423 = load i64, i64* %_gep3422
  %_c3424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3389
  %_k3425 = load i64, i64* %_k3385
  %_gep3426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3424, i32 0, i32 1, i64 %_k3425
  store i64 %_load3423, i64* %_gep3426
  %_k3428 = load i64, i64* %_k3385
  %_bop3429 = add i64 %_k3428, 1
  store i64 %_bop3429, i64* %_k3385
  %_i3431 = load i64, i64* %_i3381
  %_bop3432 = add i64 %_i3431, 1
  store i64 %_bop3432, i64* %_i3381
  br label %_join3410
_else3409:
  %_a3434 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3373
  %_j3435 = load i64, i64* %_j3383
  %_gep3436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3434, i32 0, i32 1, i64 %_j3435
  %_load3437 = load i64, i64* %_gep3436
  %_c3438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3389
  %_k3439 = load i64, i64* %_k3385
  %_gep3440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3438, i32 0, i32 1, i64 %_k3439
  store i64 %_load3437, i64* %_gep3440
  %_k3442 = load i64, i64* %_k3385
  %_bop3443 = add i64 %_k3442, 1
  store i64 %_bop3443, i64* %_k3385
  %_j3445 = load i64, i64* %_j3383
  %_bop3446 = add i64 %_j3445, 1
  store i64 %_bop3446, i64* %_j3383
  br label %_join3410
_join3410:
  br label %_while_cond3398
_while_exit3400:
  br label %_while_cond3448
_while_cond3448:
  %_i3451 = load i64, i64* %_i3381
  %_mid3452 = load i64, i64* %_mid3376
  %_bop3453 = icmp sle i64 %_i3451, %_mid3452
  br i1 %_bop3453, label %_while_body3449, label %_while_exit3450
_while_body3449:
  %_a3454 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3373
  %_i3455 = load i64, i64* %_i3381
  %_gep3456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3454, i32 0, i32 1, i64 %_i3455
  %_load3457 = load i64, i64* %_gep3456
  %_c3458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3389
  %_k3459 = load i64, i64* %_k3385
  %_gep3460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3458, i32 0, i32 1, i64 %_k3459
  store i64 %_load3457, i64* %_gep3460
  %_k3462 = load i64, i64* %_k3385
  %_bop3463 = add i64 %_k3462, 1
  store i64 %_bop3463, i64* %_k3385
  %_i3465 = load i64, i64* %_i3381
  %_bop3466 = add i64 %_i3465, 1
  store i64 %_bop3466, i64* %_i3381
  br label %_while_cond3448
_while_exit3450:
  br label %_while_cond3468
_while_cond3468:
  %_j3471 = load i64, i64* %_j3383
  %_high3472 = load i64, i64* %_high3375
  %_bop3473 = icmp sle i64 %_j3471, %_high3472
  br i1 %_bop3473, label %_while_body3469, label %_while_exit3470
_while_body3469:
  %_a3474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3373
  %_j3475 = load i64, i64* %_j3383
  %_gep3476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3474, i32 0, i32 1, i64 %_j3475
  %_load3477 = load i64, i64* %_gep3476
  %_c3478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3389
  %_k3479 = load i64, i64* %_k3385
  %_gep3480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3478, i32 0, i32 1, i64 %_k3479
  store i64 %_load3477, i64* %_gep3480
  %_k3482 = load i64, i64* %_k3385
  %_bop3483 = add i64 %_k3482, 1
  store i64 %_bop3483, i64* %_k3385
  %_j3485 = load i64, i64* %_j3383
  %_bop3486 = add i64 %_j3485, 1
  store i64 %_bop3486, i64* %_j3383
  br label %_while_cond3468
_while_exit3470:
  %_low3488 = load i64, i64* %_low3374
  store i64 %_low3488, i64* %_i3381
  br label %_for_cond3490
_for_cond3490:
  %_i3493 = load i64, i64* %_i3381
  %_k3494 = load i64, i64* %_k3385
  %_bop3495 = icmp slt i64 %_i3493, %_k3494
  br i1 %_bop3495, label %_for_body3491, label %_for_exit3492
_for_body3491:
  %_c3496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3389
  %_i3497 = load i64, i64* %_i3381
  %_gep3498 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3496, i32 0, i32 1, i64 %_i3497
  %_load3499 = load i64, i64* %_gep3498
  %_a3500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3373
  %_i3501 = load i64, i64* %_i3381
  %_gep3502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3500, i32 0, i32 1, i64 %_i3501
  store i64 %_load3499, i64* %_gep3502
  %_i3504 = load i64, i64* %_i3381
  %_bop3505 = add i64 %_i3504, 1
  store i64 %_bop3505, i64* %_i3381
  br label %_for_cond3490
_for_exit3492:
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
