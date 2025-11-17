; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %a, i64 %b) {
  %_a5162 = alloca i64
  %_b5163 = alloca i64
  %_t5172 = alloca i64
  store i64 %a, i64* %_a5162
  store i64 %b, i64* %_b5163
  br label %_while_cond5166
_while_cond5166:
  %_b5169 = load i64, i64* %_b5163
  %_bop5170 = icmp ne i64 %_b5169, 0
  br i1 %_bop5170, label %_while_body5167, label %_while_exit5168
_while_body5167:
  %_b5171 = load i64, i64* %_b5163
  store i64 %_b5171, i64* %_t5172
  %_b5175 = load i64, i64* %_b5163
  %_a5174 = load i64, i64* %_a5162
  %_call5176 = call i64 @mod(i64 %_a5174, i64 %_b5175)
  store i64 %_call5176, i64* %_b5163
  %_t5178 = load i64, i64* %_t5172
  store i64 %_t5178, i64* %_a5162
  br label %_while_cond5166
_while_exit5168:
  %_a5180 = load i64, i64* %_a5162
  ret i64 %_a5180
}

define i64 @mod(i64 %a, i64 %b) {
  %_a5143 = alloca i64
  %_b5144 = alloca i64
  %_t5148 = alloca i64
  store i64 %a, i64* %_a5143
  store i64 %b, i64* %_b5144
  %_a5147 = load i64, i64* %_a5143
  store i64 %_a5147, i64* %_t5148
  br label %_while_cond5150
_while_cond5150:
  %_t5153 = load i64, i64* %_t5148
  %_b5154 = load i64, i64* %_b5144
  %_bop5155 = sub i64 %_t5153, %_b5154
  %_bop5156 = icmp sge i64 %_bop5155, 0
  br i1 %_bop5156, label %_while_body5151, label %_while_exit5152
_while_body5151:
  %_t5157 = load i64, i64* %_t5148
  %_b5158 = load i64, i64* %_b5144
  %_bop5159 = sub i64 %_t5157, %_b5158
  store i64 %_bop5159, i64* %_t5148
  br label %_while_cond5150
_while_exit5152:
  %_t5161 = load i64, i64* %_t5148
  ret i64 %_t5161
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5132 = alloca i64
  %_argv5133 = alloca { i64, [0 x i8*] }*
  %_a5136 = alloca i64
  %_b5138 = alloca i64
  store i64 %argc, i64* %_argc5132
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5133
  store i64 64, i64* %_a5136
  store i64 48, i64* %_b5138
  %_b5141 = load i64, i64* %_b5138
  %_a5140 = load i64, i64* %_a5136
  %_call5142 = call i64 @gcd(i64 %_a5140, i64 %_b5141)
  ret i64 %_call5142
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
