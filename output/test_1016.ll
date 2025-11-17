; generated from: ./sharedtests/dbernhard/simple_while.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6173 = alloca i64
  %_args6174 = alloca { i64, [0 x i8*] }*
  %_x6177 = alloca i64
  store i64 %argc, i64* %_argc6173
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6174
  store i64 0, i64* %_x6177
  br label %_while_cond6179
_while_cond6179:
  %_x6182 = load i64, i64* %_x6177
  %_bop6183 = icmp slt i64 %_x6182, 10
  br i1 %_bop6183, label %_while_body6180, label %_while_exit6181
_while_body6180:
  %_x6184 = load i64, i64* %_x6177
  %_bop6185 = add i64 %_x6184, 1
  store i64 %_bop6185, i64* %_x6177
  br label %_while_cond6179
_while_exit6181:
  %_x6187 = load i64, i64* %_x6177
  ret i64 %_x6187
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
