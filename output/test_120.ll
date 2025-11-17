; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1263 = alloca i64
  %_x2264 = alloca i64
  %_x3265 = alloca i64
  %_x4266 = alloca i64
  %_x5267 = alloca i64
  %_x6268 = alloca i64
  %_x7269 = alloca i64
  %_x8270 = alloca i64
  %_x1279 = load i64, i64* %_x1263
  %_x2280 = load i64, i64* %_x2264
  %_bop281 = add i64 %_x1279, %_x2280
  %_x3282 = load i64, i64* %_x3265
  %_bop283 = add i64 %_bop281, %_x3282
  %_x4284 = load i64, i64* %_x4266
  %_bop285 = add i64 %_bop283, %_x4284
  %_x5286 = load i64, i64* %_x5267
  %_bop287 = add i64 %_bop285, %_x5286
  %_x6288 = load i64, i64* %_x6268
  %_bop289 = add i64 %_bop287, %_x6288
  %_x7290 = load i64, i64* %_x7269
  %_bop291 = add i64 %_bop289, %_x7290
  %_x8292 = load i64, i64* %_x8270
  %_bop293 = add i64 %_bop291, %_x8292
  ret i64 %_bop293
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc255 = alloca i64
  %_argv256 = alloca { i64, [0 x i8*] }*
  %_uop261 = sub i64 0, 3
  %_uop260 = sub i64 0, 4
  %_uop259 = sub i64 0, 5
  %_call262 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop259, i64 %_uop260, i64 %_uop261)
  ret i64 %_call262
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
