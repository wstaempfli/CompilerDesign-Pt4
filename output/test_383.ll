; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([6 x i8]* @_str2691 to i8*)
@_str2691 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2661 = alloca i64
  %_argv2662 = alloca { i64, [0 x i8*] }*
  %_arr2667 = alloca { i64, [0 x i64] }*
  %_s2669 = alloca i64
  %_i2671 = alloca i64
  store i64 %argc, i64* %_argc2661
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2662
  %_str2665 = load i8*, i8** @str
  %_call2666 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2665)
  store { i64, [0 x i64] }* %_call2666, { i64, [0 x i64] }** %_arr2667
  store i64 0, i64* %_s2669
  store i64 0, i64* %_i2671
  br label %_for_cond2673
_for_cond2673:
  %_i2676 = load i64, i64* %_i2671
  %_bop2677 = icmp slt i64 %_i2676, 5
  br i1 %_bop2677, label %_for_body2674, label %_for_exit2675
_for_body2674:
  %_s2678 = load i64, i64* %_s2669
  %_arr2679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2667
  %_i2680 = load i64, i64* %_i2671
  %_gep2681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2679, i32 0, i32 1, i64 %_i2680
  %_load2682 = load i64, i64* %_gep2681
  %_bop2683 = add i64 %_s2678, %_load2682
  store i64 %_bop2683, i64* %_s2669
  %_i2685 = load i64, i64* %_i2671
  %_bop2686 = add i64 %_i2685, 1
  store i64 %_bop2686, i64* %_i2671
  br label %_for_cond2673
_for_exit2675:
  %_s2688 = load i64, i64* %_s2669
  call void @print_int(i64 %_s2688)
  %_s2690 = load i64, i64* %_s2669
  ret i64 %_s2690
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
