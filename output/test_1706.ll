; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc553 = alloca i64
  %_argv554 = alloca { i64, [0 x i8*] }*
  %_b563 = alloca { i64, [0 x i1] }*
  %_i565 = alloca i64
  store i64 %argc, i64* %_argc553
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv554
  %_raw_array557 = call i64* @oat_alloc_array(i64 2)
  %_array558 = bitcast i64* %_raw_array557 to { i64, [0 x i1] }*
  %_gep_lit559 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array558, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep_lit559
  %_gep_lit561 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array558, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep_lit561
  store { i64, [0 x i1] }* %_array558, { i64, [0 x i1] }** %_b563
  store i64 0, i64* %_i565
  %_b570 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b563
  %_elem_addr571 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b570, i32 0, i32 1, i32 0
  %_read_val572 = load i1, i1* %_elem_addr571
  br i1 %_read_val572, label %_then567, label %_else568
_then567:
  store i64 1, i64* %_i565
  br label %_join569
_else568:
  br label %_join569
_join569:
  %_i574 = load i64, i64* %_i565
  ret i64 %_i574
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
