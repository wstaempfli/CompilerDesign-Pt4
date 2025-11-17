; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1131 = alloca i64
  %_argv1132 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc1131
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1132
  %_raw_array1135 = call i64* @oat_alloc_array(i64 3)
  %_array1136 = bitcast i64* %_raw_array1135 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1137 = call i64* @oat_alloc_array(i64 2)
  %_array1138 = bitcast i64* %_raw_array1137 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1139 = call i64* @oat_alloc_array(i64 2)
  %_array1140 = bitcast i64* %_raw_array1139 to { i64, [0 x i64] }*
  %_gep_lit1141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1140, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit1141
  %_gep_lit1143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1140, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit1143
  %_gep_lit1145 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1138, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1140, { i64, [0 x i64] }** %_gep_lit1145
  %_raw_array1147 = call i64* @oat_alloc_array(i64 2)
  %_array1148 = bitcast i64* %_raw_array1147 to { i64, [0 x i64] }*
  %_gep_lit1149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1148, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit1149
  %_gep_lit1151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1148, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit1151
  %_gep_lit1153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1138, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1148, { i64, [0 x i64] }** %_gep_lit1153
  %_gep_lit1155 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1136, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1138, { i64, [0 x { i64, [0 x i64] }*] }** %_gep_lit1155
  %_raw_array1157 = call i64* @oat_alloc_array(i64 1)
  %_array1158 = bitcast i64* %_raw_array1157 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1159 = call i64* @oat_alloc_array(i64 1)
  %_array1160 = bitcast i64* %_raw_array1159 to { i64, [0 x i64] }*
  %_gep_lit1161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1160, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep_lit1161
  %_gep_lit1163 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1158, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1160, { i64, [0 x i64] }** %_gep_lit1163
  %_gep_lit1165 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1136, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1158, { i64, [0 x { i64, [0 x i64] }*] }** %_gep_lit1165
  %_raw_array1167 = call i64* @oat_alloc_array(i64 2)
  %_array1168 = bitcast i64* %_raw_array1167 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1169 = call i64* @oat_alloc_array(i64 2)
  %_array1170 = bitcast i64* %_raw_array1169 to { i64, [0 x i64] }*
  %_gep_lit1171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1170, i32 0, i32 1, i32 0
  store i64 10, i64* %_gep_lit1171
  %_gep_lit1173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1170, i32 0, i32 1, i32 1
  store i64 20, i64* %_gep_lit1173
  %_gep_lit1175 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1168, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1170, { i64, [0 x i64] }** %_gep_lit1175
  %_raw_array1177 = call i64* @oat_alloc_array(i64 2)
  %_array1178 = bitcast i64* %_raw_array1177 to { i64, [0 x i64] }*
  %_gep_lit1179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1178, i32 0, i32 1, i32 0
  store i64 30, i64* %_gep_lit1179
  %_gep_lit1181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1178, i32 0, i32 1, i32 1
  store i64 40, i64* %_gep_lit1181
  %_gep_lit1183 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1168, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1178, { i64, [0 x i64] }** %_gep_lit1183
  %_gep_lit1185 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1136, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1168, { i64, [0 x { i64, [0 x i64] }*] }** %_gep_lit1185
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1136, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1188 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_gep1189 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1188, i32 0, i32 1, i32 2
  %_load1190 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_gep1189
  %_gep1191 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load1190, i32 0, i32 1, i32 0
  %_load1192 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep1191
  %_gep1193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1192, i32 0, i32 1, i32 1
  %_load1194 = load i64, i64* %_gep1193
  ret i64 %_load1194
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
