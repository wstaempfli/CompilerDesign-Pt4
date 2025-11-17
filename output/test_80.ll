; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i132 = alloca i64
  %_j137 = alloca i64
  %_argc128 = alloca i64
  %_argv129 = alloca { i64, [0 x i8*] }*
  store i64 9, i64* %_i132
  %_i134 = load i64, i64* %_i132
  %_i135 = load i64, i64* %_i132
  %_bop136 = add i64 %_i134, %_i135
  store i64 %_bop136, i64* %_j137
  %_i139 = load i64, i64* %_i132
  %_i140 = load i64, i64* %_i132
  %_i141 = load i64, i64* %_i132
  %_bop142 = mul i64 %_i140, %_i141
  %_bop143 = add i64 %_i139, %_bop142
  %_j144 = load i64, i64* %_j137
  %_bop145 = sub i64 %_bop143, %_j144
  %_bop146 = lshr i64 %_bop145, 2
  %_bop147 = shl i64 %_bop146, 2
  %_bop148 = ashr i64 %_bop147, 2
  ret i64 %_bop148
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
