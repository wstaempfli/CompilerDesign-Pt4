; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %x, i64 %y) {
  %_x5047 = alloca i64
  %_y5048 = alloca i64
  store i64 %x, i64* %_x5047
  store i64 %y, i64* %_y5048
  %_x5054 = load i64, i64* %_x5047
  %_y5055 = load i64, i64* %_y5048
  %_bop5056 = icmp eq i64 %_x5054, %_y5055
  br i1 %_bop5056, label %_then5051, label %_else5052
_then5051:
  %_x5057 = load i64, i64* %_x5047
  ret i64 %_x5057
_else5052:
  br label %_ifend5053
_ifend5053:
  %_x5061 = load i64, i64* %_x5047
  %_bop5062 = icmp eq i64 %_x5061, 0
  br i1 %_bop5062, label %_then5058, label %_else5059
_then5058:
  %_y5063 = load i64, i64* %_y5048
  ret i64 %_y5063
_else5059:
  br label %_ifend5060
_ifend5060:
  %_y5067 = load i64, i64* %_y5048
  %_bop5068 = icmp eq i64 %_y5067, 0
  br i1 %_bop5068, label %_then5064, label %_else5065
_then5064:
  %_x5069 = load i64, i64* %_x5047
  ret i64 %_x5069
_else5065:
  br label %_ifend5066
_ifend5066:
  %_x5073 = load i64, i64* %_x5047
  %_uop5074 = xor i64 %_x5073, -1
  %_bop5075 = and i64 %_uop5074, 1
  %_bop5076 = icmp eq i64 %_bop5075, 1
  br i1 %_bop5076, label %_then5070, label %_else5071
_then5070:
  %_y5080 = load i64, i64* %_y5048
  %_bop5081 = and i64 %_y5080, 1
  %_bop5082 = icmp eq i64 %_bop5081, 1
  br i1 %_bop5082, label %_then5077, label %_else5078
_then5077:
  %_y5085 = load i64, i64* %_y5048
  %_x5083 = load i64, i64* %_x5047
  %_bop5084 = lshr i64 %_x5083, 1
  %_call5086 = call i64 @binary_gcd(i64 %_bop5084, i64 %_y5085)
  ret i64 %_call5086
_else5078:
  %_y5089 = load i64, i64* %_y5048
  %_bop5090 = lshr i64 %_y5089, 1
  %_x5087 = load i64, i64* %_x5047
  %_bop5088 = lshr i64 %_x5087, 1
  %_call5091 = call i64 @binary_gcd(i64 %_bop5088, i64 %_bop5090)
  %_bop5092 = shl i64 %_call5091, 1
  ret i64 %_bop5092
_ifend5079:
  br label %_ifend5072
_else5071:
  br label %_ifend5072
_ifend5072:
  %_y5096 = load i64, i64* %_y5048
  %_uop5097 = xor i64 %_y5096, -1
  %_bop5098 = and i64 %_uop5097, 1
  %_bop5099 = icmp eq i64 %_bop5098, 1
  br i1 %_bop5099, label %_then5093, label %_else5094
_then5093:
  %_y5101 = load i64, i64* %_y5048
  %_bop5102 = lshr i64 %_y5101, 1
  %_x5100 = load i64, i64* %_x5047
  %_call5103 = call i64 @binary_gcd(i64 %_x5100, i64 %_bop5102)
  ret i64 %_call5103
_else5094:
  br label %_ifend5095
_ifend5095:
  %_x5107 = load i64, i64* %_x5047
  %_y5108 = load i64, i64* %_y5048
  %_bop5109 = icmp sgt i64 %_x5107, %_y5108
  br i1 %_bop5109, label %_then5104, label %_else5105
_then5104:
  %_y5114 = load i64, i64* %_y5048
  %_x5110 = load i64, i64* %_x5047
  %_y5111 = load i64, i64* %_y5048
  %_bop5112 = sub i64 %_x5110, %_y5111
  %_bop5113 = lshr i64 %_bop5112, 1
  %_call5115 = call i64 @binary_gcd(i64 %_bop5113, i64 %_y5114)
  ret i64 %_call5115
_else5105:
  br label %_ifend5106
_ifend5106:
  %_x5120 = load i64, i64* %_x5047
  %_y5116 = load i64, i64* %_y5048
  %_x5117 = load i64, i64* %_x5047
  %_bop5118 = sub i64 %_y5116, %_x5117
  %_bop5119 = lshr i64 %_bop5118, 1
  %_call5121 = call i64 @binary_gcd(i64 %_bop5119, i64 %_x5120)
  ret i64 %_call5121
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5036 = alloca i64
  %_argv5037 = alloca { i64, [0 x i8*] }*
  %_x5040 = alloca i64
  %_y5042 = alloca i64
  store i64 %argc, i64* %_argc5036
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5037
  store i64 21, i64* %_x5040
  store i64 15, i64* %_y5042
  %_y5045 = load i64, i64* %_y5042
  %_x5044 = load i64, i64* %_x5040
  %_call5046 = call i64 @binary_gcd(i64 %_x5044, i64 %_y5045)
  ret i64 %_call5046
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
