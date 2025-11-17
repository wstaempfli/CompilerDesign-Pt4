; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %i) {
  %_i3076 = alloca i64
  %_r3078 = alloca i64
  store i64 %i, i64* %_i3076
  store i64 0, i64* %_r3078
  %_i3083 = load i64, i64* %_i3076
  %_bop3084 = icmp eq i64 %_i3083, 0
  br i1 %_bop3084, label %_then3080, label %_else3081
_then3080:
  store i64 1, i64* %_r3078
  br label %_join3082
_else3081:
  %_i3086 = load i64, i64* %_i3076
  %_i3087 = load i64, i64* %_i3076
  %_bop3088 = sub i64 %_i3087, 1
  %_function3089 = call i64 @f(i64 %_bop3088)
  %_bop3090 = mul i64 %_i3086, %_function3089
  store i64 %_bop3090, i64* %_r3078
  br label %_join3082
_join3082:
  %_r3092 = load i64, i64* %_r3078
  ret i64 %_r3092
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc3071 = alloca i64
  %_argv3072 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc3071
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv3072
  %_function3075 = call i64 @f(i64 5)
  ret i64 %_function3075
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
