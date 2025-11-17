; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11

define i64 @f() {
  %_i180 = alloca i64
  store i64 12, i64* %_i180
  %_i182 = load i64, i64* %_i180
  ret i64 %_i182
}

define i64 @g() {
  %_i177 = alloca i64
  store i64 10, i64* %_i177
  %_i179 = load i64, i64* %_i177
  ret i64 %_i179
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc168 = alloca i64
  %_argv169 = alloca { i64, [0 x i8*] }*
  %_call172 = call i64 @f()
  %_call173 = call i64 @g()
  %_bop174 = add i64 %_call172, %_call173
  %_i175 = load i64, i64* @i
  %_bop176 = add i64 %_bop174, %_i175
  ret i64 %_bop176
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
