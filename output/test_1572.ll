; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc92 = alloca i64
  %_argv93 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc92
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv93
  %_uop99 = xor i64 5, -1
  %_bop100 = and i64 %_uop99, 6
  %_bop101 = or i64 2, 0
  %_bop102 = icmp sge i64 %_bop100, %_bop101
  br i1 %_bop102, label %_then96, label %_else97
_then96:
  ret i64 23
_else97:
  ret i64 46
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
