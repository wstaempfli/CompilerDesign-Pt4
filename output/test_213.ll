; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc118 = alloca i64
  %_argv119 = alloca { i64, [0 x i8*] }*
  %_x132 = alloca { i64, [0 x i64] }*
  %_ans134 = alloca i64
  %_i136 = alloca i64
  store i64 %argc, i64* %_argc118
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv119
  %_raw_array122 = call i64* @oat_alloc_array(i64 4)
  %_array123 = bitcast i64* %_raw_array122 to { i64, [0 x i64] }*
  store i64 1, i64* %_gep124
  %_gep124 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array123, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep126
  %_gep126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array123, i32 0, i32 1, i32 1
  store i64 3, i64* %_gep128
  %_gep128 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array123, i32 0, i32 1, i32 2
  store i64 4, i64* %_gep130
  %_gep130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array123, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array123, { i64, [0 x i64] }** %_x132
  store i64 0, i64* %_ans134
  store i64 0, i64* %_i136
  br label %_for_cond138
_for_cond138:
  %_i141 = load i64, i64* %_i136
  %_bop142 = icmp slt i64 %_i141, 4
  br i1 %_bop142, label %_for_body139, label %_for_exit140
_for_body139:
  %_x143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x132
  %_i144 = load i64, i64* %_i136
  %_load146 = load i64, i64* %_gep_ptr145
  %_gep_ptr145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x143, i32 0, i32 1, i64 %_i144
  %_x147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x132
  %_i148 = load i64, i64* %_i136
  %_load150 = load i64, i64* %_gep_ptr149
  %_gep_ptr149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x147, i32 0, i32 1, i64 %_i148
  %_uop151 = xor i64 %_load150, -1
  %_bop152 = mul i64 %_load146, %_uop151
  store i64 %_bop152, i64* %_ans134
  %_i154 = load i64, i64* %_i136
  %_bop155 = add i64 %_i154, 1
  store i64 %_bop155, i64* %_i136
  br label %_for_cond138
_for_exit140:
  %_ans157 = load i64, i64* %_ans134
  ret i64 %_ans157
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
