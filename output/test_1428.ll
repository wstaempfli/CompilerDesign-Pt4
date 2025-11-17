; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_str2791 to i8*)
@_str2791 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2761 = alloca i64
  %_argv2762 = alloca { i64, [0 x i8*] }*
  %_arr2767 = alloca { i64, [0 x i64] }*
  %_s2769 = alloca i64
  %_i2771 = alloca i64
  store i64 %argc, i64* %_argc2761
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2762
  %_str2765 = load i8*, i8** @str
  %_function2766 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2765)
  store { i64, [0 x i64] }* %_function2766, { i64, [0 x i64] }** %_arr2767
  store i64 0, i64* %_s2769
  store i64 0, i64* %_i2771
  br label %_for_cond2773
_for_cond2773:
  %_i2776 = load i64, i64* %_i2771
  %_bop2777 = icmp slt i64 %_i2776, 5
  br i1 %_bop2777, label %_for_body2774, label %_for_exit2775
_for_body2774:
  %_s2778 = load i64, i64* %_s2769
  %_arr2779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2767
  %_i2780 = load i64, i64* %_i2771
  %_gep2781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2779, i32 0, i32 1, i64 %_i2780
  %_load2782 = load i64, i64* %_gep2781
  %_bop2783 = add i64 %_s2778, %_load2782
  store i64 %_bop2783, i64* %_s2769
  %_i2785 = load i64, i64* %_i2771
  %_bop2786 = add i64 %_i2785, 1
  store i64 %_bop2786, i64* %_i2771
  br label %_for_cond2773
_for_exit2775:
  %_s2788 = load i64, i64* %_s2769
  call void @print_int(i64 %_s2788)
  %_s2790 = load i64, i64* %_s2769
  ret i64 %_s2790
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
