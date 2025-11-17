; generated from: ./sharedtests/nicdard/arlocal2.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_global_arr7863 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_global_arr7863 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7861 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7862 to { i64, [0 x i64] }*) ] }
@_global_arr7861 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_global_arr7862 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7850 = alloca i64
  %_args7852 = alloca { i64, [0 x i8*] }*
  %_v7856 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc7850
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7852
  %_raw_array7854 = call i64* @oat_alloc_array(i64 2)
  %_array7855 = bitcast i64* %_raw_array7854 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array7855, { i64, [0 x i64] }** %_v7856
  %_load7858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_v7856
  %_gep7859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load7858, i32 0, i32 1, i32 1
  %_load7860 = load i64, i64* %_gep7859
  ret i64 %_load7860
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
