; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr382 to { i64, [0 x i64] }*)
@_global_arr382 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr381 to { i64, [0 x i64] }*)
@_global_arr381 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x383 = alloca { i64, [0 x i64] }*
  %_y384 = alloca { i64, [0 x i64] }*
  %_b385 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x383
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y384
  store i1 %b, i1* %_b385
  %_b392 = load i1, i1* %_b385
  br i1 %_b392, label %_then389, label %_else390
_then389:
  %_x393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x383
  ret { i64, [0 x i64] }* %_x393
_else390:
  %_y394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y384
  ret { i64, [0 x i64] }* %_y394
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc369 = alloca i64
  %_argv370 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc369
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv370
  store i64 17, i64* %_elem_ptr376
  %_elem_ptr376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call375, i32 0, i32 1, i32 0
  %_y374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_call375 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x373, { i64, [0 x i64] }* %_y374, i1 1)
  %_x378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_gep379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x378, i32 0, i32 1, i32 0
  %_load380 = load i64, i64* %_gep379
  ret i64 %_load380
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
