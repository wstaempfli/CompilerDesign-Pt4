; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc413 = alloca i64
  %_argv414 = alloca { i64, [0 x i8*] }*
  %_i417 = alloca i64
  store i64 %argc, i64* %_argc413
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv414
  store i64 0, i64* %_i417
  %_b422 = load i1, i1* @b
  br i1 %_b422, label %_then419, label %_else420
_then419:
  store i64 1, i64* %_i417
  br label %_join421
_else420:
  br label %_join421
_join421:
  %_i424 = load i64, i64* %_i417
  ret i64 %_i424
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
