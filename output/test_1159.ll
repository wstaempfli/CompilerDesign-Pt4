; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str3951 = global [2 x i8] c" \00"
@_str3957 = global [2 x i8] c"	\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4106 = alloca i64
  %_argv4108 = alloca { i64, [0 x i8*] }*
  %_a4132 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b4172 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c4200 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc4106
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4108
  %_raw_array4110 = call i64* @oat_alloc_array(i64 2)
  %_array4111 = bitcast i64* %_raw_array4110 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4112 = call i64* @oat_alloc_array(i64 3)
  %_array4113 = bitcast i64* %_raw_array4112 to { i64, [0 x i64] }*
  %_gep_lit4114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4113, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit4114
  %_gep_lit4116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4113, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep_lit4116
  %_gep_lit4118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4113, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep_lit4118
  %_gep_lit4120 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4111, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4113, { i64, [0 x i64] }** %_gep_lit4120
  %_raw_array4122 = call i64* @oat_alloc_array(i64 3)
  %_array4123 = bitcast i64* %_raw_array4122 to { i64, [0 x i64] }*
  %_gep_lit4124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4123, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit4124
  %_gep_lit4126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4123, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit4126
  %_gep_lit4128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4123, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit4128
  %_gep_lit4130 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4111, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4123, { i64, [0 x i64] }** %_gep_lit4130
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4111, { i64, [0 x { i64, [0 x i64] }*] }** %_a4132
  %_raw_array4134 = call i64* @oat_alloc_array(i64 3)
  %_array4135 = bitcast i64* %_raw_array4134 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4136 = call i64* @oat_alloc_array(i64 4)
  %_array4137 = bitcast i64* %_raw_array4136 to { i64, [0 x i64] }*
  %_gep_lit4138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4137, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit4138
  %_gep_lit4140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4137, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit4140
  %_gep_lit4142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4137, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit4142
  %_gep_lit4144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4137, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep_lit4144
  %_gep_lit4146 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4135, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4137, { i64, [0 x i64] }** %_gep_lit4146
  %_raw_array4148 = call i64* @oat_alloc_array(i64 4)
  %_array4149 = bitcast i64* %_raw_array4148 to { i64, [0 x i64] }*
  %_gep_lit4150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4149, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit4150
  %_gep_lit4152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4149, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit4152
  %_gep_lit4154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4149, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit4154
  %_gep_lit4156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4149, i32 0, i32 1, i32 3
  store i64 2, i64* %_gep_lit4156
  %_gep_lit4158 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4135, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4149, { i64, [0 x i64] }** %_gep_lit4158
  %_raw_array4160 = call i64* @oat_alloc_array(i64 4)
  %_array4161 = bitcast i64* %_raw_array4160 to { i64, [0 x i64] }*
  %_gep_lit4162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit4162
  %_gep_lit4164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit4164
  %_gep_lit4166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit4166
  %_gep_lit4168 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4161, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep_lit4168
  %_gep_lit4170 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4135, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4161, { i64, [0 x i64] }** %_gep_lit4170
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4135, { i64, [0 x { i64, [0 x i64] }*] }** %_b4172
  %_raw_array4174 = call i64* @oat_alloc_array(i64 2)
  %_array4175 = bitcast i64* %_raw_array4174 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4176 = call i64* @oat_alloc_array(i64 4)
  %_array4177 = bitcast i64* %_raw_array4176 to { i64, [0 x i64] }*
  %_gep_lit4178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4177, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4178
  %_gep_lit4180 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4177, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit4180
  %_gep_lit4182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4177, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit4182
  %_gep_lit4184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4177, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit4184
  %_gep_lit4186 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4175, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4177, { i64, [0 x i64] }** %_gep_lit4186
  %_raw_array4188 = call i64* @oat_alloc_array(i64 4)
  %_array4189 = bitcast i64* %_raw_array4188 to { i64, [0 x i64] }*
  %_gep_lit4190 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4189, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit4190
  %_gep_lit4192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4189, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit4192
  %_gep_lit4194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4189, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit4194
  %_gep_lit4196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4189, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit4196
  %_gep_lit4198 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4175, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4189, { i64, [0 x i64] }** %_gep_lit4198
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4175, { i64, [0 x { i64, [0 x i64] }*] }** %_c4200
  %_load4204 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4200
  %_load4203 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4172
  %_load4202 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4132
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_load4202, { i64, [0 x { i64, [0 x i64] }*] }* %_load4203, { i64, [0 x { i64, [0 x i64] }*] }* %_load4204)
  %_load4206 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4200
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_load4206, i64 2)
  %_load4210 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4200
  %_load4209 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b4172
  %_load4208 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4132
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_load4208, { i64, [0 x { i64, [0 x i64] }*] }* %_load4209, { i64, [0 x { i64, [0 x i64] }*] }* %_load4210)
  %_load4212 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c4200
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_load4212, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a14040 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a24042 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a34044 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4046 = alloca i64
  %_j4053 = alloca i64
  %_k4060 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14040
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24042
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34044
  store i64 0, i64* %_i4046
  br label %_for_cond4048
_for_cond4048:
  %_load4051 = load i64, i64* %_i4046
  %_bop4052 = icmp slt i64 %_load4051, 2
  br i1 %_bop4052, label %_for_body4049, label %_for_exit4050
_for_body4049:
  store i64 0, i64* %_j4053
  br label %_for_cond4055
_for_cond4055:
  %_load4058 = load i64, i64* %_j4053
  %_bop4059 = icmp slt i64 %_load4058, 4
  br i1 %_bop4059, label %_for_body4056, label %_for_exit4057
_for_body4056:
  store i64 0, i64* %_k4060
  br label %_for_cond4062
_for_cond4062:
  %_load4065 = load i64, i64* %_k4060
  %_bop4066 = icmp slt i64 %_load4065, 3
  br i1 %_bop4066, label %_for_body4063, label %_for_exit4064
_for_body4063:
  %_load4067 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34044
  %_load4068 = load i64, i64* %_i4046
  %_gep4069 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load4067, i32 0, i32 1, i64 %_load4068
  %_load4070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep4069
  %_load4071 = load i64, i64* %_j4053
  %_gep4072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4070, i32 0, i32 1, i64 %_load4071
  %_load4073 = load i64, i64* %_gep4072
  %_load4074 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14040
  %_load4075 = load i64, i64* %_i4046
  %_gep4076 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load4074, i32 0, i32 1, i64 %_load4075
  %_load4077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep4076
  %_load4078 = load i64, i64* %_k4060
  %_gep4079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4077, i32 0, i32 1, i64 %_load4078
  %_load4080 = load i64, i64* %_gep4079
  %_load4081 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24042
  %_load4082 = load i64, i64* %_k4060
  %_gep4083 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load4081, i32 0, i32 1, i64 %_load4082
  %_load4084 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep4083
  %_load4085 = load i64, i64* %_j4053
  %_gep4086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4084, i32 0, i32 1, i64 %_load4085
  %_load4087 = load i64, i64* %_gep4086
  %_bop4088 = mul i64 %_load4080, %_load4087
  %_bop4089 = add i64 %_load4073, %_bop4088
  %_load4090 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34044
  %_load4091 = load i64, i64* %_i4046
  %_gep4092 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load4090, i32 0, i32 1, i64 %_load4091
  %_load4093 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep4092
  %_load4094 = load i64, i64* %_j4053
  %_gep4095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4093, i32 0, i32 1, i64 %_load4094
  store i64 %_bop4089, i64* %_gep4095
  %_load4097 = load i64, i64* %_k4060
  %_bop4098 = add i64 %_load4097, 1
  store i64 %_bop4098, i64* %_k4060
  br label %_for_cond4062
_for_exit4064:
  %_load4100 = load i64, i64* %_j4053
  %_bop4101 = add i64 %_load4100, 1
  store i64 %_bop4101, i64* %_j4053
  br label %_for_cond4055
_for_exit4057:
  %_load4103 = load i64, i64* %_i4046
  %_bop4104 = add i64 %_load4103, 1
  store i64 %_bop4104, i64* %_i4046
  br label %_for_cond4048
_for_exit4050:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }* %a3) {
  %_a14002 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a24004 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a34006 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4008 = alloca i64
  %_j4015 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a14002
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a24004
  store { i64, [0 x { i64, [0 x i64] }*] }* %a3, { i64, [0 x { i64, [0 x i64] }*] }** %_a34006
  store i64 0, i64* %_i4008
  br label %_for_cond4010
_for_cond4010:
  %_load4013 = load i64, i64* %_i4008
  %_bop4014 = icmp slt i64 %_load4013, 2
  br i1 %_bop4014, label %_for_body4011, label %_for_exit4012
_for_body4011:
  store i64 0, i64* %_j4015
  br label %_for_cond4017
_for_cond4017:
  %_load4020 = load i64, i64* %_j4015
  %_bop4021 = icmp slt i64 %_load4020, 4
  br i1 %_bop4021, label %_for_body4018, label %_for_exit4019
_for_body4018:
  %_load4025 = load i64, i64* %_j4015
  %_load4024 = load i64, i64* %_i4008
  %_load4023 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a24004
  %_load4022 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a14002
  %_call4026 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_load4022, { i64, [0 x { i64, [0 x i64] }*] }* %_load4023, i64 %_load4024, i64 %_load4025)
  %_load4027 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a34006
  %_load4028 = load i64, i64* %_i4008
  %_gep4029 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load4027, i32 0, i32 1, i64 %_load4028
  %_load4030 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep4029
  %_load4031 = load i64, i64* %_j4015
  %_gep4032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load4030, i32 0, i32 1, i64 %_load4031
  store i64 %_call4026, i64* %_gep4032
  %_load4034 = load i64, i64* %_j4015
  %_bop4035 = add i64 %_load4034, 1
  store i64 %_bop4035, i64* %_j4015
  br label %_for_cond4017
_for_exit4019:
  %_load4037 = load i64, i64* %_i4008
  %_bop4038 = add i64 %_load4037, 1
  store i64 %_bop4038, i64* %_i4008
  br label %_for_cond4010
_for_exit4012:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }* %a2, i64 %row, i64 %col) {
  %_a13963 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23965 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3967 = alloca i64
  %_col3969 = alloca i64
  %_sum3971 = alloca i64
  %_k3973 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %a1, { i64, [0 x { i64, [0 x i64] }*] }** %_a13963
  store { i64, [0 x { i64, [0 x i64] }*] }* %a2, { i64, [0 x { i64, [0 x i64] }*] }** %_a23965
  store i64 %row, i64* %_row3967
  store i64 %col, i64* %_col3969
  store i64 0, i64* %_sum3971
  store i64 0, i64* %_k3973
  br label %_for_cond3975
_for_cond3975:
  %_load3978 = load i64, i64* %_k3973
  %_bop3979 = icmp slt i64 %_load3978, 3
  br i1 %_bop3979, label %_for_body3976, label %_for_exit3977
_for_body3976:
  %_load3980 = load i64, i64* %_sum3971
  %_load3981 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13963
  %_load3982 = load i64, i64* %_row3967
  %_gep3983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load3981, i32 0, i32 1, i64 %_load3982
  %_load3984 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3983
  %_load3985 = load i64, i64* %_k3973
  %_gep3986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3984, i32 0, i32 1, i64 %_load3985
  %_load3987 = load i64, i64* %_gep3986
  %_load3988 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23965
  %_load3989 = load i64, i64* %_k3973
  %_gep3990 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load3988, i32 0, i32 1, i64 %_load3989
  %_load3991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3990
  %_load3992 = load i64, i64* %_col3969
  %_gep3993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3991, i32 0, i32 1, i64 %_load3992
  %_load3994 = load i64, i64* %_gep3993
  %_bop3995 = mul i64 %_load3987, %_load3994
  %_bop3996 = add i64 %_load3980, %_bop3995
  store i64 %_bop3996, i64* %_sum3971
  %_load3998 = load i64, i64* %_k3973
  %_bop3999 = add i64 %_load3998, 1
  store i64 %_bop3999, i64* %_k3973
  br label %_for_cond3975
_for_exit3977:
  %_load4001 = load i64, i64* %_sum3971
  ret i64 %_load4001
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %ar, i64 %n) {
  %_ar3924 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3926 = alloca i64
  %_i3928 = alloca i64
  %_j3936 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %ar, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3924
  store i64 %n, i64* %_n3926
  store i64 0, i64* %_i3928
  br label %_for_cond3930
_for_cond3930:
  %_load3933 = load i64, i64* %_i3928
  %_load3934 = load i64, i64* %_n3926
  %_bop3935 = icmp slt i64 %_load3933, %_load3934
  br i1 %_bop3935, label %_for_body3931, label %_for_exit3932
_for_body3931:
  store i64 0, i64* %_j3936
  br label %_for_cond3938
_for_cond3938:
  %_load3941 = load i64, i64* %_j3936
  %_bop3942 = icmp slt i64 %_load3941, 4
  br i1 %_bop3942, label %_for_body3939, label %_for_exit3940
_for_body3939:
  %_load3943 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3924
  %_load3944 = load i64, i64* %_i3928
  %_gep3945 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load3943, i32 0, i32 1, i64 %_load3944
  %_load3946 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep3945
  %_load3947 = load i64, i64* %_j3936
  %_gep3948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load3946, i32 0, i32 1, i64 %_load3947
  %_load3949 = load i64, i64* %_gep3948
  call void @print_int(i64 %_load3949)
  %_strptr3952 = bitcast [2 x i8]* @_str3951 to i8*
  call void @print_string(i8* %_strptr3952)
  %_load3954 = load i64, i64* %_j3936
  %_bop3955 = add i64 %_load3954, 1
  store i64 %_bop3955, i64* %_j3936
  br label %_for_cond3938
_for_exit3940:
  %_strptr3958 = bitcast [2 x i8]* @_str3957 to i8*
  call void @print_string(i8* %_strptr3958)
  %_load3960 = load i64, i64* %_i3928
  %_bop3961 = add i64 %_load3960, 1
  store i64 %_bop3961, i64* %_i3928
  br label %_for_cond3930
_for_exit3932:
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
