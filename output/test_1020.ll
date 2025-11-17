; generated from: ./sharedtests/dbernhard/array_indexing.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr6269 to { i64, [0 x i64] }*)
@_global_arr6269 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@arr2 = global { i64, [0 x i64] }* bitcast ({ i64, [4 x i64] }* @_global_arr6268 to { i64, [0 x i64] }*)
@_global_arr6268 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 101, i64 102, i64 103, i64 104 ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6253 = alloca i64
  %_argv6254 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6253
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6254
  %_arr26257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_call6258 = call i64 @get_index()
  %_gep6259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr26257, i32 0, i32 1, i64 %_call6258
  %_load6260 = load i64, i64* %_gep6259
  %_arr26261 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr2
  %_arr6262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_gep6263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr6262, i32 0, i32 1, i32 0
  %_load6264 = load i64, i64* %_gep6263
  %_gep6265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr26261, i32 0, i32 1, i64 %_load6264
  %_load6266 = load i64, i64* %_gep6265
  %_bop6267 = add i64 %_load6260, %_load6266
  ret i64 %_bop6267
}

define i64 @get_index() {
  ret i64 2
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
