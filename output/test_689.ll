; generated from: ./sharedtests/nicdard/if.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc7890 = alloca i64
  %_argv7891 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc7890
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv7891
  br i1 0, label %_then7894, label %_else7895
_then7894:
  ret i64 1
_else7895:
  br label %_join7896
_join7896:
  br i1 0, label %_then7897, label %_else7898
_then7897:
  ret i64 2
_else7898:
  ret i64 3
_join7899:
  br i1 0, label %_then7900, label %_else7901
_then7900:
  ret i64 4
_else7901:
  br i1 1, label %_then7903, label %_else7904
_then7903:
  ret i64 5
_else7904:
  br label %_join7905
_join7905:
  br label %_join7902
_join7902:
  br i1 0, label %_then7906, label %_else7907
_then7906:
  ret i64 6
_else7907:
  br i1 1, label %_then7909, label %_else7910
_then7909:
  ret i64 7
_else7910:
  ret i64 8
_join7911:
  br label %_join7908
_join7908:
  br i1 0, label %_then7912, label %_else7913
_then7912:
  br i1 1, label %_then7915, label %_else7916
_then7915:
  ret i64 9
_else7916:
  ret i64 10
_join7917:
  br label %_join7914
_else7913:
  br i1 1, label %_then7918, label %_else7919
_then7918:
  ret i64 71
_else7919:
  ret i64 12
_join7920:
  br label %_join7914
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
