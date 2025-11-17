; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr453 to { i64, [0 x i64] }*)
@_global_arr453 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@y = global { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr452 to { i64, [0 x i64] }*)
@_global_arr452 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %x, { i64, [0 x i64] }* %y, i1 %b) {
  %_x454 = alloca { i64, [0 x i64] }*
  %_y455 = alloca { i64, [0 x i64] }*
  %_b456 = alloca i1
  store { i64, [0 x i64] }* %x, { i64, [0 x i64] }** %_x454
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y455
  store i1 %b, i1* %_b456
  %_b463 = load i1, i1* %_b456
  br i1 %_b463, label %_then460, label %_else461
_then460:
  %_x464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x454
  ret { i64, [0 x i64] }* %_x464
_else461:
  %_y465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y455
  ret { i64, [0 x i64] }* %_y465
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc429 = alloca i64
  %_argv430 = alloca { i64, [0 x i8*] }*
  %_z449 = alloca i64
  store i64 %argc, i64* %_argc429
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv430
  %_y434 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_call435 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x433, { i64, [0 x i64] }* %_y434, i1 1)
  %_gep436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call435, i32 0, i32 1, i32 0
  store i64 17, i64* %_gep436
  %_y439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_x438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_call440 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x438, { i64, [0 x i64] }* %_y439, i1 1)
  %_gep441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call440, i32 0, i32 1, i32 0
  %_load442 = load i64, i64* %_gep441
  %_x444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @x
  %_y443 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @y
  %_call445 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_y443, { i64, [0 x i64] }* %_x444, i1 0)
  %_gep446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call445, i32 0, i32 1, i32 0
  %_load447 = load i64, i64* %_gep446
  %_bop448 = add i64 %_load442, %_load447
  store i64 %_bop448, i64* %_z449
  %_z451 = load i64, i64* %_z449
  ret i64 %_z451
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
