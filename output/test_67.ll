; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i127 = alloca i64
  %_j132 = alloca i64
  %_argc123 = alloca i64
  %_argv124 = alloca { i64, [0 x i8*] }*
  store i64 9, i64* %_i127
  %_i129 = load i64, i64* %_i127
  %_i130 = load i64, i64* %_i127
  %_bop131 = add i64 %_i129, %_i130
  store i64 %_bop131, i64* %_j132
  %_i134 = load i64, i64* %_i127
  %_i135 = load i64, i64* %_i127
  %_i136 = load i64, i64* %_i127
  %_bop137 = mul i64 %_i135, %_i136
  %_bop138 = add i64 %_i134, %_bop137
  %_j139 = load i64, i64* %_j132
  %_bop140 = sub i64 %_bop138, %_j139
  %_bop141 = lshr i64 %_bop140, 2
  %_bop142 = shl i64 %_bop141, 2
  %_bop143 = ashr i64 %_bop142, 2
  ret i64 %_bop143
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
