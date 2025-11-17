; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc53 = alloca i64
  %_argv54 = alloca { i64, [0 x i8*] }*
  %_x58 = alloca i64
  %_y61 = alloca i64
  store i64 %argc, i64* %_argc53
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv54
  %_bop57 = lshr i64 100, 3
  store i64 %_bop57, i64* %_x58
  %_bop60 = shl i64 100, 3
  store i64 %_bop60, i64* %_y61
  %_x66 = load i64, i64* %_x58
  %_y67 = load i64, i64* %_y61
  %_bop68 = sub i64 %_x66, %_y67
  %_bop69 = icmp sle i64 %_bop68, 0
  br i1 %_bop69, label %_then63, label %_else64
_then63:
  %_x70 = load i64, i64* %_x58
  %_uop71 = sub i64 0, %_x70
  %_y72 = load i64, i64* %_y61
  %_bop73 = sub i64 %_uop71, %_y72
  ret i64 %_bop73
_else64:
  %_x74 = load i64, i64* %_x58
  %_y75 = load i64, i64* %_y61
  %_bop76 = sub i64 %_x74, %_y75
  ret i64 %_bop76
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
