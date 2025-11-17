; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc118 = alloca i64
  %_argv119 = alloca { i64, [0 x i8*] }*
  %_i122 = alloca i64
  %_j127 = alloca i64
  store i64 %argc, i64* %_argc118
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv119
  store i64 9, i64* %_i122
  %_i124 = load i64, i64* %_i122
  %_i125 = load i64, i64* %_i122
  %_bop126 = add i64 %_i124, %_i125
  store i64 %_bop126, i64* %_j127
  %_i129 = load i64, i64* %_i122
  %_i130 = load i64, i64* %_i122
  %_i131 = load i64, i64* %_i122
  %_bop132 = mul i64 %_i130, %_i131
  %_bop133 = add i64 %_i129, %_bop132
  %_j134 = load i64, i64* %_j127
  %_bop135 = sub i64 %_bop133, %_j134
  %_bop136 = lshr i64 %_bop135, 2
  %_bop137 = shl i64 %_bop136, 2
  %_bop138 = ashr i64 %_bop137, 2
  ret i64 %_bop138
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
