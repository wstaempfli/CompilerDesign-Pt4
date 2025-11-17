; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc366 = alloca i64
  %_argv367 = alloca { i64, [0 x i8*] }*
  %_i376 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc366
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv367
  %_raw_array370 = call i64* @oat_alloc_array(i64 2)
  %_array371 = bitcast i64* %_raw_array370 to { i64, [0 x i64] }*
  %_gep_lit372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array371, i32 0, i32 1, i32 0
  store i64 99, i64* %_gep_lit372
  %_gep_lit374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array371, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit374
  store { i64, [0 x i64] }* %_array371, { i64, [0 x i64] }** %_i376
  %_i378 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i376
  %_gep379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i378, i32 0, i32 1, i32 0
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
