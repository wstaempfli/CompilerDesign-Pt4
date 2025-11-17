; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str3787 = global [2 x i8] c" \00"
@_str3793 = global [2 x i8] c" \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3752 = alloca i64
  %_argv3753 = alloca { i64, [0 x i8*] }*
  %_a3778 = alloca { i64, [0 x i64] }*
  %_i3780 = alloca i64
  store i64 %argc, i64* %_argc3752
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3753
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
  %_a3782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3778
  %_funcall3783 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3782)
  call void @print_string(i8* %_funcall3783)
  %_a3785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3778
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3785, i64 0, i64 9)
  %_str3788 = bitcast [2 x i8]* @_str3787 to i8*
  call void @print_string(i8* %_str3788)
  %_a3790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3778
  %_funcall3791 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3790)
  call void @print_string(i8* %_funcall3791)
  %_str3794 = bitcast [2 x i8]* @_str3793 to i8*
  call void @print_string(i8* %_str3794)
  %_i3796 = load i64, i64* %_i3780
  ret i64 %_i3796
}

define void @oat_mergesort({ i64, [0 x i64] }* %a, i64 %low, i64 %high) {
  %_a3719 = alloca { i64, [0 x i64] }*
  %_low3720 = alloca i64
  %_high3721 = alloca i64
  %_mid3725 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3719
  store i64 %low, i64* %_low3720
  store i64 %high, i64* %_high3721
  store i64 0, i64* %_mid3725
  %_low3730 = load i64, i64* %_low3720
  %_high3731 = load i64, i64* %_high3721
  %_bop3732 = icmp slt i64 %_low3730, %_high3731
  br i1 %_bop3732, label %_then3727, label %_else3728
_then3727:
  %_low3733 = load i64, i64* %_low3720
  %_high3734 = load i64, i64* %_high3721
  %_bop3735 = add i64 %_low3733, %_high3734
  %_bop3736 = lshr i64 %_bop3735, 1
  store i64 %_bop3736, i64* %_mid3725
  %_mid3740 = load i64, i64* %_mid3725
  %_low3739 = load i64, i64* %_low3720
  %_a3738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3719
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3738, i64 %_low3739, i64 %_mid3740)
  %_high3745 = load i64, i64* %_high3721
  %_mid3743 = load i64, i64* %_mid3725
  %_bop3744 = add i64 %_mid3743, 1
  %_a3742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3719
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3742, i64 %_bop3744, i64 %_high3745)
  %_mid3750 = load i64, i64* %_mid3725
  %_high3749 = load i64, i64* %_high3721
  %_low3748 = load i64, i64* %_low3720
  %_a3747 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3719
  call void @merge({ i64, [0 x i64] }* %_a3747, i64 %_low3748, i64 %_high3749, i64 %_mid3750)
  br label %_join3729
_else3728:
  br label %_join3729
_join3729:
  ret void
}

define void @merge({ i64, [0 x i64] }* %a, i64 %low, i64 %high, i64 %mid) {
  %_a3585 = alloca { i64, [0 x i64] }*
  %_low3586 = alloca i64
  %_high3587 = alloca i64
  %_mid3588 = alloca i64
  %_i3593 = alloca i64
  %_j3595 = alloca i64
  %_k3597 = alloca i64
  %_c3601 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3585
  store i64 %low, i64* %_low3586
  store i64 %high, i64* %_high3587
  store i64 %mid, i64* %_mid3588
  store i64 0, i64* %_i3593
  store i64 0, i64* %_j3595
  store i64 0, i64* %_k3597
  %_raw_array3599 = call i64* @oat_alloc_array(i64 50)
  %_array3600 = bitcast i64* %_raw_array3599 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3600, { i64, [0 x i64] }** %_c3601
  %_low3603 = load i64, i64* %_low3586
  store i64 %_low3603, i64* %_i3593
  %_mid3605 = load i64, i64* %_mid3588
  %_bop3606 = add i64 %_mid3605, 1
  store i64 %_bop3606, i64* %_j3595
  %_low3608 = load i64, i64* %_low3586
  store i64 %_low3608, i64* %_k3597
  br label %_while_cond3610
_while_cond3610:
  %_i3613 = load i64, i64* %_i3593
  %_mid3614 = load i64, i64* %_mid3588
  %_bop3615 = icmp sle i64 %_i3613, %_mid3614
  %_j3616 = load i64, i64* %_j3595
  %_high3617 = load i64, i64* %_high3587
  %_bop3618 = icmp sle i64 %_j3616, %_high3617
  %_bop3619 = and i1 %_bop3615, %_bop3618
  br i1 %_bop3619, label %_while_body3611, label %_while_exit3612
_while_body3611:
  %_a3623 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_i3624 = load i64, i64* %_i3593
  %_3625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3623, i32 0, i32 1, i64 %_i3624
  %_3626 = load i64, i64* %_3625
  %_a3627 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_j3628 = load i64, i64* %_j3595
  %_3629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3627, i32 0, i32 1, i64 %_j3628
  %_3630 = load i64, i64* %_3629
  %_bop3631 = icmp slt i64 %_3626, %_3630
  br i1 %_bop3631, label %_then3620, label %_else3621
_then3620:
  %_a3632 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_i3633 = load i64, i64* %_i3593
  %_3634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3632, i32 0, i32 1, i64 %_i3633
  %_3635 = load i64, i64* %_3634
  %_c3636 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_k3637 = load i64, i64* %_k3597
  %_gep3638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3636, i32 0, i32 1, i64 %_k3637
  store i64 %_3635, i64* %_gep3638
  %_k3640 = load i64, i64* %_k3597
  %_bop3641 = add i64 %_k3640, 1
  store i64 %_bop3641, i64* %_k3597
  %_i3643 = load i64, i64* %_i3593
  %_bop3644 = add i64 %_i3643, 1
  store i64 %_bop3644, i64* %_i3593
  br label %_join3622
_else3621:
  %_a3646 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_j3647 = load i64, i64* %_j3595
  %_3648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3646, i32 0, i32 1, i64 %_j3647
  %_3649 = load i64, i64* %_3648
  %_c3650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_k3651 = load i64, i64* %_k3597
  %_gep3652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3650, i32 0, i32 1, i64 %_k3651
  store i64 %_3649, i64* %_gep3652
  %_k3654 = load i64, i64* %_k3597
  %_bop3655 = add i64 %_k3654, 1
  store i64 %_bop3655, i64* %_k3597
  %_j3657 = load i64, i64* %_j3595
  %_bop3658 = add i64 %_j3657, 1
  store i64 %_bop3658, i64* %_j3595
  br label %_join3622
_join3622:
  br label %_while_cond3610
_while_exit3612:
  br label %_while_cond3660
_while_cond3660:
  %_i3663 = load i64, i64* %_i3593
  %_mid3664 = load i64, i64* %_mid3588
  %_bop3665 = icmp sle i64 %_i3663, %_mid3664
  br i1 %_bop3665, label %_while_body3661, label %_while_exit3662
_while_body3661:
  %_a3666 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_i3667 = load i64, i64* %_i3593
  %_3668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3666, i32 0, i32 1, i64 %_i3667
  %_3669 = load i64, i64* %_3668
  %_c3670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_k3671 = load i64, i64* %_k3597
  %_gep3672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3670, i32 0, i32 1, i64 %_k3671
  store i64 %_3669, i64* %_gep3672
  %_k3674 = load i64, i64* %_k3597
  %_bop3675 = add i64 %_k3674, 1
  store i64 %_bop3675, i64* %_k3597
  %_i3677 = load i64, i64* %_i3593
  %_bop3678 = add i64 %_i3677, 1
  store i64 %_bop3678, i64* %_i3593
  br label %_while_cond3660
_while_exit3662:
  br label %_while_cond3680
_while_cond3680:
  %_j3683 = load i64, i64* %_j3595
  %_high3684 = load i64, i64* %_high3587
  %_bop3685 = icmp sle i64 %_j3683, %_high3684
  br i1 %_bop3685, label %_while_body3681, label %_while_exit3682
_while_body3681:
  %_a3686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_j3687 = load i64, i64* %_j3595
  %_3688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3686, i32 0, i32 1, i64 %_j3687
  %_3689 = load i64, i64* %_3688
  %_c3690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_k3691 = load i64, i64* %_k3597
  %_gep3692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3690, i32 0, i32 1, i64 %_k3691
  store i64 %_3689, i64* %_gep3692
  %_k3694 = load i64, i64* %_k3597
  %_bop3695 = add i64 %_k3694, 1
  store i64 %_bop3695, i64* %_k3597
  %_j3697 = load i64, i64* %_j3595
  %_bop3698 = add i64 %_j3697, 1
  store i64 %_bop3698, i64* %_j3595
  br label %_while_cond3680
_while_exit3682:
  %_low3700 = load i64, i64* %_low3586
  store i64 %_low3700, i64* %_i3593
  br label %_for_cond3702
_for_cond3702:
  %_i3705 = load i64, i64* %_i3593
  %_k3706 = load i64, i64* %_k3597
  %_bop3707 = icmp slt i64 %_i3705, %_k3706
  br i1 %_bop3707, label %_for_body3703, label %_for_exit3704
_for_body3703:
  %_c3708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3601
  %_i3709 = load i64, i64* %_i3593
  %_3710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3708, i32 0, i32 1, i64 %_i3709
  %_3711 = load i64, i64* %_3710
  %_a3712 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3585
  %_i3713 = load i64, i64* %_i3593
  %_gep3714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3712, i32 0, i32 1, i64 %_i3713
  store i64 %_3711, i64* %_gep3714
  %_i3716 = load i64, i64* %_i3593
  %_bop3717 = add i64 %_i3716, 1
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
