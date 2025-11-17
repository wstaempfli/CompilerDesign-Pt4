; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc657 = alloca i64
  %_argv658 = alloca { i64, [0 x i8*] }*
  %_arr679 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc657
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv658
  %_raw_array661 = call i64* @oat_alloc_array(i64 2)
  %_array662 = bitcast i64* %_raw_array661 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array663 = call i64* @oat_alloc_array(i64 2)
  %_array664 = bitcast i64* %_raw_array663 to { i64, [0 x i64] }*
  store i64 1, i64* %_gep665
  %_gep665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array664, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep667
  %_gep667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array664, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array664, { i64, [0 x i64] }** %_gep669
  %_gep669 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 0
  %_raw_array671 = call i64* @oat_alloc_array(i64 2)
  %_array672 = bitcast i64* %_raw_array671 to { i64, [0 x i64] }*
  store i64 3, i64* %_gep673
  %_gep673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array672, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep675
  %_gep675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array672, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array672, { i64, [0 x i64] }** %_gep677
  %_gep677 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array662, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array662, { i64, [0 x { i64, [0 x i64] }*] }** %_arr679
  %_arr681 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr679
  %_load683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr682
  %_gep_ptr682 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr681, i32 0, i32 1, i32 0
  %_load685 = load i64, i64* %_gep_ptr684
  %_gep_ptr684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load683, i32 0, i32 1, i32 0
  ret i64 %_load685
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
