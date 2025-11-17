; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str3687 = global [2 x i8] c" \00"
@_str3693 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3652 = alloca i64
  %_argv3653 = alloca { i64, [0 x i8*] }*
  %_a3678 = alloca { i64, [0 x i64] }*
  %_i3680 = alloca i64
  store i64 %argc, i64* %_argc3652
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3653
  %_raw_array3656 = call i64* @oat_alloc_array(i64 10)
  %_array3657 = bitcast i64* %_raw_array3656 to { i64, [0 x i64] }*
  %_gep_lit3658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep_lit3658
  %_gep_lit3660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep_lit3660
  %_gep_lit3662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep_lit3662
  %_gep_lit3664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep_lit3664
  %_gep_lit3666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep_lit3666
  %_gep_lit3668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep_lit3668
  %_gep_lit3670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep_lit3670
  %_gep_lit3672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep_lit3672
  %_gep_lit3674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep_lit3674
  %_gep_lit3676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3657, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep_lit3676
  store { i64, [0 x i64] }* %_array3657, { i64, [0 x i64] }** %_a3678
  store i64 0, i64* %_i3680
  %_a3682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3678
  %_call3683 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3682)
  call void @print_string(i8* %_call3683)
  %_a3685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3678
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3685, i64 0, i64 9)
  %_strptr3688 = bitcast [2 x i8]* @_str3687 to i8*
  call void @print_string(i8* %_strptr3688)
  %_a3690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3678
  %_call3691 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3690)
  call void @print_string(i8* %_call3691)
  %_strptr3694 = bitcast [2 x i8]* @_str3693 to i8*
  call void @print_string(i8* %_strptr3694)
  %_i3696 = load i64, i64* %_i3680
  ret i64 %_i3696
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3619 = alloca { i64, [0 x i64] }*
  %_low3620 = alloca i64
  %_high3621 = alloca i64
  %_mid3625 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3619
  store i64 %low, i64* %_low3620
  store i64 %high, i64* %_high3621
  store i64 0, i64* %_mid3625
  %_low3630 = load i64, i64* %_low3620
  %_high3631 = load i64, i64* %_high3621
  %_bop3632 = icmp slt i64 %_low3630, %_high3631
  br i1 %_bop3632, label %_then3627, label %_else3628
_then3627:
  %_low3633 = load i64, i64* %_low3620
  %_high3634 = load i64, i64* %_high3621
  %_bop3635 = add i64 %_low3633, %_high3634
  %_bop3636 = lshr i64 %_bop3635, 1
  store i64 %_bop3636, i64* %_mid3625
  %_mid3640 = load i64, i64* %_mid3625
  %_low3639 = load i64, i64* %_low3620
  %_a3638 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3619
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3638, i64 %_low3639, i64 %_mid3640)
  %_high3645 = load i64, i64* %_high3621
  %_mid3643 = load i64, i64* %_mid3625
  %_bop3644 = add i64 %_mid3643, 1
  %_a3642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3619
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3642, i64 %_bop3644, i64 %_high3645)
  %_mid3650 = load i64, i64* %_mid3625
  %_high3649 = load i64, i64* %_high3621
  %_low3648 = load i64, i64* %_low3620
  %_a3647 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3619
  call void @merge({ i64, [0 x i64] }* %_a3647, i64 %_low3648, i64 %_high3649, i64 %_mid3650)
  br label %_join3629
_else3628:
  br label %_join3629
_join3629:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3485 = alloca { i64, [0 x i64] }*
  %_low3486 = alloca i64
  %_high3487 = alloca i64
  %_mid3488 = alloca i64
  %_i3493 = alloca i64
  %_j3495 = alloca i64
  %_k3497 = alloca i64
  %_c3501 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3485
  store i64 %low, i64* %_low3486
  store i64 %high, i64* %_high3487
  store i64 %mid, i64* %_mid3488
  store i64 0, i64* %_i3493
  store i64 0, i64* %_j3495
  store i64 0, i64* %_k3497
  %_raw_array3499 = call i64* @oat_alloc_array(i64 50)
  %_array3500 = bitcast i64* %_raw_array3499 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3500, { i64, [0 x i64] }** %_c3501
  %_low3503 = load i64, i64* %_low3486
  store i64 %_low3503, i64* %_i3493
  %_mid3505 = load i64, i64* %_mid3488
  %_bop3506 = add i64 %_mid3505, 1
  store i64 %_bop3506, i64* %_j3495
  %_low3508 = load i64, i64* %_low3486
  store i64 %_low3508, i64* %_k3497
  br label %_while_cond3510
_while_cond3510:
  %_i3513 = load i64, i64* %_i3493
  %_mid3514 = load i64, i64* %_mid3488
  %_bop3515 = icmp sle i64 %_i3513, %_mid3514
  %_j3516 = load i64, i64* %_j3495
  %_high3517 = load i64, i64* %_high3487
  %_bop3518 = icmp sle i64 %_j3516, %_high3517
  %_bop3519 = and i1 %_bop3515, %_bop3518
  br i1 %_bop3519, label %_while_body3511, label %_while_exit3512
_while_body3511:
  %_a3523 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_i3524 = load i64, i64* %_i3493
  %_gep3525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3523, i32 0, i32 1, i64 %_i3524
  %_load3526 = load i64, i64* %_gep3525
  %_a3527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_j3528 = load i64, i64* %_j3495
  %_gep3529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3527, i32 0, i32 1, i64 %_j3528
  %_load3530 = load i64, i64* %_gep3529
  %_bop3531 = icmp slt i64 %_load3526, %_load3530
  br i1 %_bop3531, label %_then3520, label %_else3521
_then3520:
  %_a3532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_i3533 = load i64, i64* %_i3493
  %_gep3534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3532, i32 0, i32 1, i64 %_i3533
  %_load3535 = load i64, i64* %_gep3534
  %_c3536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3501
  %_k3537 = load i64, i64* %_k3497
  %_gep3538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3536, i32 0, i32 1, i64 %_k3537
  store i64 %_load3535, i64* %_gep3538
  %_k3540 = load i64, i64* %_k3497
  %_bop3541 = add i64 %_k3540, 1
  store i64 %_bop3541, i64* %_k3497
  %_i3543 = load i64, i64* %_i3493
  %_bop3544 = add i64 %_i3543, 1
  store i64 %_bop3544, i64* %_i3493
  br label %_join3522
_else3521:
  %_a3546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_j3547 = load i64, i64* %_j3495
  %_gep3548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3546, i32 0, i32 1, i64 %_j3547
  %_load3549 = load i64, i64* %_gep3548
  %_c3550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3501
  %_k3551 = load i64, i64* %_k3497
  %_gep3552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3550, i32 0, i32 1, i64 %_k3551
  store i64 %_load3549, i64* %_gep3552
  %_k3554 = load i64, i64* %_k3497
  %_bop3555 = add i64 %_k3554, 1
  store i64 %_bop3555, i64* %_k3497
  %_j3557 = load i64, i64* %_j3495
  %_bop3558 = add i64 %_j3557, 1
  store i64 %_bop3558, i64* %_j3495
  br label %_join3522
_join3522:
  br label %_while_cond3510
_while_exit3512:
  br label %_while_cond3560
_while_cond3560:
  %_i3563 = load i64, i64* %_i3493
  %_mid3564 = load i64, i64* %_mid3488
  %_bop3565 = icmp sle i64 %_i3563, %_mid3564
  br i1 %_bop3565, label %_while_body3561, label %_while_exit3562
_while_body3561:
  %_a3566 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_i3567 = load i64, i64* %_i3493
  %_gep3568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3566, i32 0, i32 1, i64 %_i3567
  %_load3569 = load i64, i64* %_gep3568
  %_c3570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3501
  %_k3571 = load i64, i64* %_k3497
  %_gep3572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3570, i32 0, i32 1, i64 %_k3571
  store i64 %_load3569, i64* %_gep3572
  %_k3574 = load i64, i64* %_k3497
  %_bop3575 = add i64 %_k3574, 1
  store i64 %_bop3575, i64* %_k3497
  %_i3577 = load i64, i64* %_i3493
  %_bop3578 = add i64 %_i3577, 1
  store i64 %_bop3578, i64* %_i3493
  br label %_while_cond3560
_while_exit3562:
  br label %_while_cond3580
_while_cond3580:
  %_j3583 = load i64, i64* %_j3495
  %_high3584 = load i64, i64* %_high3487
  %_bop3585 = icmp sle i64 %_j3583, %_high3584
  br i1 %_bop3585, label %_while_body3581, label %_while_exit3582
_while_body3581:
  %_a3586 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_j3587 = load i64, i64* %_j3495
  %_gep3588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3586, i32 0, i32 1, i64 %_j3587
  %_load3589 = load i64, i64* %_gep3588
  %_c3590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3501
  %_k3591 = load i64, i64* %_k3497
  %_gep3592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3590, i32 0, i32 1, i64 %_k3591
  store i64 %_load3589, i64* %_gep3592
  %_k3594 = load i64, i64* %_k3497
  %_bop3595 = add i64 %_k3594, 1
  store i64 %_bop3595, i64* %_k3497
  %_j3597 = load i64, i64* %_j3495
  %_bop3598 = add i64 %_j3597, 1
  store i64 %_bop3598, i64* %_j3495
  br label %_while_cond3580
_while_exit3582:
  %_low3600 = load i64, i64* %_low3486
  store i64 %_low3600, i64* %_i3493
  br label %_for_cond3602
_for_cond3602:
  %_i3605 = load i64, i64* %_i3493
  %_k3606 = load i64, i64* %_k3497
  %_bop3607 = icmp slt i64 %_i3605, %_k3606
  br i1 %_bop3607, label %_for_body3603, label %_for_exit3604
_for_body3603:
  %_c3608 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3501
  %_i3609 = load i64, i64* %_i3493
  %_gep3610 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3608, i32 0, i32 1, i64 %_i3609
  %_load3611 = load i64, i64* %_gep3610
  %_a3612 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_i3613 = load i64, i64* %_i3493
  %_gep3614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3612, i32 0, i32 1, i64 %_i3613
  store i64 %_load3611, i64* %_gep3614
  %_i3616 = load i64, i64* %_i3493
  %_bop3617 = add i64 %_i3616, 1
  store i64 %_bop3617, i64* %_i3493
  br label %_for_cond3602
_for_exit3604:
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
