; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a3238 = alloca { i64, [0 x i64] }*
  %_l3239 = alloca i64
  %_r3240 = alloca i64
  %_j3244 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3238
  store i64 %l, i64* %_l3239
  store i64 %r, i64* %_r3240
  store i64 0, i64* %_j3244
  %_l3249 = load i64, i64* %_l3239
  %_r3250 = load i64, i64* %_r3240
  %_bop3251 = icmp slt i64 %_l3249, %_r3250
  br i1 %_bop3251, label %_then3246, label %_else3247
_then3246:
  %_r3254 = load i64, i64* %_r3240
  %_l3253 = load i64, i64* %_l3239
  %_a3252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3238
  %_function3255 = call i64 @partition({ i64, [0 x i64] }* %_a3252, i64 %_l3253, i64 %_r3254)
  store i64 %_function3255, i64* %_j3244
  %_j3259 = load i64, i64* %_j3244
  %_bop3260 = sub i64 %_j3259, 1
  %_l3258 = load i64, i64* %_l3239
  %_a3257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3238
  call void @quick_sort({ i64, [0 x i64] }* %_a3257, i64 %_l3258, i64 %_bop3260)
  %_r3265 = load i64, i64* %_r3240
  %_j3263 = load i64, i64* %_j3244
  %_bop3264 = add i64 %_j3263, 1
  %_a3262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3238
  call void @quick_sort({ i64, [0 x i64] }* %_a3262, i64 %_bop3264, i64 %_r3265)
  br label %_join3248
_else3247:
  br label %_join3248
_join3248:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a3127 = alloca { i64, [0 x i64] }*
  %_l3128 = alloca i64
  %_r3129 = alloca i64
  %_pivot3137 = alloca i64
  %_i3140 = alloca i64
  %_j3144 = alloca i64
  %_t3146 = alloca i64
  %_done3148 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3127
  store i64 %l, i64* %_l3128
  store i64 %r, i64* %_r3129
  %_a3133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_l3134 = load i64, i64* %_l3128
  %_gep3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3133, i32 0, i32 1, i64 %_l3134
  %_load3136 = load i64, i64* %_gep3135
  store i64 %_load3136, i64* %_pivot3137
  %_l3139 = load i64, i64* %_l3128
  store i64 %_l3139, i64* %_i3140
  %_r3142 = load i64, i64* %_r3129
  %_bop3143 = add i64 %_r3142, 1
  store i64 %_bop3143, i64* %_j3144
  store i64 0, i64* %_t3146
  store i64 0, i64* %_done3148
  br label %_while_cond3150
_while_cond3150:
  %_done3153 = load i64, i64* %_done3148
  %_bop3154 = icmp eq i64 %_done3153, 0
  br i1 %_bop3154, label %_while_body3151, label %_while_exit3152
_while_body3151:
  %_i3155 = load i64, i64* %_i3140
  %_bop3156 = add i64 %_i3155, 1
  store i64 %_bop3156, i64* %_i3140
  br label %_while_cond3158
_while_cond3158:
  %_a3161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_i3162 = load i64, i64* %_i3140
  %_gep3163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3161, i32 0, i32 1, i64 %_i3162
  %_load3164 = load i64, i64* %_gep3163
  %_pivot3165 = load i64, i64* %_pivot3137
  %_bop3166 = icmp sle i64 %_load3164, %_pivot3165
  %_i3167 = load i64, i64* %_i3140
  %_r3168 = load i64, i64* %_r3129
  %_bop3169 = icmp sle i64 %_i3167, %_r3168
  %_bop3170 = and i1 %_bop3166, %_bop3169
  br i1 %_bop3170, label %_while_body3159, label %_while_exit3160
_while_body3159:
  %_i3171 = load i64, i64* %_i3140
  %_bop3172 = add i64 %_i3171, 1
  store i64 %_bop3172, i64* %_i3140
  br label %_while_cond3158
_while_exit3160:
  %_j3174 = load i64, i64* %_j3144
  %_bop3175 = sub i64 %_j3174, 1
  store i64 %_bop3175, i64* %_j3144
  br label %_while_cond3177
_while_cond3177:
  %_a3180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_j3181 = load i64, i64* %_j3144
  %_gep3182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3180, i32 0, i32 1, i64 %_j3181
  %_load3183 = load i64, i64* %_gep3182
  %_pivot3184 = load i64, i64* %_pivot3137
  %_bop3185 = icmp sgt i64 %_load3183, %_pivot3184
  br i1 %_bop3185, label %_while_body3178, label %_while_exit3179
_while_body3178:
  %_j3186 = load i64, i64* %_j3144
  %_bop3187 = sub i64 %_j3186, 1
  store i64 %_bop3187, i64* %_j3144
  br label %_while_cond3177
_while_exit3179:
  %_i3192 = load i64, i64* %_i3140
  %_j3193 = load i64, i64* %_j3144
  %_bop3194 = icmp sge i64 %_i3192, %_j3193
  br i1 %_bop3194, label %_then3189, label %_else3190
_then3189:
  store i64 1, i64* %_done3148
  br label %_join3191
_else3190:
  br label %_join3191
_join3191:
  %_done3199 = load i64, i64* %_done3148
  %_bop3200 = icmp eq i64 %_done3199, 0
  br i1 %_bop3200, label %_then3196, label %_else3197
_then3196:
  %_a3201 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_i3202 = load i64, i64* %_i3140
  %_gep3203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3201, i32 0, i32 1, i64 %_i3202
  %_load3204 = load i64, i64* %_gep3203
  store i64 %_load3204, i64* %_t3146
  %_a3206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_j3207 = load i64, i64* %_j3144
  %_gep3208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3206, i32 0, i32 1, i64 %_j3207
  %_load3209 = load i64, i64* %_gep3208
  %_a3210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_i3211 = load i64, i64* %_i3140
  %_gep3212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3210, i32 0, i32 1, i64 %_i3211
  store i64 %_load3209, i64* %_gep3212
  %_t3214 = load i64, i64* %_t3146
  %_a3215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_j3216 = load i64, i64* %_j3144
  %_gep3217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3215, i32 0, i32 1, i64 %_j3216
  store i64 %_t3214, i64* %_gep3217
  br label %_join3198
_else3197:
  br label %_join3198
_join3198:
  br label %_while_cond3150
_while_exit3152:
  %_a3219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_l3220 = load i64, i64* %_l3128
  %_gep3221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3219, i32 0, i32 1, i64 %_l3220
  %_load3222 = load i64, i64* %_gep3221
  store i64 %_load3222, i64* %_t3146
  %_a3224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_j3225 = load i64, i64* %_j3144
  %_gep3226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3224, i32 0, i32 1, i64 %_j3225
  %_load3227 = load i64, i64* %_gep3226
  %_a3228 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_l3229 = load i64, i64* %_l3128
  %_gep3230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3228, i32 0, i32 1, i64 %_l3229
  store i64 %_load3227, i64* %_gep3230
  %_t3232 = load i64, i64* %_t3146
  %_a3233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3127
  %_j3234 = load i64, i64* %_j3144
  %_gep3235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3233, i32 0, i32 1, i64 %_j3234
  store i64 %_t3232, i64* %_gep3235
  %_j3237 = load i64, i64* %_j3144
  ret i64 %_j3237
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3093 = alloca i64
  %_argv3094 = alloca { i64, [0 x i8*] }*
  %_a3117 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc3093
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3094
  %_raw_array3097 = call i64* @oat_alloc_array(i64 9)
  %_array3098 = bitcast i64* %_raw_array3097 to { i64, [0 x i64] }*
  %_gep_lit3099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 0
  store i64 107, i64* %_gep_lit3099
  %_gep_lit3101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep_lit3101
  %_gep_lit3103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 2
  store i64 121, i64* %_gep_lit3103
  %_gep_lit3105 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 3
  store i64 102, i64* %_gep_lit3105
  %_gep_lit3107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 4
  store i64 123, i64* %_gep_lit3107
  %_gep_lit3109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 5
  store i64 115, i64* %_gep_lit3109
  %_gep_lit3111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 6
  store i64 104, i64* %_gep_lit3111
  %_gep_lit3113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 7
  store i64 111, i64* %_gep_lit3113
  %_gep_lit3115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3098, i32 0, i32 1, i32 8
  store i64 109, i64* %_gep_lit3115
  store { i64, [0 x i64] }* %_array3098, { i64, [0 x i64] }** %_a3117
  %_a3119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3117
  %_function3120 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3119)
  call void @print_string(i8* %_function3120)
  %_a3122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3117
  call void @quick_sort({ i64, [0 x i64] }* %_a3122, i64 0, i64 8)
  %_a3124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3117
  %_function3125 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3124)
  call void @print_string(i8* %_function3125)
  ret i64 255
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
