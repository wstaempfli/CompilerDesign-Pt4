; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc103 = alloca i64
  %_argv104 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc103
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv104
  %_bop110 = icmp ne i64 6, 5
  br i1 %_bop110, label %_then107, label %_else108
_then107:
  %_bop111 = shl i64 5, 17
  %_bop112 = lshr i64 %_bop111, 2
  %_bop113 = ashr i64 %_bop112, 10
  %_uop114 = xor i64 %_bop113, -1
  %_bop115 = mul i64 %_uop114, 2
  %_bop116 = sub i64 %_bop115, 100
  %_bop117 = add i64 %_bop116, 6
  ret i64 %_bop117
_else108:
  ret i64 2
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
