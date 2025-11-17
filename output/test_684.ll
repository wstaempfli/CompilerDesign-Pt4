; generated from: ./sharedtests/nicdard/arglobal3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_global_arr7798 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_global_arr7798 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_global_arr7795 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_global_arr7796 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_global_arr7797 to { i64, [0 x i64] }*) ] }
@_global_arr7795 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 1, i64 4 ] }
@_global_arr7796 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 2, i64 5 ] }
@_global_arr7797 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 3, i64 6 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7763 = alloca i64
  %_argv7764 = alloca { i64, [0 x i8*] }*
  %_x7781 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc7763
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7764
  %_raw_array7767 = call i64* @oat_alloc_array(i64 3)
  %_array7768 = bitcast i64* %_raw_array7767 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7769 = call i64* @oat_alloc_array(i64 2)
  %_array7770 = bitcast i64* %_raw_array7769 to { i64, [0 x i64] }*
  %_gep_lit7771 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7768, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7770, { i64, [0 x i64] }** %_gep_lit7771
  %_raw_array7773 = call i64* @oat_alloc_array(i64 2)
  %_array7774 = bitcast i64* %_raw_array7773 to { i64, [0 x i64] }*
  %_gep_lit7775 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7768, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7774, { i64, [0 x i64] }** %_gep_lit7775
  %_raw_array7777 = call i64* @oat_alloc_array(i64 2)
  %_array7778 = bitcast i64* %_raw_array7777 to { i64, [0 x i64] }*
  %_gep_lit7779 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7768, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array7778, { i64, [0 x i64] }** %_gep_lit7779
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7768, { i64, [0 x { i64, [0 x i64] }*] }** %_x7781
  %_x7783 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x7781
  store { i64, [0 x { i64, [0 x i64] }*] }* %_x7783, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_x7785 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x7781
  %_gep7786 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x7785, i32 0, i32 1, i32 2
  %_load7787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep7786
  %_gep7788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7787, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep7788
  %_arr7790 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_gep7791 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr7790, i32 0, i32 1, i32 2
  %_load7792 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep7791
  %_gep7793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7792, i32 0, i32 1, i32 2
  %_load7794 = load i64, i64* %_gep7793
  ret i64 %_load7794
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
