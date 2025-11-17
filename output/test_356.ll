; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0

define i64 @f(i64 %x, i64 %y) {
  %_x1024 = alloca i64
  %_y1025 = alloca i64
  %_r1028 = alloca i64
  store i64 %x, i64* %_x1024
  store i64 %y, i64* %_y1025
  store i64 0, i64* %_r1028
  %_x1033 = load i64, i64* %_x1024
  %_bop1034 = icmp sge i64 %_x1033, 1
  br i1 %_bop1034, label %_then1030, label %_else1031
_then1030:
  %_y1037 = load i64, i64* %_y1025
  %_x1035 = load i64, i64* %_x1024
  %_bop1036 = sub i64 %_x1035, 1
  %_call1038 = call i64 @f(i64 %_bop1036, i64 %_y1037)
  %_bop1039 = add i64 1, %_call1038
  store i64 %_bop1039, i64* %_r1028
  br label %_join1032
_else1031:
  %_x1041 = load i64, i64* %_x1024
  %_y1042 = load i64, i64* %_y1025
  %_bop1043 = add i64 %_x1041, %_y1042
  store i64 %_bop1043, i64* %_r1028
  br label %_join1032
_join1032:
  %_r1045 = load i64, i64* %_r1028
  ret i64 %_r1045
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1011 = alloca i64
  %_argv1012 = alloca { i64, [0 x i8*] }*
  %_x1015 = alloca i64
  %_y1017 = alloca i64
  store i64 %argc, i64* %_argc1011
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1012
  store i64 3, i64* %_x1015
  store i64 3, i64* %_y1017
  %_y1020 = load i64, i64* %_y1017
  %_x1019 = load i64, i64* %_x1015
  %_call1021 = call i64 @f(i64 %_x1019, i64 %_y1020)
  %_i1022 = load i64, i64* @i
  %_bop1023 = add i64 %_call1021, %_i1022
  ret i64 %_bop1023
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
