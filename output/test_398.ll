; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str3851 = global [2 x i8] c" \00"
@_str3857 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4006 = alloca i64
  %_argv4007 = alloca { i64, [0 x i8*] }*
  %_a4032 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b4072 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c4100 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc4006
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4007
  %_raw_array4010 = call i64* @oat_alloc_array(i64 2)
  %_array4011 = bitcast i64* %_raw_array4010 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4012 = call i64* @oat_alloc_array(i64 3)
  %_array4013 = bitcast i64* %_raw_array4012 to { i64, [0 x i64] }*
  %_gep_lit4014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4013, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit4014
  %_gep_lit4016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4013, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep_lit4016
  %_gep_lit4018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4013, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep_lit4018
  %_gep_lit4020 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4011, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4013, { i64, [0 x i64] }** %_gep_lit4020
  %_raw_array4022 = call i64* @oat_alloc_array(i64 3)
  %_array4023 = bitcast i64* %_raw_array4022 to { i64, [0 x i64] }*
  %_gep_lit4024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4023, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit4024
  %_gep_lit4026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4023, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit4026
  %_gep_lit4028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4023, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit4028
  %_gep_lit4030 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4011, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4023, { i64, [0 x i64] }** %_gep_lit4030
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4011, { i64, [0 x { i64, [0 x i64] }*] }** %_a4032
  %_raw_array4034 = call i64* @oat_alloc_array(i64 3)
  %_array4035 = bitcast i64* %_raw_array4034 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4036 = call i64* @oat_alloc_array(i64 4)
  %_array4037 = bitcast i64* %_raw_array4036 to { i64, [0 x i64] }*
  %_gep_lit4038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4037, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit4038
  %_gep_lit4040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4037, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit4040
  %_gep_lit4042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4037, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit4042
  %_gep_lit4044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4037, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep_lit4044
  %_gep_lit4046 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4035, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4037, { i64, [0 x i64] }** %_gep_lit4046
  %_raw_array4048 = call i64* @oat_alloc_array(i64 4)
  %_array4049 = bitcast i64* %_raw_array4048 to { i64, [0 x i64] }*
  %_gep_lit4050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4049, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit4050
  %_gep_lit4052 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4049, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit4052
  %_gep_lit4054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4049, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit4054
  %_gep_lit4056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4049, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep_lit4056
  %_gep_lit4058 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4035, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4049, { i64, [0 x i64] }** %_gep_lit4058
  %_raw_array4060 = call i64* @oat_alloc_array(i64 4)
  %_array4061 = bitcast i64* %_raw_array4060 to { i64, [0 x i64] }*
  %_gep_lit4062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4061, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit4062
  %_gep_lit4064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4061, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit4064
  %_gep_lit4066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4061, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit4066
  %_gep_lit4068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4061, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep_lit4068
  %_gep_lit4070 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4035, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4061, { i64, [0 x i64] }** %_gep_lit4070
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4035, { i64, [0 x { i64, [0 x i64] }*] }** %_b4072
  %_raw_array4074 = call i64* @oat_alloc_array(i64 2)
  %_array4075 = bitcast i64* %_raw_array4074 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4076 = call i64* @oat_alloc_array(i64 4)
  %_array4077 = bitcast i64* %_raw_array4076 to { i64, [0 x i64] }*
  %_gep_lit4078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4077, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4078
  %_gep_lit4080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4077, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit4080
  %_gep_lit4082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4077, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit4082
  %_gep_lit4084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4077, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit4084
  %_gep_lit4086 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4075, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4077, { i64, [0 x i64] }** %_gep_lit4086
  %_raw_array4088 = call i64* @oat_alloc_array(i64 4)
  %_array4089 = bitcast i64* %_raw_array4088 to { i64, [0 x i64] }*
  %_gep_lit4090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4089, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4090
  %_gep_lit4092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4089, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit4092
  %_gep_lit4094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4089, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit4094
  %_gep_lit4096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4089, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit4096
  %_gep_lit4098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4075, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4089, { i64, [0 x i64] }** %_gep_lit4098
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4075, { i64, [0 x { i64, [0 x i64] }*] }** %_c4100
  %_c4104 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4100
  %_b4103 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4072
  %_a4102 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4032
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a4102, { i64, [0 x { i64, [0 x i64] }*] }* %_b4103, { i64, [0 x { i64, [0 x i64] }*] }* %_c4104)
  %_c4106 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4100
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4106, i64 2)
  %_c4110 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4100
  %_b4109 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4072
  %_a4108 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4032
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a4108, { i64, [0 x { i64, [0 x i64] }*] }* %_b4109, { i64, [0 x { i64, [0 x i64] }*] }* %_c4110)
  %_c4112 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4100
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c4112, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13940 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23941 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33942 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3946 = alloca i64
  %_j3953 = alloca i64
  %_k3960 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13940
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23941
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33942
  store i64 0, i64* %_i3946
  br label %_for_cond3948
_for_cond3948:
  %_i3951 = load i64, i64* %_i3946
  %_bop3952 = icmp slt i64 %_i3951, 2
  br i1 %_bop3952, label %_for_body3949, label %_for_exit3950
_for_body3949:
  store i64 0, i64* %_j3953
  br label %_for_cond3955
_for_cond3955:
  %_j3958 = load i64, i64* %_j3953
  %_bop3959 = icmp slt i64 %_j3958, 4
  br i1 %_bop3959, label %_for_body3956, label %_for_exit3957
_for_body3956:
  store i64 0, i64* %_k3960
  br label %_for_cond3962
_for_cond3962:
  %_k3965 = load i64, i64* %_k3960
  %_bop3966 = icmp slt i64 %_k3965, 3
  br i1 %_bop3966, label %_for_body3963, label %_for_exit3964
_for_body3963:
  %_a33967 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33942
  %_i3968 = load i64, i64* %_i3946
  %_gep3969 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33967, i32 0, i32 1, i64 %_i3968
  %_load3970 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3969
  %_j3971 = load i64, i64* %_j3953
  %_gep3972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3970, i32 0, i32 1, i64 %_j3971
  %_load3973 = load i64, i64* %_gep3972
  %_a13974 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13940
  %_i3975 = load i64, i64* %_i3946
  %_gep3976 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13974, i32 0, i32 1, i64 %_i3975
  %_load3977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3976
  %_k3978 = load i64, i64* %_k3960
  %_gep3979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3977, i32 0, i32 1, i64 %_k3978
  %_load3980 = load i64, i64* %_gep3979
  %_a23981 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23941
  %_k3982 = load i64, i64* %_k3960
  %_gep3983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23981, i32 0, i32 1, i64 %_k3982
  %_load3984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3983
  %_j3985 = load i64, i64* %_j3953
  %_gep3986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3984, i32 0, i32 1, i64 %_j3985
  %_load3987 = load i64, i64* %_gep3986
  %_bop3988 = mul i64 %_load3980, %_load3987
  %_bop3989 = add i64 %_load3973, %_bop3988
  %_a33990 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33942
  %_i3991 = load i64, i64* %_i3946
  %_gep3992 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33990, i32 0, i32 1, i64 %_i3991
  %_load3993 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3992
  %_j3994 = load i64, i64* %_j3953
  %_gep3995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3993, i32 0, i32 1, i64 %_j3994
  store i64 %_bop3989, i64* %_gep3995
  %_k3997 = load i64, i64* %_k3960
  %_bop3998 = add i64 %_k3997, 1
  store i64 %_bop3998, i64* %_k3960
  br label %_for_cond3962
_for_exit3964:
  %_j4000 = load i64, i64* %_j3953
  %_bop4001 = add i64 %_j4000, 1
  store i64 %_bop4001, i64* %_j3953
  br label %_for_cond3955
_for_exit3957:
  %_i4003 = load i64, i64* %_i3946
  %_bop4004 = add i64 %_i4003, 1
  store i64 %_bop4004, i64* %_i3946
  br label %_for_cond3948
_for_exit3950:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a13902 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23903 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33904 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3908 = alloca i64
  %_j3915 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13902
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23903
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a33904
  store i64 0, i64* %_i3908
  br label %_for_cond3910
_for_cond3910:
  %_i3913 = load i64, i64* %_i3908
  %_bop3914 = icmp slt i64 %_i3913, 2
  br i1 %_bop3914, label %_for_body3911, label %_for_exit3912
_for_body3911:
  store i64 0, i64* %_j3915
  br label %_for_cond3917
_for_cond3917:
  %_j3920 = load i64, i64* %_j3915
  %_bop3921 = icmp slt i64 %_j3920, 4
  br i1 %_bop3921, label %_for_body3918, label %_for_exit3919
_for_body3918:
  %_j3925 = load i64, i64* %_j3915
  %_i3924 = load i64, i64* %_i3908
  %_a23923 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23903
  %_a13922 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13902
  %_call3926 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13922, { i64, [0 x { i64, [0 x i64] }*] }* %_a23923, i64 %_i3924, i64 %_j3925)
  %_a33927 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33904
  %_i3928 = load i64, i64* %_i3908
  %_gep3929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33927, i32 0, i32 1, i64 %_i3928
  %_load3930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3929
  %_j3931 = load i64, i64* %_j3915
  %_gep3932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3930, i32 0, i32 1, i64 %_j3931
  store i64 %_call3926, i64* %_gep3932
  %_j3934 = load i64, i64* %_j3915
  %_bop3935 = add i64 %_j3934, 1
  store i64 %_bop3935, i64* %_j3915
  br label %_for_cond3917
_for_exit3919:
  %_i3937 = load i64, i64* %_i3908
  %_bop3938 = add i64 %_i3937, 1
  store i64 %_bop3938, i64* %_i3908
  br label %_for_cond3910
_for_exit3912:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13863 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23864 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3865 = alloca i64
  %_col3866 = alloca i64
  %_sum3871 = alloca i64
  %_k3873 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13863
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23864
  store i64 %row, i64* %_row3865
  store i64 %col, i64* %_col3866
  store i64 0, i64* %_sum3871
  store i64 0, i64* %_k3873
  br label %_for_cond3875
_for_cond3875:
  %_k3878 = load i64, i64* %_k3873
  %_bop3879 = icmp slt i64 %_k3878, 3
  br i1 %_bop3879, label %_for_body3876, label %_for_exit3877
_for_body3876:
  %_sum3880 = load i64, i64* %_sum3871
  %_a13881 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13863
  %_row3882 = load i64, i64* %_row3865
  %_gep3883 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13881, i32 0, i32 1, i64 %_row3882
  %_load3884 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3883
  %_k3885 = load i64, i64* %_k3873
  %_gep3886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3884, i32 0, i32 1, i64 %_k3885
  %_load3887 = load i64, i64* %_gep3886
  %_a23888 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23864
  %_k3889 = load i64, i64* %_k3873
  %_gep3890 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23888, i32 0, i32 1, i64 %_k3889
  %_load3891 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3890
  %_col3892 = load i64, i64* %_col3866
  %_gep3893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3891, i32 0, i32 1, i64 %_col3892
  %_load3894 = load i64, i64* %_gep3893
  %_bop3895 = mul i64 %_load3887, %_load3894
  %_bop3896 = add i64 %_sum3880, %_bop3895
  store i64 %_bop3896, i64* %_sum3871
  %_k3898 = load i64, i64* %_k3873
  %_bop3899 = add i64 %_k3898, 1
  store i64 %_bop3899, i64* %_k3873
  br label %_for_cond3875
_for_exit3877:
  %_sum3901 = load i64, i64* %_sum3871
  ret i64 %_sum3901
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3824 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3825 = alloca i64
  %_i3828 = alloca i64
  %_j3836 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3824
  store i64 %n, i64* %_n3825
  store i64 0, i64* %_i3828
  br label %_for_cond3830
_for_cond3830:
  %_i3833 = load i64, i64* %_i3828
  %_n3834 = load i64, i64* %_n3825
  %_bop3835 = icmp slt i64 %_i3833, %_n3834
  br i1 %_bop3835, label %_for_body3831, label %_for_exit3832
_for_body3831:
  store i64 0, i64* %_j3836
  br label %_for_cond3838
_for_cond3838:
  %_j3841 = load i64, i64* %_j3836
  %_bop3842 = icmp slt i64 %_j3841, 4
  br i1 %_bop3842, label %_for_body3839, label %_for_exit3840
_for_body3839:
  %_ar3843 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3824
  %_i3844 = load i64, i64* %_i3828
  %_gep3845 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3843, i32 0, i32 1, i64 %_i3844
  %_load3846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3845
  %_j3847 = load i64, i64* %_j3836
  %_gep3848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3846, i32 0, i32 1, i64 %_j3847
  %_load3849 = load i64, i64* %_gep3848
  call void @print_int(i64 %_load3849)
  %_strptr3852 = bitcast [2 x i8]* @_str3851 to i8*
  call void @print_string(i8* %_strptr3852)
  %_j3854 = load i64, i64* %_j3836
  %_bop3855 = add i64 %_j3854, 1
  store i64 %_bop3855, i64* %_j3836
  br label %_for_cond3838
_for_exit3840:
  %_strptr3858 = bitcast [2 x i8]* @_str3857 to i8*
  call void @print_string(i8* %_strptr3858)
  %_i3860 = load i64, i64* %_i3828
  %_bop3861 = add i64 %_i3860, 1
  store i64 %_bop3861, i64* %_i3828
  br label %_for_cond3830
_for_exit3832:
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
