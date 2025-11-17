; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str3202 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %numbers, i64 %array_size) {
  %_numbers3211 = alloca { i64, [0 x i64] }*
  %_array_size3212 = alloca i64
  %_temp3215 = alloca i64
  %_i3219 = alloca i64
  %_j3226 = alloca i64
  store { i64, [0 x i64] }* %numbers, { i64, [0 x i64] }** %_numbers3211
  store i64 %array_size, i64* %_array_size3212
  store i64 0, i64* %_temp3215
  %_array_size3217 = load i64, i64* %_array_size3212
  %_bop3218 = sub i64 %_array_size3217, 1
  store i64 %_bop3218, i64* %_i3219
  br label %_for_cond3221
_for_cond3221:
  %_i3224 = load i64, i64* %_i3219
  %_bop3225 = icmp sgt i64 %_i3224, 0
  br i1 %_bop3225, label %_for_body3222, label %_for_exit3223
_for_body3222:
  store i64 1, i64* %_j3226
  br label %_for_cond3228
_for_cond3228:
  %_j3231 = load i64, i64* %_j3226
  %_i3232 = load i64, i64* %_i3219
  %_bop3233 = icmp sle i64 %_j3231, %_i3232
  br i1 %_bop3233, label %_for_body3229, label %_for_exit3230
_for_body3229:
  %_numbers3237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3211
  %_j3238 = load i64, i64* %_j3226
  %_bop3239 = sub i64 %_j3238, 1
  %_gep3240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3237, i32 0, i32 1, i64 %_bop3239
  %_load3241 = load i64, i64* %_gep3240
  %_numbers3242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3211
  %_i3243 = load i64, i64* %_i3219
  %_gep3244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3242, i32 0, i32 1, i64 %_i3243
  %_load3245 = load i64, i64* %_gep3244
  %_bop3246 = icmp sgt i64 %_load3241, %_load3245
  br i1 %_bop3246, label %_then3234, label %_else3235
_then3234:
  %_numbers3247 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3211
  %_j3248 = load i64, i64* %_j3226
  %_bop3249 = sub i64 %_j3248, 1
  %_gep3250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3247, i32 0, i32 1, i64 %_bop3249
  %_load3251 = load i64, i64* %_gep3250
  store i64 %_load3251, i64* %_temp3215
  %_numbers3253 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3211
  %_i3254 = load i64, i64* %_i3219
  %_gep3255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3253, i32 0, i32 1, i64 %_i3254
  %_load3256 = load i64, i64* %_gep3255
  %_numbers3257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3211
  %_j3258 = load i64, i64* %_j3226
  %_bop3259 = sub i64 %_j3258, 1
  %_gep3260 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3257, i32 0, i32 1, i64 %_bop3259
  store i64 %_load3256, i64* %_gep3260
  %_temp3262 = load i64, i64* %_temp3215
  %_numbers3263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers3211
  %_i3264 = load i64, i64* %_i3219
  %_gep3265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3263, i32 0, i32 1, i64 %_i3264
  store i64 %_temp3262, i64* %_gep3265
  br label %_join3236
_else3235:
  br label %_join3236
_join3236:
  %_j3267 = load i64, i64* %_j3226
  %_bop3268 = add i64 %_j3267, 1
  store i64 %_bop3268, i64* %_j3226
  br label %_for_cond3228
_for_exit3230:
  %_i3270 = load i64, i64* %_i3219
  %_bop3271 = sub i64 %_i3270, 1
  store i64 %_bop3271, i64* %_i3219
  br label %_for_cond3221
_for_exit3223:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3167 = alloca i64
  %_argv3168 = alloca { i64, [0 x i8*] }*
  %_a3173 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3167
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3168
  %_raw_array3171 = call i64* @oat_alloc_array(i64 8)
  %_array3172 = bitcast i64* %_raw_array3171 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3172, { i64, [0 x i64] }** %_a3173
  %_a3175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3175, i32 0, i32 1, i32 0
  store i64 121, i64* %_gep3176
  %_a3178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3178, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep3179
  %_a3181 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3181, i32 0, i32 1, i32 2
  store i64 120, i64* %_gep3182
  %_a3184 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3184, i32 0, i32 1, i32 3
  store i64 111, i64* %_gep3185
  %_a3187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3187, i32 0, i32 1, i32 4
  store i64 116, i64* %_gep3188
  %_a3190 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3190, i32 0, i32 1, i32 5
  store i64 110, i64* %_gep3191
  %_a3193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3193, i32 0, i32 1, i32 6
  store i64 117, i64* %_gep3194
  %_a3196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_gep3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3196, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep3197
  %_a3199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_call3200 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3199)
  call void @print_string(i8* %_call3200)
  %_strptr3203 = bitcast [2 x i8]* @_str3202 to i8*
  call void @print_string(i8* %_strptr3203)
  %_a3205 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  call void @bubble_sort({ i64, [0 x i64] }* %_a3205, i64 8)
  %_a3207 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3173
  %_call3208 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3207)
  call void @print_string(i8* %_call3208)
  %_uop3210 = sub i64 0, 1
  ret i64 %_uop3210
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
