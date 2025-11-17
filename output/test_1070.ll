; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc10 = alloca i64
  %_argv12 = alloca { i64, [0 x i8*] }*
  %_x14 = alloca i64
  %_i16 = alloca i64
  store i64 %argc, i64* %_argc10
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv12
  store i64 0, i64* %_x14
  store i64 0, i64* %_i16
  br label %_while_cond18
_while_cond18:
  %_load21 = load i64, i64* %_i16
  %_bop22 = icmp slt i64 %_load21, 10
  br i1 %_bop22, label %_while_body19, label %_while_exit20
_while_body19:
  %_load23 = load i64, i64* %_x14
  %_load24 = load i64, i64* %_i16
  %_bop25 = add i64 %_load23, %_load24
  %_load26 = load i64, i64* %_i16
  %_bop27 = mul i64 %_bop25, %_load26
  store i64 %_bop27, i64* %_x14
  %_load29 = load i64, i64* %_i16
  %_bop30 = add i64 %_load29, 1
  store i64 %_bop30, i64* %_i16
  br label %_while_cond18
_while_exit20:
  %_load32 = load i64, i64* %_x14
  ret i64 %_load32
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
