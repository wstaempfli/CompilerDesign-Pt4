; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc225 = alloca i64
  %_argv226 = alloca { i64, [0 x i8*] }*
  %_i229 = alloca i64
  %_j234 = alloca i64
  store i64 %argc, i64* %_argc225
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv226
  store i64 9, i64* %_i229
  %_i231 = load i64, i64* %_i229
  %_i232 = load i64, i64* %_i229
  %_bop233 = add i64 %_i231, %_i232
  store i64 %_bop233, i64* %_j234
  %_i236 = load i64, i64* %_i229
  %_i237 = load i64, i64* %_i229
  %_i238 = load i64, i64* %_i229
  %_bop239 = mul i64 %_i237, %_i238
  %_bop240 = add i64 %_i236, %_bop239
  %_j241 = load i64, i64* %_j234
  %_bop242 = sub i64 %_bop240, %_j241
  %_bop243 = lshr i64 %_bop242, 2
  %_bop244 = shl i64 %_bop243, 2
  %_bop245 = ashr i64 %_bop244, 2
  ret i64 %_bop245
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
