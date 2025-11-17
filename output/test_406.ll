; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %a, i64 %len) {
  %_a5066 = alloca { i64, [0 x i64] }*
  %_len5067 = alloca i64
  %_i5070 = alloca i64
  %_j5072 = alloca i64
  %_tmp5103 = alloca i64
  store { i64, [0 x i64] }* %a, { i64, [0 x i64] }** %_a5066
  store i64 %len, i64* %_len5067
  store i64 1, i64* %_i5070
  store i64 2, i64* %_j5072
  br label %_while_cond5074
_while_cond5074:
  %_i5077 = load i64, i64* %_i5070
  %_len5078 = load i64, i64* %_len5067
  %_bop5079 = icmp slt i64 %_i5077, %_len5078
  br i1 %_bop5079, label %_while_body5075, label %_while_exit5076
_while_body5075:
  %_a5083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5066
  %_i5084 = load i64, i64* %_i5070
  %_bop5085 = sub i64 %_i5084, 1
  %_gep5086 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5083, i32 0, i32 1, i64 %_bop5085
  %_load5087 = load i64, i64* %_gep5086
  %_a5088 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5066
  %_i5089 = load i64, i64* %_i5070
  %_gep5090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5088, i32 0, i32 1, i64 %_i5089
  %_load5091 = load i64, i64* %_gep5090
  %_bop5092 = icmp sle i64 %_load5087, %_load5091
  br i1 %_bop5092, label %_then5080, label %_else5081
_then5080:
  %_j5093 = load i64, i64* %_j5072
  store i64 %_j5093, i64* %_i5070
  %_j5095 = load i64, i64* %_j5072
  %_bop5096 = add i64 %_j5095, 1
  store i64 %_bop5096, i64* %_j5072
  br label %_join5082
_else5081:
  %_a5098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5066
  %_i5099 = load i64, i64* %_i5070
  %_bop5100 = sub i64 %_i5099, 1
  %_gep5101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5098, i32 0, i32 1, i64 %_bop5100
  %_load5102 = load i64, i64* %_gep5101
  store i64 %_load5102, i64* %_tmp5103
  %_a5105 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5066
  %_i5106 = load i64, i64* %_i5070
  %_gep5107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5105, i32 0, i32 1, i64 %_i5106
  %_load5108 = load i64, i64* %_gep5107
  %_a5109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5066
  %_i5110 = load i64, i64* %_i5070
  %_bop5111 = sub i64 %_i5110, 1
  %_gep5112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5109, i32 0, i32 1, i64 %_bop5111
  store i64 %_load5108, i64* %_gep5112
  %_tmp5114 = load i64, i64* %_tmp5103
  %_a5115 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5066
  %_i5116 = load i64, i64* %_i5070
  %_gep5117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a5115, i32 0, i32 1, i64 %_i5116
  store i64 %_tmp5114, i64* %_gep5117
  %_i5119 = load i64, i64* %_i5070
  %_bop5120 = sub i64 %_i5119, 1
  store i64 %_bop5120, i64* %_i5070
  %_i5125 = load i64, i64* %_i5070
  %_bop5126 = icmp eq i64 %_i5125, 0
  br i1 %_bop5126, label %_then5122, label %_else5123
_then5122:
  %_j5127 = load i64, i64* %_j5072
  store i64 %_j5127, i64* %_i5070
  %_j5129 = load i64, i64* %_j5072
  %_bop5130 = add i64 %_j5129, 1
  store i64 %_bop5130, i64* %_j5072
  br label %_join5124
_else5123:
  br label %_join5124
_join5124:
  br label %_join5082
_join5082:
  br label %_while_cond5074
_while_exit5076:
  ret void
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5022 = alloca i64
  %_argv5023 = alloca { i64, [0 x i8*] }*
  %_arr5044 = alloca { i64, [0 x i64] }*
  %_len5046 = alloca i64
  %_i5051 = alloca i64
  store i64 %argc, i64* %_argc5022
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5023
  %_raw_array5026 = call i64* @oat_alloc_array(i64 8)
  %_array5027 = bitcast i64* %_raw_array5026 to { i64, [0 x i64] }*
  %_gep_lit5028 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep_lit5028
  %_gep_lit5030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 1
  store i64 200, i64* %_gep_lit5030
  %_gep_lit5032 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit5032
  %_gep_lit5034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 3
  store i64 65, i64* %_gep_lit5034
  %_gep_lit5036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 4
  store i64 30, i64* %_gep_lit5036
  %_gep_lit5038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 5
  store i64 99, i64* %_gep_lit5038
  %_gep_lit5040 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 6
  store i64 2, i64* %_gep_lit5040
  %_gep_lit5042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5027, i32 0, i32 1, i32 7
  store i64 0, i64* %_gep_lit5042
  store { i64, [0 x i64] }* %_array5027, { i64, [0 x i64] }** %_arr5044
  store i64 8, i64* %_len5046
  %_len5049 = load i64, i64* %_len5046
  %_arr5048 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5044
  call void @gnomeSort({ i64, [0 x i64] }* %_arr5048, i64 %_len5049)
  store i64 0, i64* %_i5051
  br label %_for_cond5053
_for_cond5053:
  %_i5056 = load i64, i64* %_i5051
  %_bop5057 = icmp slt i64 %_i5056, 8
  br i1 %_bop5057, label %_for_body5054, label %_for_exit5055
_for_body5054:
  %_arr5058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5044
  %_i5059 = load i64, i64* %_i5051
  %_gep5060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5058, i32 0, i32 1, i64 %_i5059
  %_load5061 = load i64, i64* %_gep5060
  call void @print_int(i64 %_load5061)
  %_i5063 = load i64, i64* %_i5051
  %_bop5064 = add i64 %_i5063, 1
  store i64 %_bop5064, i64* %_i5051
  br label %_for_cond5053
_for_exit5055:
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
