; generated from: ./sharedtests/nicdard/arlocal1.oat
target triple = "x86_64-unknown-linux"
@v = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [2 x { i64, [0 x i64] }*] }* @_global_arr7846 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_global_arr7846 = global { i64, [2 x { i64, [0 x i64] }*] } { i64 2, [2 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7844 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7845 to { i64, [0 x i64] }*) ] }
@_global_arr7844 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_global_arr7845 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 15, i64 16, i64 17 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7816 = alloca i64
  %_args7817 = alloca { i64, [0 x i8*] }*
  %_v7842 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc7816
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7817
  %_raw_array7820 = call i64* @oat_alloc_array(i64 2)
  %_array7821 = bitcast i64* %_raw_array7820 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array7822 = call i64* @oat_alloc_array(i64 3)
  %_array7823 = bitcast i64* %_raw_array7822 to { i64, [0 x i64] }*
  %_gep_lit7824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7823, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit7824
  %_gep_lit7826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7823, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit7826
  %_gep_lit7828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7823, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit7828
  %_gep_lit7830 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7821, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array7823, { i64, [0 x i64] }** %_gep_lit7830
  %_raw_array7832 = call i64* @oat_alloc_array(i64 3)
  %_array7833 = bitcast i64* %_raw_array7832 to { i64, [0 x i64] }*
  %_gep_lit7834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7833, i32 0, i32 1, i32 0
  store i64 15, i64* %_gep_lit7834
  %_gep_lit7836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7833, i32 0, i32 1, i32 1
  store i64 16, i64* %_gep_lit7836
  %_gep_lit7838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array7833, i32 0, i32 1, i32 2
  store i64 17, i64* %_gep_lit7838
  %_gep_lit7840 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array7821, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array7833, { i64, [0 x i64] }** %_gep_lit7840
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array7821, { i64, [0 x { i64, [0 x i64] }*] }** %_v7842
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
