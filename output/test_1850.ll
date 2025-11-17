; generated from: oatprograms/run44.oat
target triple = "x86_64-unknown-linux"
@str = global { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* null
@_str2261 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc2237 = alloca i64
  %_argv2238 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc2237
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv2238
  %_raw_array2241 = call i64* @oat_alloc_array(i64 1)
  %_array2242 = bitcast i64* %_raw_array2241 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array2243 = call i64* @oat_alloc_array(i64 1)
  %_array2244 = bitcast i64* %_raw_array2243 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array2245 = call i64* @oat_alloc_array(i64 1)
  %_array2246 = bitcast i64* %_raw_array2245 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array2247 = call i64* @oat_alloc_array(i64 1)
  %_array2248 = bitcast i64* %_raw_array2247 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*
  %_raw_array2249 = call i64* @oat_alloc_array(i64 1)
  %_array2250 = bitcast i64* %_raw_array2249 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*
  %_raw_array2251 = call i64* @oat_alloc_array(i64 1)
  %_array2252 = bitcast i64* %_raw_array2251 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*
  %_raw_array2253 = call i64* @oat_alloc_array(i64 1)
  %_array2254 = bitcast i64* %_raw_array2253 to { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*
  %_raw_array2255 = call i64* @oat_alloc_array(i64 1)
  %_array2256 = bitcast i64* %_raw_array2255 to { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*
  %_raw_array2257 = call i64* @oat_alloc_array(i64 1)
  %_array2258 = bitcast i64* %_raw_array2257 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array2259 = call i64* @oat_alloc_array(i64 1)
  %_array2260 = bitcast i64* %_raw_array2259 to { i64, [0 x i8*] }*
  %_str2262 = bitcast [6 x i8]* @_str2261 to i8*
  %_gep_lit2263 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2260, i32 0, i32 1, i32 0
  store i8* %_str2262, i8** %_gep_lit2263
  %_gep_lit2265 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array2258, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array2260, { i64, [0 x i8*] }** %_gep_lit2265
  %_gep_lit2267 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array2256, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array2258, { i64, [0 x { i64, [0 x i8*] }*] }** %_gep_lit2267
  %_gep_lit2269 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array2254, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_array2256, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_gep_lit2269
  %_gep_lit2271 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array2252, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_array2254, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_gep_lit2271
  %_gep_lit2273 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array2250, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_array2252, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_gep_lit2273
  %_gep_lit2275 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array2248, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_array2250, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_gep_lit2275
  %_gep_lit2277 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array2246, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_array2248, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_gep_lit2277
  %_gep_lit2279 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2244, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_array2246, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_gep_lit2279
  %_gep_lit2281 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2242, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2244, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_gep_lit2281
  store { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_array2242, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_str2284 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }** @str
  %_2285 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_str2284, i32 0, i32 1, i32 0
  %_2286 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }** %_2285
  %_2287 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*] }* %_2286, i32 0, i32 1, i32 0
  %_2288 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }** %_2287
  %_2289 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*] }* %_2288, i32 0, i32 1, i32 0
  %_2290 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }** %_2289
  %_2291 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*] }* %_2290, i32 0, i32 1, i32 0
  %_2292 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }** %_2291
  %_2293 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*] }* %_2292, i32 0, i32 1, i32 0
  %_2294 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }** %_2293
  %_2295 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*] }* %_2294, i32 0, i32 1, i32 0
  %_2296 = load { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }** %_2295
  %_2297 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*] }* %_2296, i32 0, i32 1, i32 0
  %_2298 = load { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }** %_2297
  %_2299 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i8*] }*] }*] }* %_2298, i32 0, i32 1, i32 0
  %_2300 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_2299
  %_2301 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_2300, i32 0, i32 1, i32 0
  %_2302 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_2301
  %_2303 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_2302, i32 0, i32 1, i32 0
  %_2304 = load i8*, i8** %_2303
  call void @print_string(i8* %_2304)
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
