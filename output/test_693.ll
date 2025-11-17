; generated from: ./sharedtests/thbwd/nested_return_array.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7978 = alloca i64
  %_args7979 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7978
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7979
  %_scall_void7982 = call { i64, [0 x i64] }* @function(i64 0)
  %_scall_void7983 = call { i64, [0 x i64] }* @function(i64 1)
  %_scall_void7984 = call { i64, [0 x i64] }* @function(i64 2)
  ret i64 0
}

define { i64, [0 x i64] }* @function(i64 %x) {
  %_x7956 = alloca i64
  store i64 %x, i64* %_x7956
  %_x7961 = load i64, i64* %_x7956
  %_bop7962 = icmp eq i64 %_x7961, 0
  br i1 %_bop7962, label %_then7958, label %_else7959
_then7958:
  ret { i64, [0 x i64] }* null
_else7959:
  %_x7966 = load i64, i64* %_x7956
  %_bop7967 = icmp eq i64 %_x7966, 1
  br i1 %_bop7967, label %_then7963, label %_else7964
_then7963:
  %_raw_array7968 = call i64* @oat_alloc_array(i64 3)
  %_array7969 = bitcast i64* %_raw_array7968 to { i64, [0 x i64] }*
  %_gep_lit7970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7969, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep_lit7970
  %_gep_lit7972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7969, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit7972
  %_gep_lit7974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7969, i32 0, i32 1, i32 2
  store i64 9, i64* %_gep_lit7974
  ret { i64, [0 x i64] }* %_array7969
_else7964:
  %_raw_array7976 = call i64* @oat_alloc_array(i64 6)
  %_array7977 = bitcast i64* %_raw_array7976 to { i64, [0 x i64] }*
  ret { i64, [0 x i64] }* %_array7977
_join7965:
  br label %_join7960
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
