; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i253 = alloca i64
  %_i255 = load i64, i64* %_i253
  %_call256 = call i64 @f2(i64 %_i255)
  ret i64 %_call256
}

define i64 @f2(i64 %i) {
  %_i249 = alloca i64
  %_i251 = load i64, i64* %_i249
  %_call252 = call i64 @f3(i64 %_i251)
  ret i64 %_call252
}

define i64 @f3(i64 %i) {
  %_i245 = alloca i64
  %_i247 = load i64, i64* %_i245
  %_call248 = call i64 @f4(i64 %_i247)
  ret i64 %_call248
}

define i64 @f4(i64 %i) {
  %_i241 = alloca i64
  %_i243 = load i64, i64* %_i241
  %_call244 = call i64 @f5(i64 %_i243)
  ret i64 %_call244
}

define i64 @f5(i64 %i) {
  %_i237 = alloca i64
  %_i239 = load i64, i64* %_i237
  %_call240 = call i64 @f6(i64 %_i239)
  ret i64 %_call240
}

define i64 @f6(i64 %i) {
  %_i233 = alloca i64
  %_i235 = load i64, i64* %_i233
  %_call236 = call i64 @f7(i64 %_i235)
  ret i64 %_call236
}

define i64 @f7(i64 %i) {
  %_i229 = alloca i64
  %_i231 = load i64, i64* %_i229
  %_call232 = call i64 @f8(i64 %_i231)
  ret i64 %_call232
}

define i64 @f8(i64 %i) {
  %_i225 = alloca i64
  %_i227 = load i64, i64* %_i225
  %_call228 = call i64 @f9(i64 %_i227)
  ret i64 %_call228
}

define i64 @f9(i64 %i) {
  %_i222 = alloca i64
  %_i224 = load i64, i64* %_i222
  ret i64 %_i224
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc216 = alloca i64
  %_argv217 = alloca { i64, [0 x i8*] }*
  %_argc220 = load i64, i64* %_argc216
  %_call221 = call i64 @f1(i64 %_argc220)
  ret i64 %_call221
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
