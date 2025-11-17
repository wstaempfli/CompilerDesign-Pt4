; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x4947 = alloca i64
  %_y4948 = alloca i64
  store i64 %x, i64* %_x4947
  store i64 %y, i64* %_y4948
  %_x4954 = load i64, i64* %_x4947
  %_y4955 = load i64, i64* %_y4948
  %_bop4956 = icmp eq i64 %_x4954, %_y4955
  br i1 %_bop4956, label %_then4951, label %_else4952
_then4951:
  %_x4957 = load i64, i64* %_x4947
  ret i64 %_x4957
_else4952:
  br label %_join4953
_join4953:
  %_x4961 = load i64, i64* %_x4947
  %_bop4962 = icmp eq i64 %_x4961, 0
  br i1 %_bop4962, label %_then4958, label %_else4959
_then4958:
  %_y4963 = load i64, i64* %_y4948
  ret i64 %_y4963
_else4959:
  br label %_join4960
_join4960:
  %_y4967 = load i64, i64* %_y4948
  %_bop4968 = icmp eq i64 %_y4967, 0
  br i1 %_bop4968, label %_then4964, label %_else4965
_then4964:
  %_x4969 = load i64, i64* %_x4947
  ret i64 %_x4969
_else4965:
  br label %_join4966
_join4966:
  %_x4973 = load i64, i64* %_x4947
  %_uop4974 = xor i64 %_x4973, -1
  %_bop4975 = and i64 %_uop4974, 1
  %_bop4976 = icmp eq i64 %_bop4975, 1
  br i1 %_bop4976, label %_then4970, label %_else4971
_then4970:
  %_y4980 = load i64, i64* %_y4948
  %_bop4981 = and i64 %_y4980, 1
  %_bop4982 = icmp eq i64 %_bop4981, 1
  br i1 %_bop4982, label %_then4977, label %_else4978
_then4977:
  %_y4985 = load i64, i64* %_y4948
  %_x4983 = load i64, i64* %_x4947
  %_bop4984 = lshr i64 %_x4983, 1
  %_call4986 = call i64 @binary_gcd(i64 %_bop4984, i64 %_y4985)
  ret i64 %_call4986
_else4978:
  %_y4989 = load i64, i64* %_y4948
  %_bop4990 = lshr i64 %_y4989, 1
  %_x4987 = load i64, i64* %_x4947
  %_bop4988 = lshr i64 %_x4987, 1
  %_call4991 = call i64 @binary_gcd(i64 %_bop4988, i64 %_bop4990)
  %_bop4992 = shl i64 %_call4991, 1
  ret i64 %_bop4992
_join4979:
  br label %_join4972
_else4971:
  br label %_join4972
_join4972:
  %_y4996 = load i64, i64* %_y4948
  %_uop4997 = xor i64 %_y4996, -1
  %_bop4998 = and i64 %_uop4997, 1
  %_bop4999 = icmp eq i64 %_bop4998, 1
  br i1 %_bop4999, label %_then4993, label %_else4994
_then4993:
  %_y5001 = load i64, i64* %_y4948
  %_bop5002 = lshr i64 %_y5001, 1
  %_x5000 = load i64, i64* %_x4947
  %_call5003 = call i64 @binary_gcd(i64 %_x5000, i64 %_bop5002)
  ret i64 %_call5003
_else4994:
  br label %_join4995
_join4995:
  %_x5007 = load i64, i64* %_x4947
  %_y5008 = load i64, i64* %_y4948
  %_bop5009 = icmp sgt i64 %_x5007, %_y5008
  br i1 %_bop5009, label %_then5004, label %_else5005
_then5004:
  %_y5014 = load i64, i64* %_y4948
  %_x5010 = load i64, i64* %_x4947
  %_y5011 = load i64, i64* %_y4948
  %_bop5012 = sub i64 %_x5010, %_y5011
  %_bop5013 = lshr i64 %_bop5012, 1
  %_call5015 = call i64 @binary_gcd(i64 %_bop5013, i64 %_y5014)
  ret i64 %_call5015
_else5005:
  br label %_join5006
_join5006:
  %_x5020 = load i64, i64* %_x4947
  %_y5016 = load i64, i64* %_y4948
  %_x5017 = load i64, i64* %_x4947
  %_bop5018 = sub i64 %_y5016, %_x5017
  %_bop5019 = lshr i64 %_bop5018, 1
  %_call5021 = call i64 @binary_gcd(i64 %_bop5019, i64 %_x5020)
  ret i64 %_call5021
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4936 = alloca i64
  %_argv4937 = alloca { i64, [0 x i8*] }*
  %_x4940 = alloca i64
  %_y4942 = alloca i64
  store i64 %argc, i64* %_argc4936
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4937
  store i64 21, i64* %_x4940
  store i64 15, i64* %_y4942
  %_y4945 = load i64, i64* %_y4942
  %_x4944 = load i64, i64* %_x4940
  %_call4946 = call i64 @binary_gcd(i64 %_x4944, i64 %_y4945)
  ret i64 %_call4946
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
