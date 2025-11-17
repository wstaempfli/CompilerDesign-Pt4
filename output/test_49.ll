; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i126 = alloca i64
  %_j131 = alloca i64
  %_argc122 = alloca i64
  %_argv123 = alloca { i64, [0 x i8*] }*
  store i64 9, i64* %_i126
  %_i128 = load i64, i64* %_i126
  %_i129 = load i64, i64* %_i126
  %_bop130 = add i64 %_i128, %_i129
  store i64 %_bop130, i64* %_j131
  %_i133 = load i64, i64* %_i126
  %_i134 = load i64, i64* %_i126
  %_i135 = load i64, i64* %_i126
  %_bop136 = mul i64 %_i134, %_i135
  %_bop137 = add i64 %_i133, %_bop136
  %_j138 = load i64, i64* %_j131
  %_bop139 = sub i64 %_bop137, %_j138
  %_bop140 = lshr i64 %_bop139, 2
  %_bop141 = shl i64 %_bop140, 2
  %_bop142 = ashr i64 %_bop141, 2
  ret i64 %_bop142
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
