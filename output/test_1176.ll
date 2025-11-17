; generated from: ./sharedtests/dbernhard/simple_while2.oat
target triple = "x86_64-unknown-linux"
@counter = global i64 100

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6190 = alloca i64
  %_args6192 = alloca { i64, [0 x i8*] }*
  %_x6194 = alloca i64
  store i64 %argc, i64* %_argc6190
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6192
  store i64 0, i64* %_x6194
  br label %_while_cond6196
_while_cond6196:
  %_call6199 = call i1 @condition()
  br i1 %_call6199, label %_while_body6197, label %_while_exit6198
_while_body6197:
  %_load6200 = load i64, i64* %_x6194
  %_bop6201 = add i64 %_load6200, 1
  store i64 %_bop6201, i64* %_x6194
  %_load6203 = load i64, i64* @counter
  %_bop6204 = sub i64 %_load6203, 1
  store i64 %_bop6204, i64* @counter
  br label %_while_cond6196
_while_exit6198:
  %_load6206 = load i64, i64* %_x6194
  ret i64 %_load6206
}

define i1 @condition() {
  %_load6188 = load i64, i64* @counter
  %_bop6189 = icmp sgt i64 %_load6188, 50
  ret i1 %_bop6189
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
