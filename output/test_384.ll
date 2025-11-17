; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str2696 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2692 = alloca i64
  %_argv2693 = alloca { i64, [0 x i8*] }*
  %_str2698 = alloca i8*
  %_arr2702 = alloca { i64, [0 x i64] }*
  %_s2704 = alloca i64
  %_i2706 = alloca i64
  store i64 %argc, i64* %_argc2692
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2693
  %_strptr2697 = bitcast [6 x i8]* @_str2696 to i8*
  store i8* %_strptr2697, i8** %_str2698
  %_str2700 = load i8*, i8** %_str2698
  %_call2701 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2700)
  store { i64, [0 x i64] }* %_call2701, { i64, [0 x i64] }** %_arr2702
  store i64 0, i64* %_s2704
  store i64 0, i64* %_i2706
  br label %_for_cond2708
_for_cond2708:
  %_i2711 = load i64, i64* %_i2706
  %_bop2712 = icmp slt i64 %_i2711, 5
  br i1 %_bop2712, label %_for_body2709, label %_for_exit2710
_for_body2709:
  %_s2713 = load i64, i64* %_s2704
  %_arr2714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2702
  %_i2715 = load i64, i64* %_i2706
  %_gep2716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2714, i32 0, i32 1, i64 %_i2715
  %_load2717 = load i64, i64* %_gep2716
  %_bop2718 = add i64 %_s2713, %_load2717
  store i64 %_bop2718, i64* %_s2704
  %_i2720 = load i64, i64* %_i2706
  %_bop2721 = add i64 %_i2720, 1
  store i64 %_bop2721, i64* %_i2706
  br label %_for_cond2708
_for_exit2710:
  %_s2723 = load i64, i64* %_s2704
  ret i64 %_s2723
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
