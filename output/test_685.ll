; generated from: ./sharedtests/nicdard/arlocal0.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x i64] }* bitcast ({ i64, [2 x i64] }* @_global_arr7812 to { i64, [0 x i64] }*)
@_global_arr7812 = global { i64, [2 x i64] } { i64 2, [2 x i64] [ i64 1, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7800 = alloca i64
  %_args7801 = alloca { i64, [0 x i8*] }*
  %_v7810 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc7800
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7801
  %_raw_array7804 = call i64* @oat_alloc_array(i64 2)
  %_array7805 = bitcast i64* %_raw_array7804 to { i64, [0 x i64] }*
  %_gep_lit7806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7805, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit7806
  %_gep_lit7808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7805, i32 0, i32 1, i32 1
  store i64 17, i64* %_gep_lit7808
  store { i64, [0 x i64] }* %_array7805, { i64, [0 x i64] }** %_v7810
  ret i64 15
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
