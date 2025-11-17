; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %i) {
  %_i243 = alloca i64
  %_i245 = load i64, i64* %_i243
  %_call246 = call i64 @f2(i64 %_i245)
  ret i64 %_call246
}

define i64 @f2(i64 %i) {
  %_i239 = alloca i64
  %_i241 = load i64, i64* %_i239
  %_call242 = call i64 @f3(i64 %_i241)
  ret i64 %_call242
}

define i64 @f3(i64 %i) {
  %_i235 = alloca i64
  %_i237 = load i64, i64* %_i235
  %_call238 = call i64 @f4(i64 %_i237)
  ret i64 %_call238
}

define i64 @f4(i64 %i) {
  %_i231 = alloca i64
  %_i233 = load i64, i64* %_i231
  %_call234 = call i64 @f5(i64 %_i233)
  ret i64 %_call234
}

define i64 @f5(i64 %i) {
  %_i227 = alloca i64
  %_i229 = load i64, i64* %_i227
  %_call230 = call i64 @f6(i64 %_i229)
  ret i64 %_call230
}

define i64 @f6(i64 %i) {
  %_i223 = alloca i64
  %_i225 = load i64, i64* %_i223
  %_call226 = call i64 @f7(i64 %_i225)
  ret i64 %_call226
}

define i64 @f7(i64 %i) {
  %_i219 = alloca i64
  %_i221 = load i64, i64* %_i219
  %_call222 = call i64 @f8(i64 %_i221)
  ret i64 %_call222
}

define i64 @f8(i64 %i) {
  %_i215 = alloca i64
  %_i217 = load i64, i64* %_i215
  %_call218 = call i64 @f9(i64 %_i217)
  ret i64 %_call218
}

define i64 @f9(i64 %i) {
  %_i212 = alloca i64
  %_i214 = load i64, i64* %_i212
  ret i64 %_i214
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc206 = alloca i64
  %_argv207 = alloca { i64, [0 x i8*] }*
  %_argc210 = load i64, i64* %_argc206
  %_call211 = call i64 @f1(i64 %_argc210)
  ret i64 %_call211
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
