; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1273 = alloca i64
  %_x2274 = alloca i64
  %_x3275 = alloca i64
  %_x4276 = alloca i64
  %_x5277 = alloca i64
  %_x6278 = alloca i64
  %_x7279 = alloca i64
  %_x8280 = alloca i64
  %_x1289 = load i64, i64* %_x1273
  %_x2290 = load i64, i64* %_x2274
  %_bop291 = add i64 %_x1289, %_x2290
  %_x3292 = load i64, i64* %_x3275
  %_bop293 = add i64 %_bop291, %_x3292
  %_x4294 = load i64, i64* %_x4276
  %_bop295 = add i64 %_bop293, %_x4294
  %_x5296 = load i64, i64* %_x5277
  %_bop297 = add i64 %_bop295, %_x5296
  %_x6298 = load i64, i64* %_x6278
  %_bop299 = add i64 %_bop297, %_x6298
  %_x7300 = load i64, i64* %_x7279
  %_bop301 = add i64 %_bop299, %_x7300
  %_x8302 = load i64, i64* %_x8280
  %_bop303 = add i64 %_bop301, %_x8302
  ret i64 %_bop303
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc265 = alloca i64
  %_argv266 = alloca { i64, [0 x i8*] }*
  %_uop271 = sub i64 0, 3
  %_uop270 = sub i64 0, 4
  %_uop269 = sub i64 0, 5
  %_call272 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop269, i64 %_uop270, i64 %_uop271)
  ret i64 %_call272
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
