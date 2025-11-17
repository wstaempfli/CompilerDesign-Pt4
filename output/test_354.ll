; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %x) {
  %_x915 = alloca i64
  %_acc917 = alloca i64
  store i64 %x, i64* %_x915
  store i64 1, i64* %_acc917
  br label %_while_cond919
_while_cond919:
  %_x922 = load i64, i64* %_x915
  %_bop923 = icmp sgt i64 %_x922, 0
  br i1 %_bop923, label %_while_body920, label %_while_exit921
_while_body920:
  %_acc924 = load i64, i64* %_acc917
  %_x925 = load i64, i64* %_x915
  %_bop926 = mul i64 %_acc924, %_x925
  store i64 %_bop926, i64* %_acc917
  %_x928 = load i64, i64* %_x915
  %_bop929 = sub i64 %_x928, 1
  store i64 %_bop929, i64* %_x915
  br label %_while_cond919
_while_exit921:
  %_acc931 = load i64, i64* %_acc917
  ret i64 %_acc931
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc908 = alloca i64
  %_argv909 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc908
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv909
  %_call912 = call i64 @fact(i64 5)
  %_call913 = call i8* @string_of_int(i64 %_call912)
  call void @print_string(i8* %_call913)
  ret i64 0
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
