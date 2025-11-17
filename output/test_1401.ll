; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x1124 = alloca i64
  %_y1125 = alloca i64
  %_r1128 = alloca i64
  store i64 %x, i64* %_x1124
  store i64 %y, i64* %_y1125
  store i64 0, i64* %_r1128
  %_x1133 = load i64, i64* %_x1124
  %_bop1134 = icmp sge i64 %_x1133, 1
  br i1 %_bop1134, label %_then1130, label %_else1131
_then1130:
  %_y1137 = load i64, i64* %_y1125
  %_x1135 = load i64, i64* %_x1124
  %_bop1136 = sub i64 %_x1135, 1
  %_function1138 = call i64 @f(i64 %_bop1136, i64 %_y1137)
  %_bop1139 = add i64 1, %_function1138
  store i64 %_bop1139, i64* %_r1128
  br label %_join1132
_else1131:
  %_x1141 = load i64, i64* %_x1124
  %_y1142 = load i64, i64* %_y1125
  %_bop1143 = add i64 %_x1141, %_y1142
  store i64 %_bop1143, i64* %_r1128
  br label %_join1132
_join1132:
  %_r1145 = load i64, i64* %_r1128
  ret i64 %_r1145
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1111 = alloca i64
  %_argv1112 = alloca { i64, [0 x i8*] }*
  %_x1115 = alloca i64
  %_y1117 = alloca i64
  store i64 %argc, i64* %_argc1111
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1112
  store i64 3, i64* %_x1115
  store i64 3, i64* %_y1117
  %_y1120 = load i64, i64* %_y1117
  %_x1119 = load i64, i64* %_x1115
  %_function1121 = call i64 @f(i64 %_x1119, i64 %_y1120)
  %_i1122 = load i64, i64* @i
  %_bop1123 = add i64 %_function1121, %_i1122
  ret i64 %_bop1123
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
