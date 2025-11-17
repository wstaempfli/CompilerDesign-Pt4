; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2893 = alloca i64
  %_argv2894 = alloca { i64, [0 x i8*] }*
  %_a2919 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc2893
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2894
  %_raw_array2897 = call i64* @oat_alloc_array(i64 10)
  %_array2898 = bitcast i64* %_raw_array2897 to { i64, [0 x i64] }*
  %_gep_lit2899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 0
  store i64 126, i64* %_gep_lit2899
  %_gep_lit2901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 1
  store i64 125, i64* %_gep_lit2901
  %_gep_lit2903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 2
  store i64 124, i64* %_gep_lit2903
  %_gep_lit2905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 3
  store i64 123, i64* %_gep_lit2905
  %_gep_lit2907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 4
  store i64 122, i64* %_gep_lit2907
  %_gep_lit2909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 5
  store i64 121, i64* %_gep_lit2909
  %_gep_lit2911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 6
  store i64 120, i64* %_gep_lit2911
  %_gep_lit2913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 7
  store i64 119, i64* %_gep_lit2913
  %_gep_lit2915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 8
  store i64 118, i64* %_gep_lit2915
  %_gep_lit2917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2898, i32 0, i32 1, i32 9
  store i64 117, i64* %_gep_lit2917
  store { i64, [0 x i64] }* %_array2898, { i64, [0 x i64] }** %_a2919
  %_a2921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2919
  %_call2922 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2921)
  call void @print_string(i8* %_call2922)
  ret i64 0
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
