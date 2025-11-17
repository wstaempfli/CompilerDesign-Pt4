; generated from: ./sharedtests/dbernhard/advanced_add.oat
target triple = "x86_64-unknown-linux"
@mat_1 = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_global_arr6591 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_global_arr6591 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr6588 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr6589 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr6590 to { i64, [0 x i64] }*) ] }
@_global_arr6588 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 4, i64 3 ] }
@_global_arr6589 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 9, i64 1, i64 2 ] }
@_global_arr6590 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 2, i64 0, i64 1 ] }

define { i64, [0 x i64] }* @get() {
  %_load6585 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_gep6586 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6585, i32 0, i32 1, i32 0
  %_load6587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6586
  ret { i64, [0 x i64] }* %_load6587
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6563 = alloca i64
  %_args6565 = alloca { i64, [0 x i8*] }*
  %_x6582 = alloca i64
  store i64 %argc, i64* %_argc6563
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6565
  %_load6567 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_gep6568 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6567, i32 0, i32 1, i32 1
  %_load6569 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6568
  %_gep6570 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6569, i32 0, i32 1, i32 1
  %_load6571 = load i64, i64* %_gep6570
  %_load6572 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @mat_1
  %_gep6573 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6572, i32 0, i32 1, i32 2
  %_load6574 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6573
  %_gep6575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6574, i32 0, i32 1, i32 0
  %_load6576 = load i64, i64* %_gep6575
  %_bop6577 = add i64 %_load6571, %_load6576
  %_call6578 = call { i64, [0 x i64] }* @get()
  %_gep6579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_call6578, i32 0, i32 1, i32 0
  %_load6580 = load i64, i64* %_gep6579
  %_bop6581 = add i64 %_bop6577, %_load6580
  store i64 %_bop6581, i64* %_x6582
  %_load6584 = load i64, i64* %_x6582
  ret i64 %_load6584
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
