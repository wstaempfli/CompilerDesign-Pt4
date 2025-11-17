; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str3787 = global [2 x i8] c" \00"
@_str3793 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3752 = alloca i64
  %_argv3754 = alloca { i64, [0 x i8*] }*
  %_a3778 = alloca { i64, [0 x i64] }*
  %_i3780 = alloca i64
  store i64 %argc, i64* %_argc3752
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3754
  %_raw_array3756 = call i64* @oat_alloc_array(i64 10)
  %_array3757 = bitcast i64* %_raw_array3756 to { i64, [0 x i64] }*
  %_gep_lit3758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep_lit3758
  %_gep_lit3760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep_lit3760
  %_gep_lit3762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep_lit3762
  %_gep_lit3764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep_lit3764
  %_gep_lit3766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep_lit3766
  %_gep_lit3768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep_lit3768
  %_gep_lit3770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep_lit3770
  %_gep_lit3772 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep_lit3772
  %_gep_lit3774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep_lit3774
  %_gep_lit3776 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3757, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep_lit3776
  store { i64, [0 x i64] }* %_array3757, { i64, [0 x i64] }** %_a3778
  store i64 0, i64* %_i3780
  %_load3782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3778
  %_call3783 = call i8* @string_of_array({ i64, [0 x i64] }* %_load3782)
  call void @print_string(i8* %_call3783)
  %_load3785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3778
  call void @oat_mergesort({ i64, [0 x i64] }* %_load3785, i64 0, i64 9)
  %_strptr3788 = bitcast [2 x i8]* @_str3787 to i8*
  call void @print_string(i8* %_strptr3788)
  %_load3790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3778
  %_call3791 = call i8* @string_of_array({ i64, [0 x i64] }* %_load3790)
  call void @print_string(i8* %_call3791)
  %_strptr3794 = bitcast [2 x i8]* @_str3793 to i8*
  call void @print_string(i8* %_strptr3794)
  %_load3796 = load i64, i64* %_i3780
  ret i64 %_load3796
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3719 = alloca { i64, [0 x i64] }*
  %_low3721 = alloca i64
  %_high3723 = alloca i64
  %_mid3725 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3719
  store i64 %low, i64* %_low3721
  store i64 %high, i64* %_high3723
  store i64 0, i64* %_mid3725
  %_load3730 = load i64, i64* %_low3721
  %_load3731 = load i64, i64* %_high3723
  %_bop3732 = icmp slt i64 %_load3730, %_load3731
  br i1 %_bop3732, label %_then3727, label %_else3728
_then3727:
  %_load3733 = load i64, i64* %_low3721
  %_load3734 = load i64, i64* %_high3723
  %_bop3735 = add i64 %_load3733, %_load3734
  %_bop3736 = lshr i64 %_bop3735, 1
  store i64 %_bop3736, i64* %_mid3725
  %_load3740 = load i64, i64* %_mid3725
  %_load3739 = load i64, i64* %_low3721
  %_load3738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3719
  call void @oat_mergesort({ i64, [0 x i64] }* %_load3738, i64 %_load3739, i64 %_load3740)
  %_load3745 = load i64, i64* %_high3723
  %_load3743 = load i64, i64* %_mid3725
  %_bop3744 = add i64 %_load3743, 1
  %_load3742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3719
  call void @oat_mergesort({ i64, [0 x i64] }* %_load3742, i64 %_bop3744, i64 %_load3745)
  %_load3750 = load i64, i64* %_mid3725
  %_load3749 = load i64, i64* %_high3723
  %_load3748 = load i64, i64* %_low3721
  %_load3747 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3719
  call void @merge({ i64, [0 x i64] }* %_load3747, i64 %_load3748, i64 %_load3749, i64 %_load3750)
  br label %_join3729
_else3728:
  br label %_join3729
_join3729:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3585 = alloca { i64, [0 x i64] }*
  %_low3587 = alloca i64
  %_high3589 = alloca i64
  %_mid3591 = alloca i64
  %_i3593 = alloca i64
  %_j3595 = alloca i64
  %_k3597 = alloca i64
  %_c3601 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3585
  store i64 %low, i64* %_low3587
  store i64 %high, i64* %_high3589
  store i64 %mid, i64* %_mid3591
  store i64 0, i64* %_i3593
  store i64 0, i64* %_j3595
  store i64 0, i64* %_k3597
  %_raw_array3599 = call i64* @oat_alloc_array(i64 50)
  %_array3600 = bitcast i64* %_raw_array3599 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3600, { i64, [0 x i64] }** %_c3601
  %_load3603 = load i64, i64* %_low3587
  store i64 %_load3603, i64* %_i3593
  %_load3605 = load i64, i64* %_mid3591
  %_bop3606 = add i64 %_load3605, 1
  store i64 %_bop3606, i64* %_j3595
  %_load3608 = load i64, i64* %_low3587
  store i64 %_load3608, i64* %_k3597
  br label %_while_cond3610
_while_cond3610:
  %_load3613 = load i64, i64* %_i3593
  %_load3614 = load i64, i64* %_mid3591
  %_bop3615 = icmp sle i64 %_load3613, %_load3614
  %_load3616 = load i64, i64* %_j3595
  %_load3617 = load i64, i64* %_high3589
  %_bop3618 = icmp sle i64 %_load3616, %_load3617
  %_bop3619 = and i1 %_bop3615, %_bop3618
  br i1 %_bop3619, label %_while_body3611, label %_while_exit3612
_while_body3611:
  %_load3623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_load3624 = load i64, i64* %_i3593
  %_gep3625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3623, i32 0, i32 1, i64 %_load3624
  %_load3626 = load i64, i64* %_gep3625
  %_load3627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_load3628 = load i64, i64* %_j3595
  %_gep3629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3627, i32 0, i32 1, i64 %_load3628
  %_load3630 = load i64, i64* %_gep3629
  %_bop3631 = icmp slt i64 %_load3626, %_load3630
  br i1 %_bop3631, label %_then3620, label %_else3621
_then3620:
  %_load3632 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_load3633 = load i64, i64* %_i3593
  %_gep3634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3632, i32 0, i32 1, i64 %_load3633
  %_load3635 = load i64, i64* %_gep3634
  %_load3636 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_load3637 = load i64, i64* %_k3597
  %_gep3638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3636, i32 0, i32 1, i64 %_load3637
  store i64 %_load3635, i64* %_gep3638
  %_load3640 = load i64, i64* %_k3597
  %_bop3641 = add i64 %_load3640, 1
  store i64 %_bop3641, i64* %_k3597
  %_load3643 = load i64, i64* %_i3593
  %_bop3644 = add i64 %_load3643, 1
  store i64 %_bop3644, i64* %_i3593
  br label %_join3622
_else3621:
  %_load3646 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_load3647 = load i64, i64* %_j3595
  %_gep3648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3646, i32 0, i32 1, i64 %_load3647
  %_load3649 = load i64, i64* %_gep3648
  %_load3650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_load3651 = load i64, i64* %_k3597
  %_gep3652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3650, i32 0, i32 1, i64 %_load3651
  store i64 %_load3649, i64* %_gep3652
  %_load3654 = load i64, i64* %_k3597
  %_bop3655 = add i64 %_load3654, 1
  store i64 %_bop3655, i64* %_k3597
  %_load3657 = load i64, i64* %_j3595
  %_bop3658 = add i64 %_load3657, 1
  store i64 %_bop3658, i64* %_j3595
  br label %_join3622
_join3622:
  br label %_while_cond3610
_while_exit3612:
  br label %_while_cond3660
_while_cond3660:
  %_load3663 = load i64, i64* %_i3593
  %_load3664 = load i64, i64* %_mid3591
  %_bop3665 = icmp sle i64 %_load3663, %_load3664
  br i1 %_bop3665, label %_while_body3661, label %_while_exit3662
_while_body3661:
  %_load3666 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_load3667 = load i64, i64* %_i3593
  %_gep3668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3666, i32 0, i32 1, i64 %_load3667
  %_load3669 = load i64, i64* %_gep3668
  %_load3670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_load3671 = load i64, i64* %_k3597
  %_gep3672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3670, i32 0, i32 1, i64 %_load3671
  store i64 %_load3669, i64* %_gep3672
  %_load3674 = load i64, i64* %_k3597
  %_bop3675 = add i64 %_load3674, 1
  store i64 %_bop3675, i64* %_k3597
  %_load3677 = load i64, i64* %_i3593
  %_bop3678 = add i64 %_load3677, 1
  store i64 %_bop3678, i64* %_i3593
  br label %_while_cond3660
_while_exit3662:
  br label %_while_cond3680
_while_cond3680:
  %_load3683 = load i64, i64* %_j3595
  %_load3684 = load i64, i64* %_high3589
  %_bop3685 = icmp sle i64 %_load3683, %_load3684
  br i1 %_bop3685, label %_while_body3681, label %_while_exit3682
_while_body3681:
  %_load3686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_load3687 = load i64, i64* %_j3595
  %_gep3688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3686, i32 0, i32 1, i64 %_load3687
  %_load3689 = load i64, i64* %_gep3688
  %_load3690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_load3691 = load i64, i64* %_k3597
  %_gep3692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3690, i32 0, i32 1, i64 %_load3691
  store i64 %_load3689, i64* %_gep3692
  %_load3694 = load i64, i64* %_k3597
  %_bop3695 = add i64 %_load3694, 1
  store i64 %_bop3695, i64* %_k3597
  %_load3697 = load i64, i64* %_j3595
  %_bop3698 = add i64 %_load3697, 1
  store i64 %_bop3698, i64* %_j3595
  br label %_while_cond3680
_while_exit3682:
  %_load3700 = load i64, i64* %_low3587
  store i64 %_load3700, i64* %_i3593
  br label %_for_cond3702
_for_cond3702:
  %_load3705 = load i64, i64* %_i3593
  %_load3706 = load i64, i64* %_k3597
  %_bop3707 = icmp slt i64 %_load3705, %_load3706
  br i1 %_bop3707, label %_for_body3703, label %_for_exit3704
_for_body3703:
  %_load3708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_load3709 = load i64, i64* %_i3593
  %_gep3710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3708, i32 0, i32 1, i64 %_load3709
  %_load3711 = load i64, i64* %_gep3710
  %_load3712 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_load3713 = load i64, i64* %_i3593
  %_gep3714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3712, i32 0, i32 1, i64 %_load3713
  store i64 %_load3711, i64* %_gep3714
  %_load3716 = load i64, i64* %_i3593
  %_bop3717 = add i64 %_load3716, 1
  store i64 %_bop3717, i64* %_i3593
  br label %_for_cond3702
_for_exit3704:
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
