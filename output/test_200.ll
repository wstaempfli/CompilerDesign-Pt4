; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1081 = alloca i64
  %_argv1082 = alloca { i64, [0 x i8*] }*
  %_x1085 = alloca i64
  %_a1146 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1149 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc1081
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1082
  store i64 10, i64* %_x1085
  %_raw_array1087 = call i64* @oat_alloc_array(i64 3)
  %_array1088 = bitcast i64* %_raw_array1087 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1089 = call i64* @oat_alloc_array(i64 3)
  %_array1090 = bitcast i64* %_raw_array1089 to { i64, [0 x i64] }*
  %_x1091 = load i64, i64* %_x1085
  %_bop1092 = add i64 %_x1091, 0
  %_bop1093 = add i64 %_bop1092, 0
  store i64 %_bop1093, i64* %_gep1094
  %_gep1094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1090, i32 0, i32 1, i32 0
  %_x1096 = load i64, i64* %_x1085
  %_bop1097 = add i64 %_x1096, 0
  %_bop1098 = add i64 %_bop1097, 1
  store i64 %_bop1098, i64* %_gep1099
  %_gep1099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1090, i32 0, i32 1, i32 1
  %_x1101 = load i64, i64* %_x1085
  %_bop1102 = add i64 %_x1101, 0
  %_bop1103 = add i64 %_bop1102, 2
  store i64 %_bop1103, i64* %_gep1104
  %_gep1104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1090, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1090, { i64, [0 x i64] }** %_gep1106
  %_gep1106 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1088, i32 0, i32 1, i32 0
  %_raw_array1108 = call i64* @oat_alloc_array(i64 3)
  %_array1109 = bitcast i64* %_raw_array1108 to { i64, [0 x i64] }*
  %_x1110 = load i64, i64* %_x1085
  %_bop1111 = add i64 %_x1110, 1
  %_bop1112 = add i64 %_bop1111, 0
  store i64 %_bop1112, i64* %_gep1113
  %_gep1113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1109, i32 0, i32 1, i32 0
  %_x1115 = load i64, i64* %_x1085
  %_bop1116 = add i64 %_x1115, 1
  %_bop1117 = add i64 %_bop1116, 1
  store i64 %_bop1117, i64* %_gep1118
  %_gep1118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1109, i32 0, i32 1, i32 1
  %_x1120 = load i64, i64* %_x1085
  %_bop1121 = add i64 %_x1120, 1
  %_bop1122 = add i64 %_bop1121, 2
  store i64 %_bop1122, i64* %_gep1123
  %_gep1123 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1109, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1109, { i64, [0 x i64] }** %_gep1125
  %_gep1125 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1088, i32 0, i32 1, i32 1
  %_raw_array1127 = call i64* @oat_alloc_array(i64 3)
  %_array1128 = bitcast i64* %_raw_array1127 to { i64, [0 x i64] }*
  %_x1129 = load i64, i64* %_x1085
  %_bop1130 = add i64 %_x1129, 2
  %_bop1131 = add i64 %_bop1130, 0
  store i64 %_bop1131, i64* %_gep1132
  %_gep1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1128, i32 0, i32 1, i32 0
  %_x1134 = load i64, i64* %_x1085
  %_bop1135 = add i64 %_x1134, 2
  %_bop1136 = add i64 %_bop1135, 1
  store i64 %_bop1136, i64* %_gep1137
  %_gep1137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1128, i32 0, i32 1, i32 1
  %_x1139 = load i64, i64* %_x1085
  %_bop1140 = add i64 %_x1139, 2
  %_bop1141 = add i64 %_bop1140, 2
  store i64 %_bop1141, i64* %_gep1142
  %_gep1142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1128, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1128, { i64, [0 x i64] }** %_gep1144
  %_gep1144 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1088, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1088, { i64, [0 x { i64, [0 x i64] }*] }** %_a1146
  %_a1148 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1146
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1148, { i64, [0 x { i64, [0 x i64] }*] }** %_b1149
  %_b1151 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1149
  %_load1153 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr1152
  %_gep_ptr1152 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1151, i32 0, i32 1, i32 2
  %_load1155 = load i64, i64* %_gep_ptr1154
  %_gep_ptr1154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1153, i32 0, i32 1, i32 1
  ret i64 %_load1155
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
