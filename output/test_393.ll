; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a3138 = alloca { i64, [0 x i64] }*
  %_l3139 = alloca i64
  %_r3140 = alloca i64
  %_j3144 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3138
  store i64 %l, i64* %_l3139
  store i64 %r, i64* %_r3140
  store i64 0, i64* %_j3144
  %_l3149 = load i64, i64* %_l3139
  %_r3150 = load i64, i64* %_r3140
  %_bop3151 = icmp slt i64 %_l3149, %_r3150
  br i1 %_bop3151, label %_then3146, label %_else3147
_then3146:
  %_r3154 = load i64, i64* %_r3140
  %_l3153 = load i64, i64* %_l3139
  %_a3152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3138
  %_call3155 = call i64 @partition({ i64, [0 x i64] }* %_a3152, i64 %_l3153, i64 %_r3154)
  store i64 %_call3155, i64* %_j3144
  %_j3159 = load i64, i64* %_j3144
  %_bop3160 = sub i64 %_j3159, 1
  %_l3158 = load i64, i64* %_l3139
  %_a3157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3138
  call void @quick_sort({ i64, [0 x i64] }* %_a3157, i64 %_l3158, i64 %_bop3160)
  %_r3165 = load i64, i64* %_r3140
  %_j3163 = load i64, i64* %_j3144
  %_bop3164 = add i64 %_j3163, 1
  %_a3162 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3138
  call void @quick_sort({ i64, [0 x i64] }* %_a3162, i64 %_bop3164, i64 %_r3165)
  br label %_join3148
_else3147:
  br label %_join3148
_join3148:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %a, i64 %l, i64 %r) {
  %_a3027 = alloca { i64, [0 x i64] }*
  %_l3028 = alloca i64
  %_r3029 = alloca i64
  %_pivot3037 = alloca i64
  %_i3040 = alloca i64
  %_j3044 = alloca i64
  %_t3046 = alloca i64
  %_done3048 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a3027
  store i64 %l, i64* %_l3028
  store i64 %r, i64* %_r3029
  %_a3033 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_l3034 = load i64, i64* %_l3028
  %_gep3035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3033, i32 0, i32 1, i64 %_l3034
  %_load3036 = load i64, i64* %_gep3035
  store i64 %_load3036, i64* %_pivot3037
  %_l3039 = load i64, i64* %_l3028
  store i64 %_l3039, i64* %_i3040
  %_r3042 = load i64, i64* %_r3029
  %_bop3043 = add i64 %_r3042, 1
  store i64 %_bop3043, i64* %_j3044
  store i64 0, i64* %_t3046
  store i64 0, i64* %_done3048
  br label %_while_cond3050
_while_cond3050:
  %_done3053 = load i64, i64* %_done3048
  %_bop3054 = icmp eq i64 %_done3053, 0
  br i1 %_bop3054, label %_while_body3051, label %_while_exit3052
_while_body3051:
  %_i3055 = load i64, i64* %_i3040
  %_bop3056 = add i64 %_i3055, 1
  store i64 %_bop3056, i64* %_i3040
  br label %_while_cond3058
_while_cond3058:
  %_a3061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_i3062 = load i64, i64* %_i3040
  %_gep3063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3061, i32 0, i32 1, i64 %_i3062
  %_load3064 = load i64, i64* %_gep3063
  %_pivot3065 = load i64, i64* %_pivot3037
  %_bop3066 = icmp sle i64 %_load3064, %_pivot3065
  %_i3067 = load i64, i64* %_i3040
  %_r3068 = load i64, i64* %_r3029
  %_bop3069 = icmp sle i64 %_i3067, %_r3068
  %_bop3070 = and i1 %_bop3066, %_bop3069
  br i1 %_bop3070, label %_while_body3059, label %_while_exit3060
_while_body3059:
  %_i3071 = load i64, i64* %_i3040
  %_bop3072 = add i64 %_i3071, 1
  store i64 %_bop3072, i64* %_i3040
  br label %_while_cond3058
_while_exit3060:
  %_j3074 = load i64, i64* %_j3044
  %_bop3075 = sub i64 %_j3074, 1
  store i64 %_bop3075, i64* %_j3044
  br label %_while_cond3077
_while_cond3077:
  %_a3080 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_j3081 = load i64, i64* %_j3044
  %_gep3082 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3080, i32 0, i32 1, i64 %_j3081
  %_load3083 = load i64, i64* %_gep3082
  %_pivot3084 = load i64, i64* %_pivot3037
  %_bop3085 = icmp sgt i64 %_load3083, %_pivot3084
  br i1 %_bop3085, label %_while_body3078, label %_while_exit3079
_while_body3078:
  %_j3086 = load i64, i64* %_j3044
  %_bop3087 = sub i64 %_j3086, 1
  store i64 %_bop3087, i64* %_j3044
  br label %_while_cond3077
_while_exit3079:
  %_i3092 = load i64, i64* %_i3040
  %_j3093 = load i64, i64* %_j3044
  %_bop3094 = icmp sge i64 %_i3092, %_j3093
  br i1 %_bop3094, label %_then3089, label %_else3090
_then3089:
  store i64 1, i64* %_done3048
  br label %_join3091
_else3090:
  br label %_join3091
_join3091:
  %_done3099 = load i64, i64* %_done3048
  %_bop3100 = icmp eq i64 %_done3099, 0
  br i1 %_bop3100, label %_then3096, label %_else3097
_then3096:
  %_a3101 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_i3102 = load i64, i64* %_i3040
  %_gep3103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3101, i32 0, i32 1, i64 %_i3102
  %_load3104 = load i64, i64* %_gep3103
  store i64 %_load3104, i64* %_t3046
  %_a3106 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_j3107 = load i64, i64* %_j3044
  %_gep3108 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3106, i32 0, i32 1, i64 %_j3107
  %_load3109 = load i64, i64* %_gep3108
  %_a3110 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_i3111 = load i64, i64* %_i3040
  %_gep3112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3110, i32 0, i32 1, i64 %_i3111
  store i64 %_load3109, i64* %_gep3112
  %_t3114 = load i64, i64* %_t3046
  %_a3115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_j3116 = load i64, i64* %_j3044
  %_gep3117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3115, i32 0, i32 1, i64 %_j3116
  store i64 %_t3114, i64* %_gep3117
  br label %_join3098
_else3097:
  br label %_join3098
_join3098:
  br label %_while_cond3050
_while_exit3052:
  %_a3119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_l3120 = load i64, i64* %_l3028
  %_gep3121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3119, i32 0, i32 1, i64 %_l3120
  %_load3122 = load i64, i64* %_gep3121
  store i64 %_load3122, i64* %_t3046
  %_a3124 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_j3125 = load i64, i64* %_j3044
  %_gep3126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3124, i32 0, i32 1, i64 %_j3125
  %_load3127 = load i64, i64* %_gep3126
  %_a3128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_l3129 = load i64, i64* %_l3028
  %_gep3130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3128, i32 0, i32 1, i64 %_l3129
  store i64 %_load3127, i64* %_gep3130
  %_t3132 = load i64, i64* %_t3046
  %_a3133 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3027
  %_j3134 = load i64, i64* %_j3044
  %_gep3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3133, i32 0, i32 1, i64 %_j3134
  store i64 %_t3132, i64* %_gep3135
  %_j3137 = load i64, i64* %_j3044
  ret i64 %_j3137
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2993 = alloca i64
  %_argv2994 = alloca { i64, [0 x i8*] }*
  %_a3017 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2993
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2994
  %_raw_array2997 = call i64* @oat_alloc_array(i64 9)
  %_array2998 = bitcast i64* %_raw_array2997 to { i64, [0 x i64] }*
  %_gep_lit2999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 0
  store i64 107, i64* %_gep_lit2999
  %_gep_lit3001 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 1
  store i64 112, i64* %_gep_lit3001
  %_gep_lit3003 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 2
  store i64 121, i64* %_gep_lit3003
  %_gep_lit3005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 3
  store i64 102, i64* %_gep_lit3005
  %_gep_lit3007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 4
  store i64 123, i64* %_gep_lit3007
  %_gep_lit3009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 5
  store i64 115, i64* %_gep_lit3009
  %_gep_lit3011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 6
  store i64 104, i64* %_gep_lit3011
  %_gep_lit3013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 7
  store i64 111, i64* %_gep_lit3013
  %_gep_lit3015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2998, i32 0, i32 1, i32 8
  store i64 109, i64* %_gep_lit3015
  store { i64, [0 x i64] }* %_array2998, { i64, [0 x i64] }** %_a3017
  %_a3019 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3017
  %_call3020 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3019)
  call void @print_string(i8* %_call3020)
  %_a3022 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3017
  call void @quick_sort({ i64, [0 x i64] }* %_a3022, i64 0, i64 8)
  %_a3024 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3017
  %_call3025 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3024)
  call void @print_string(i8* %_call3025)
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
