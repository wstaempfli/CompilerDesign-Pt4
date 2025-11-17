; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3780 = alloca { i64, [0 x i64] }*
  %_s3781 = alloca i64
  %_b3782 = alloca i64
  %_i3787 = alloca i64
  %_min3793 = alloca i64
  %_mi3796 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3780
  store i64 %s, i64* %_s3781
  store i64 %b, i64* %_b3782
  %_s3786 = load i64, i64* %_s3781
  store i64 %_s3786, i64* %_i3787
  %_a3789 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3780
  %_s3790 = load i64, i64* %_s3781
  %_gep3791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3789, i32 0, i32 1, i64 %_s3790
  %_load3792 = load i64, i64* %_gep3791
  store i64 %_load3792, i64* %_min3793
  %_s3795 = load i64, i64* %_s3781
  store i64 %_s3795, i64* %_mi3796
  br label %_for_cond3798
_for_cond3798:
  %_i3801 = load i64, i64* %_i3787
  %_b3802 = load i64, i64* %_b3782
  %_bop3803 = icmp slt i64 %_i3801, %_b3802
  br i1 %_bop3803, label %_for_body3799, label %_for_exit3800
_for_body3799:
  %_a3807 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3780
  %_i3808 = load i64, i64* %_i3787
  %_gep3809 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3807, i32 0, i32 1, i64 %_i3808
  %_load3810 = load i64, i64* %_gep3809
  %_min3811 = load i64, i64* %_min3793
  %_bop3812 = icmp slt i64 %_load3810, %_min3811
  br i1 %_bop3812, label %_then3804, label %_else3805
_then3804:
  %_a3813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3780
  %_i3814 = load i64, i64* %_i3787
  %_gep3815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3813, i32 0, i32 1, i64 %_i3814
  %_load3816 = load i64, i64* %_gep3815
  store i64 %_load3816, i64* %_min3793
  %_i3818 = load i64, i64* %_i3787
  store i64 %_i3818, i64* %_mi3796
  br label %_join3806
_else3805:
  br label %_join3806
_join3806:
  %_i3820 = load i64, i64* %_i3787
  %_bop3821 = add i64 %_i3820, 1
  store i64 %_bop3821, i64* %_i3787
  br label %_for_cond3798
_for_exit3800:
  %_mi3823 = load i64, i64* %_mi3796
  ret i64 %_mi3823
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3738 = alloca { i64, [0 x i64] }*
  %_s3739 = alloca i64
  %_t3742 = alloca i64
  %_mi3744 = alloca i64
  %_i3746 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3738
  store i64 %s, i64* %_s3739
  store i64 0, i64* %_t3742
  store i64 0, i64* %_mi3744
  store i64 0, i64* %_i3746
  br label %_for_cond3748
_for_cond3748:
  %_i3751 = load i64, i64* %_i3746
  %_s3752 = load i64, i64* %_s3739
  %_bop3753 = icmp slt i64 %_i3751, %_s3752
  br i1 %_bop3753, label %_for_body3749, label %_for_exit3750
_for_body3749:
  %_s3756 = load i64, i64* %_s3739
  %_i3755 = load i64, i64* %_i3746
  %_a3754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3738
  %_call3757 = call i64 @getminindex({ i64, [0 x i64] }* %_a3754, i64 %_i3755, i64 %_s3756)
  store i64 %_call3757, i64* %_mi3744
  %_a3759 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3738
  %_i3760 = load i64, i64* %_i3746
  %_gep3761 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3759, i32 0, i32 1, i64 %_i3760
  %_load3762 = load i64, i64* %_gep3761
  store i64 %_load3762, i64* %_t3742
  %_a3764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3738
  %_mi3765 = load i64, i64* %_mi3744
  %_gep3766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3764, i32 0, i32 1, i64 %_mi3765
  %_load3767 = load i64, i64* %_gep3766
  %_a3768 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3738
  %_i3769 = load i64, i64* %_i3746
  %_gep3770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3768, i32 0, i32 1, i64 %_i3769
  store i64 %_load3767, i64* %_gep3770
  %_t3772 = load i64, i64* %_t3742
  %_a3773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3738
  %_mi3774 = load i64, i64* %_mi3744
  %_gep3775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3773, i32 0, i32 1, i64 %_mi3774
  store i64 %_t3772, i64* %_gep3775
  %_i3777 = load i64, i64* %_i3746
  %_bop3778 = add i64 %_i3777, 1
  store i64 %_bop3778, i64* %_i3746
  br label %_for_cond3748
_for_exit3750:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3697 = alloca i64
  %_argv3698 = alloca { i64, [0 x i8*] }*
  %_ar3719 = alloca { i64, [0 x i64] }*
  %_i3723 = alloca i64
  store i64 %argc, i64* %_argc3697
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3698
  %_raw_array3701 = call i64* @oat_alloc_array(i64 8)
  %_array3702 = bitcast i64* %_raw_array3701 to { i64, [0 x i64] }*
  %_gep_lit3703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep_lit3703
  %_gep_lit3705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 1
  store i64 200, i64* %_gep_lit3705
  %_gep_lit3707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit3707
  %_gep_lit3709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep_lit3709
  %_gep_lit3711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 4
  store i64 30, i64* %_gep_lit3711
  %_gep_lit3713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 5
  store i64 99, i64* %_gep_lit3713
  %_gep_lit3715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 6
  store i64 2, i64* %_gep_lit3715
  %_gep_lit3717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3702, i32 0, i32 1, i32 7
  store i64 0, i64* %_gep_lit3717
  store { i64, [0 x i64] }* %_array3702, { i64, [0 x i64] }** %_ar3719
  %_ar3721 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3719
  call void @selectionsort({ i64, [0 x i64] }* %_ar3721, i64 8)
  store i64 0, i64* %_i3723
  br label %_for_cond3725
_for_cond3725:
  %_i3728 = load i64, i64* %_i3723
  %_bop3729 = icmp slt i64 %_i3728, 8
  br i1 %_bop3729, label %_for_body3726, label %_for_exit3727
_for_body3726:
  %_ar3730 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3719
  %_i3731 = load i64, i64* %_i3723
  %_gep3732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3730, i32 0, i32 1, i64 %_i3731
  %_load3733 = load i64, i64* %_gep3732
  call void @print_int(i64 %_load3733)
  %_i3735 = load i64, i64* %_i3723
  %_bop3736 = add i64 %_i3735, 1
  store i64 %_bop3736, i64* %_i3723
  br label %_for_cond3725
_for_exit3727:
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
