; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc453 = alloca i64
  %_argv454 = alloca { i64, [0 x i8*] }*
  %_b463 = alloca { i64, [0 x i1] }*
  %_i465 = alloca i64
  store i64 %argc, i64* %_argc453
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv454
  %_raw_array457 = call i64* @oat_alloc_array(i64 2)
  %_array458 = bitcast i64* %_raw_array457 to { i64, [0 x i1] }*
  %_gep_lit459 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array458, i32 0, i32 1, i32 0
  store i1 1, i1* %_gep_lit459
  %_gep_lit461 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array458, i32 0, i32 1, i32 1
  store i1 0, i1* %_gep_lit461
  store { i64, [0 x i1] }* %_array458, { i64, [0 x i1] }** %_b463
  store i64 0, i64* %_i465
  %_b470 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b463
  %_gep471 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b470, i32 0, i32 1, i32 0
  %_load472 = load i1, i1* %_gep471
  br i1 %_load472, label %_then467, label %_else468
_then467:
  store i64 1, i64* %_i465
  br label %_join469
_else468:
  br label %_join469
_join469:
  %_i474 = load i64, i64* %_i465
  ret i64 %_i474
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
