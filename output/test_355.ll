; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42

define i64 @f(i64 %x) {
  %_x1008 = alloca i64
  store i64 %x, i64* %_x1008
  %_x1010 = load i64, i64* %_x1008
  ret i64 %_x1010
}

define i64 @g({ i64, [0 x i64] }* %y) {
  %_y1003 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %y, { i64, [0 x i64] }** %_y1003
  %_y1005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1003
  %_gep1006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y1005, i32 0, i32 1, i32 2
  %_load1007 = load i64, i64* %_gep1006
  ret i64 %_load1007
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc932 = alloca i64
  %_argv933 = alloca { i64, [0 x i8*] }*
  %_garr954 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr966 = alloca { i64, [0 x i64] }*
  %_p968 = alloca i64
  %_j970 = alloca i64
  store i64 %argc, i64* %_argc932
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv933
  %_raw_array936 = call i64* @oat_alloc_array(i64 2)
  %_array937 = bitcast i64* %_raw_array936 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array938 = call i64* @oat_alloc_array(i64 2)
  %_array939 = bitcast i64* %_raw_array938 to { i64, [0 x i64] }*
  %_gep_lit940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array939, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit940
  %_gep_lit942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array939, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit942
  %_gep_lit944 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array937, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array939, { i64, [0 x i64] }** %_gep_lit944
  %_raw_array946 = call i64* @oat_alloc_array(i64 2)
  %_array947 = bitcast i64* %_raw_array946 to { i64, [0 x i64] }*
  %_gep_lit948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array947, i32 0, i32 1, i32 0
  store i64 3, i64* %_gep_lit948
  %_gep_lit950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array947, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit950
  %_gep_lit952 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array937, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array947, { i64, [0 x i64] }** %_gep_lit952
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array937, { i64, [0 x { i64, [0 x i64] }*] }** %_garr954
  %_raw_array956 = call i64* @oat_alloc_array(i64 4)
  %_array957 = bitcast i64* %_raw_array956 to { i64, [0 x i64] }*
  %_gep_lit958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array957, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit958
  %_gep_lit960 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array957, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep_lit960
  %_gep_lit962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array957, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit962
  %_gep_lit964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array957, i32 0, i32 1, i32 3
  store i64 4, i64* %_gep_lit964
  store { i64, [0 x i64] }* %_array957, { i64, [0 x i64] }** %_arr966
  store i64 0, i64* %_p968
  store i64 0, i64* %_j970
  br label %_for_cond972
_for_cond972:
  %_j975 = load i64, i64* %_j970
  %_bop976 = icmp slt i64 %_j975, 100
  br i1 %_bop976, label %_for_body973, label %_for_exit974
_for_body973:
  %_p977 = load i64, i64* %_p968
  %_bop978 = add i64 %_p977, 1
  store i64 %_bop978, i64* %_p968
  %_j980 = load i64, i64* %_j970
  %_bop981 = add i64 %_j980, 1
  store i64 %_bop981, i64* %_j970
  br label %_for_cond972
_for_exit974:
  %_arr983 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr966
  %_call984 = call i64 @g({ i64, [0 x i64] }* %_arr983)
  %_i985 = load i64, i64* @i
  %_call986 = call i64 @f(i64 %_i985)
  %_bop987 = add i64 %_call984, %_call986
  %_arr988 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr966
  %_gep989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr988, i32 0, i32 1, i32 3
  %_load990 = load i64, i64* %_gep989
  %_call991 = call i64 @f(i64 %_load990)
  %_bop992 = add i64 %_bop987, %_call991
  %_garr993 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr954
  %_gep994 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr993, i32 0, i32 1, i32 1
  %_load995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep994
  %_gep996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load995, i32 0, i32 1, i32 1
  %_load997 = load i64, i64* %_gep996
  %_call998 = call i64 @f(i64 %_load997)
  %_bop999 = add i64 %_bop992, %_call998
  %_p1000 = load i64, i64* %_p968
  %_call1001 = call i64 @f(i64 %_p1000)
  %_bop1002 = add i64 %_bop999, %_call1001
  ret i64 %_bop1002
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
