; generated from: ./sharedtests/dbernhard/str_cat.oat
target triple = "x86_64-unknown-linux"
@str = global i8* bitcast ([3 x i8]* @_str6337 to i8*)
@_str6337 = global [3 x i8] c"he\00"
@_str6335 = global [3 x i8] c"ll\00"
@_str6331 = global [2 x i8] c"o\00"

define i8* @get() {
  %_strptr6336 = bitcast [3 x i8]* @_str6335 to i8*
  ret i8* %_strptr6336
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6324 = alloca i64
  %_args6325 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6324
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6325
  %_strptr6332 = bitcast [2 x i8]* @_str6331 to i8*
  %_call6329 = call i8* @get()
  %_str6328 = load i8*, i8** @str
  %_call6330 = call i8* @string_cat(i8* %_str6328, i8* %_call6329)
  %_call6333 = call i8* @string_cat(i8* %_call6330, i8* %_strptr6332)
  call void @print_string(i8* %_call6333)
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
