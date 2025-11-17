; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %a, i64 %s, i64 %b) {
  %_a3880 = alloca { i64, [0 x i64] }*
  %_s3882 = alloca i64
  %_b3884 = alloca i64
  %_i3887 = alloca i64
  %_min3893 = alloca i64
  %_mi3896 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3880
  store i64 %s, i64* %_s3882
  store i64 %b, i64* %_b3884
  %_load3886 = load i64, i64* %_s3882
  store i64 %_load3886, i64* %_i3887
  %_load3889 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3880
  %_load3890 = load i64, i64* %_s3882
  %_gep3891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3889, i32 0, i32 1, i64 %_load3890
  %_load3892 = load i64, i64* %_gep3891
  store i64 %_load3892, i64* %_min3893
  %_load3895 = load i64, i64* %_s3882
  store i64 %_load3895, i64* %_mi3896
  br label %_for_cond3898
_for_cond3898:
  %_load3901 = load i64, i64* %_i3887
  %_load3902 = load i64, i64* %_b3884
  %_bop3903 = icmp slt i64 %_load3901, %_load3902
  br i1 %_bop3903, label %_for_body3899, label %_for_exit3900
_for_body3899:
  %_load3907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3880
  %_load3908 = load i64, i64* %_i3887
  %_gep3909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3907, i32 0, i32 1, i64 %_load3908
  %_load3910 = load i64, i64* %_gep3909
  %_load3911 = load i64, i64* %_min3893
  %_bop3912 = icmp slt i64 %_load3910, %_load3911
  br i1 %_bop3912, label %_then3904, label %_else3905
_then3904:
  %_load3913 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3880
  %_load3914 = load i64, i64* %_i3887
  %_gep3915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3913, i32 0, i32 1, i64 %_load3914
  %_load3916 = load i64, i64* %_gep3915
  store i64 %_load3916, i64* %_min3893
  %_load3918 = load i64, i64* %_i3887
  store i64 %_load3918, i64* %_mi3896
  br label %_join3906
_else3905:
  br label %_join3906
_join3906:
  %_load3920 = load i64, i64* %_i3887
  %_bop3921 = add i64 %_load3920, 1
  store i64 %_bop3921, i64* %_i3887
  br label %_for_cond3898
_for_exit3900:
  %_load3923 = load i64, i64* %_mi3896
  ret i64 %_load3923
}

define void @selectionsort({ i64, [0 x i64] }* %a, i64 %s) {
  %_a3838 = alloca { i64, [0 x i64] }*
  %_s3840 = alloca i64
  %_t3842 = alloca i64
  %_mi3844 = alloca i64
  %_i3846 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3838
  store i64 %s, i64* %_s3840
  store i64 0, i64* %_t3842
  store i64 0, i64* %_mi3844
  store i64 0, i64* %_i3846
  br label %_for_cond3848
_for_cond3848:
  %_load3851 = load i64, i64* %_i3846
  %_load3852 = load i64, i64* %_s3840
  %_bop3853 = icmp slt i64 %_load3851, %_load3852
  br i1 %_bop3853, label %_for_body3849, label %_for_exit3850
_for_body3849:
  %_load3856 = load i64, i64* %_s3840
  %_load3855 = load i64, i64* %_i3846
  %_load3854 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3838
  %_call3857 = call i64 @getminindex({ i64, [0 x i64] }* %_load3854, i64 %_load3855, i64 %_load3856)
  store i64 %_call3857, i64* %_mi3844
  %_load3859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3838
  %_load3860 = load i64, i64* %_i3846
  %_gep3861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3859, i32 0, i32 1, i64 %_load3860
  %_load3862 = load i64, i64* %_gep3861
  store i64 %_load3862, i64* %_t3842
  %_load3864 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3838
  %_load3865 = load i64, i64* %_mi3844
  %_gep3866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3864, i32 0, i32 1, i64 %_load3865
  %_load3867 = load i64, i64* %_gep3866
  %_load3868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3838
  %_load3869 = load i64, i64* %_i3846
  %_gep3870 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3868, i32 0, i32 1, i64 %_load3869
  store i64 %_load3867, i64* %_gep3870
  %_load3872 = load i64, i64* %_t3842
  %_load3873 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3838
  %_load3874 = load i64, i64* %_mi3844
  %_gep3875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3873, i32 0, i32 1, i64 %_load3874
  store i64 %_load3872, i64* %_gep3875
  %_load3877 = load i64, i64* %_i3846
  %_bop3878 = add i64 %_load3877, 1
  store i64 %_bop3878, i64* %_i3846
  br label %_for_cond3848
_for_exit3850:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3797 = alloca i64
  %_argv3799 = alloca { i64, [0 x i8*] }*
  %_ar3819 = alloca { i64, [0 x i64] }*
  %_i3823 = alloca i64
  store i64 %argc, i64* %_argc3797
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3799
  %_raw_array3801 = call i64* @oat_alloc_array(i64 8)
  %_array3802 = bitcast i64* %_raw_array3801 to { i64, [0 x i64] }*
  %_gep_lit3803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep_lit3803
  %_gep_lit3805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 1
  store i64 200, i64* %_gep_lit3805
  %_gep_lit3807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit3807
  %_gep_lit3809 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep_lit3809
  %_gep_lit3811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 4
  store i64 30, i64* %_gep_lit3811
  %_gep_lit3813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 5
  store i64 99, i64* %_gep_lit3813
  %_gep_lit3815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 6
  store i64 2, i64* %_gep_lit3815
  %_gep_lit3817 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3802, i32 0, i32 1, i32 7
  store i64 0, i64* %_gep_lit3817
  store { i64, [0 x i64] }* %_array3802, { i64, [0 x i64] }** %_ar3819
  %_load3821 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3819
  call void @selectionsort({ i64, [0 x i64] }* %_load3821, i64 8)
  store i64 0, i64* %_i3823
  br label %_for_cond3825
_for_cond3825:
  %_load3828 = load i64, i64* %_i3823
  %_bop3829 = icmp slt i64 %_load3828, 8
  br i1 %_bop3829, label %_for_body3826, label %_for_exit3827
_for_body3826:
  %_load3830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3819
  %_load3831 = load i64, i64* %_i3823
  %_gep3832 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3830, i32 0, i32 1, i64 %_load3831
  %_load3833 = load i64, i64* %_gep3832
  call void @print_int(i64 %_load3833)
  %_load3835 = load i64, i64* %_i3823
  %_bop3836 = add i64 %_load3835, 1
  store i64 %_bop3836, i64* %_i3823
  br label %_for_cond3825
_for_exit3827:
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
