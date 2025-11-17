; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x1108 = alloca i64
  store i64 %x, i64* %_x1108
  %_x1110 = load i64, i64* %_x1108
  ret i64 %_x1110
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y1103 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y1103
  %_y1105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1103
  %_gep1106 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y1105, i32 0, i32 1, i32 2
  %_load1107 = load i64, i64* %_gep1106
  ret i64 %_load1107
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1032 = alloca i64
  %_argv1033 = alloca { i64, [0 x i8*] }*
  %_garr1054 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1066 = alloca { i64, [0 x i64] }*
  %_p1068 = alloca i64
  %_j1070 = alloca i64
  store i64 %argc, i64* %_argc1032
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1033
  %_raw_array1036 = call i64* @oat_alloc_array(i64 2)
  %_array1037 = bitcast i64* %_raw_array1036 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1038 = call i64* @oat_alloc_array(i64 2)
  %_array1039 = bitcast i64* %_raw_array1038 to { i64, [0 x i64] }*
  %_gep_lit1040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1039, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1040
  %_gep_lit1042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1039, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1042
  %_gep_lit1044 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1037, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1039, { i64, [0 x i64] }** %_gep_lit1044
  %_raw_array1046 = call i64* @oat_alloc_array(i64 2)
  %_array1047 = bitcast i64* %_raw_array1046 to { i64, [0 x i64] }*
  %_gep_lit1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1047, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1048
  %_gep_lit1050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1047, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1050
  %_gep_lit1052 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1037, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1047, { i64, [0 x i64] }** %_gep_lit1052
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1037, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1054
  %_raw_array1056 = call i64* @oat_alloc_array(i64 4)
  %_array1057 = bitcast i64* %_raw_array1056 to { i64, [0 x i64] }*
  %_gep_lit1058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1057, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1058
  %_gep_lit1060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1057, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1060
  %_gep_lit1062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1057, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit1062
  %_gep_lit1064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1057, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep_lit1064
  store { i64, [0 x i64] }* %_array1057, { i64, [0 x i64] }** %_arr1066
  store i64 0, i64* %_p1068
  store i64 0, i64* %_j1070
  br label %_while_cond1072
_while_cond1072:
  %_j1075 = load i64, i64* %_j1070
  %_bop1076 = icmp slt i64 %_j1075, 100
  br i1 %_bop1076, label %_while_body1073, label %_while_end1074
_while_body1073:
  %_p1077 = load i64, i64* %_p1068
  %_bop1078 = add i64 %_p1077, 1
  store i64 %_bop1078, i64* %_p1068
  %_j1080 = load i64, i64* %_j1070
  %_bop1081 = add i64 %_j1080, 1
  store i64 %_bop1081, i64* %_j1070
  br label %_while_end1074
_while_end1074:
  %_arr1083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1066
  %_call1084 = call i64 @g({ i64, [0 x i64] }* %_arr1083)
  %_i1085 = load i64, i64* @i
  %_call1086 = call i64 @f(i64 %_i1085)
  %_bop1087 = add i64 %_call1084, %_call1086
  %_arr1088 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1066
  %_gep1089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1088, i32 0, i32 1, i32 3
  %_load1090 = load i64, i64* %_gep1089
  %_call1091 = call i64 @f(i64 %_load1090)
  %_bop1092 = add i64 %_bop1087, %_call1091
  %_garr1093 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1054
  %_gep1094 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1093, i32 0, i32 1, i32 1
  %_load1095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1094
  %_gep1096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1095, i32 0, i32 1, i32 1
  %_load1097 = load i64, i64* %_gep1096
  %_call1098 = call i64 @f(i64 %_load1097)
  %_bop1099 = add i64 %_bop1092, %_call1098
  %_p1100 = load i64, i64* %_p1068
  %_call1101 = call i64 @f(i64 %_p1100)
  %_bop1102 = add i64 %_bop1099, %_call1101
  ret i64 %_bop1102
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
