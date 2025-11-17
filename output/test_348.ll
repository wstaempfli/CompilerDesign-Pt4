; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %x1, i64 %x2, i64 %x3, i64 %x4, i64 %x5, i64 %x6, i64 %x7, i64 %x8) {
  %_x1745 = alloca i64
  %_x2746 = alloca i64
  %_x3747 = alloca i64
  %_x4748 = alloca i64
  %_x5749 = alloca i64
  %_x6750 = alloca i64
  %_x7751 = alloca i64
  %_x8752 = alloca i64
  store i64 %x1, i64* %_x1745
  store i64 %x2, i64* %_x2746
  store i64 %x3, i64* %_x3747
  store i64 %x4, i64* %_x4748
  store i64 %x5, i64* %_x5749
  store i64 %x6, i64* %_x6750
  store i64 %x7, i64* %_x7751
  store i64 %x8, i64* %_x8752
  %_x1761 = load i64, i64* %_x1745
  %_x2762 = load i64, i64* %_x2746
  %_bop763 = add i64 %_x1761, %_x2762
  %_x3764 = load i64, i64* %_x3747
  %_bop765 = add i64 %_bop763, %_x3764
  %_x4766 = load i64, i64* %_x4748
  %_bop767 = add i64 %_bop765, %_x4766
  %_x5768 = load i64, i64* %_x5749
  %_bop769 = add i64 %_bop767, %_x5768
  %_x6770 = load i64, i64* %_x6750
  %_bop771 = add i64 %_bop769, %_x6770
  %_x7772 = load i64, i64* %_x7751
  %_bop773 = add i64 %_bop771, %_x7772
  %_x8774 = load i64, i64* %_x8752
  %_bop775 = add i64 %_bop773, %_x8774
  ret i64 %_bop775
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc737 = alloca i64
  %_argv738 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc737
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv738
  %_uop743 = sub i64 0, 3
  %_uop742 = sub i64 0, 4
  %_uop741 = sub i64 0, 5
  %_call744 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_uop741, i64 %_uop742, i64 %_uop743)
  ret i64 %_call744
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
