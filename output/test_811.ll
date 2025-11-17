; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc158 = alloca i64
  %_argv159 = alloca { i64, [0 x i8*] }*
  %_x188 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans190 = alloca i64
  %_i192 = alloca i64
  store i64 %argc, i64* %_argc158
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv159
  %_raw_array162 = call i64* @oat_alloc_array(i64 4)
  %_array163 = bitcast i64* %_raw_array162 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array164 = call i64* @oat_alloc_array(i64 1)
  %_array165 = bitcast i64* %_raw_array164 to { i64, [0 x i64] }*
  %_gep_lit166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array165, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit166
  %_gep_lit168 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array163, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array165, { i64, [0 x i64] }** %_gep_lit168
  %_raw_array170 = call i64* @oat_alloc_array(i64 1)
  %_array171 = bitcast i64* %_raw_array170 to { i64, [0 x i64] }*
  %_gep_lit172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array171, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit172
  %_gep_lit174 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array163, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array171, { i64, [0 x i64] }** %_gep_lit174
  %_raw_array176 = call i64* @oat_alloc_array(i64 1)
  %_array177 = bitcast i64* %_raw_array176 to { i64, [0 x i64] }*
  %_gep_lit178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array177, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit178
  %_gep_lit180 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array163, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array177, { i64, [0 x i64] }** %_gep_lit180
  %_raw_array182 = call i64* @oat_alloc_array(i64 1)
  %_array183 = bitcast i64* %_raw_array182 to { i64, [0 x i64] }*
  %_gep_lit184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array183, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep_lit184
  %_gep_lit186 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array163, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array183, { i64, [0 x i64] }** %_gep_lit186
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array163, { i64, [0 x { i64, [0 x i64] }*] }** %_x188
  store i64 0, i64* %_ans190
  store i64 0, i64* %_i192
  br label %_for_cond194
_for_cond194:
  %_i197 = load i64, i64* %_i192
  %_bop198 = icmp slt i64 %_i197, 4
  br i1 %_bop198, label %_for_body195, label %_for_exit196
_for_body195:
  %_x199 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x188
  %_i200 = load i64, i64* %_i192
  %_gep201 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x199, i32 0, i32 1, i64 %_i200
  %_load202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep201
  %_gep203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load202, i32 0, i32 1, i32 0
  %_load204 = load i64, i64* %_gep203
  %_ans205 = load i64, i64* %_ans190
  %_bop206 = sub i64 %_load204, %_ans205
  store i64 %_bop206, i64* %_ans190
  %_i208 = load i64, i64* %_i192
  %_bop209 = add i64 %_i208, 1
  store i64 %_bop209, i64* %_i192
  br label %_for_cond194
_for_exit196:
  %_uop214 = xor i64 5, -1
  %_bop215 = and i64 5, %_uop214
  %_bop216 = or i64 %_bop215, 0
  %_bop217 = icmp ne i64 %_bop216, 0
  br i1 %_bop217, label %_then211, label %_else212
_then211:
  %_ans218 = load i64, i64* %_ans190
  ret i64 %_ans218
_else212:
  %_ans219 = load i64, i64* %_ans190
  %_uop220 = sub i64 0, %_ans219
  ret i64 %_uop220
_join213:
  %_ans221 = load i64, i64* %_ans190
  ret i64 %_ans221
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
