; generated from: ./sharedtests/dbernhard/printing.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([3 x i8]* @_str7370 to i8*)
@_str7370 = global [3 x i8] c"he\00"
@_str7368 = global [3 x i8] c"ll\00"
@_str7365 = global [2 x i8] c"o\00"

define i8* @get() {
  %_strptr7369 = bitcast [3 x i8]* @_str7368 to i8*
  ret i8* %_strptr7369
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc7357 = alloca i64
  %_args7359 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7357
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args7359
  %_load7361 = load i8*, i8** @str
  call void @print_string(i8* %_load7361)
  %_call7363 = call i8* @get()
  call void @print_string(i8* %_call7363)
  %_strptr7366 = bitcast [2 x i8]* @_str7365 to i8*
  call void @print_string(i8* %_strptr7366)
  ret i64 42
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
