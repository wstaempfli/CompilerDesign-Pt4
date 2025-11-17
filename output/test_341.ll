; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc475 = alloca i64
  %_argv476 = alloca { i64, [0 x i8*] }*
  %_a517 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s519 = alloca i64
  %_i521 = alloca i64
  %_j528 = alloca i64
  store i64 %argc, i64* %_argc475
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv476
  %_raw_array479 = call i64* @oat_alloc_array(i64 3)
  %_array480 = bitcast i64* %_raw_array479 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array481 = call i64* @oat_alloc_array(i64 4)
  %_array482 = bitcast i64* %_raw_array481 to { i64, [0 x i64] }*
  %_gep_lit483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array482, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit483
  %_gep_lit485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array482, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit485
  %_gep_lit487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array482, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit487
  %_gep_lit489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array482, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep_lit489
  %_gep_lit491 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array480, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array482, { i64, [0 x i64] }** %_gep_lit491
  %_raw_array493 = call i64* @oat_alloc_array(i64 4)
  %_array494 = bitcast i64* %_raw_array493 to { i64, [0 x i64] }*
  %_gep_lit495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array494, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep_lit495
  %_gep_lit497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array494, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep_lit497
  %_gep_lit499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array494, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep_lit499
  %_gep_lit501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array494, i32 0, i32 1, i32 3
  store i64 7, i64* %_gep_lit501
  %_gep_lit503 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array480, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array494, { i64, [0 x i64] }** %_gep_lit503
  %_raw_array505 = call i64* @oat_alloc_array(i64 4)
  %_array506 = bitcast i64* %_raw_array505 to { i64, [0 x i64] }*
  %_gep_lit507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 0
  store i64 8, i64* %_gep_lit507
  %_gep_lit509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep_lit509
  %_gep_lit511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep_lit511
  %_gep_lit513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array506, i32 0, i32 1, i32 3
  store i64 11, i64* %_gep_lit513
  %_gep_lit515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array480, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array506, { i64, [0 x i64] }** %_gep_lit515
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array480, { i64, [0 x { i64, [0 x i64] }*] }** %_a517
  store i64 0, i64* %_s519
  store i64 0, i64* %_i521
  br label %_for_cond523
_for_cond523:
  %_i526 = load i64, i64* %_i521
  %_bop527 = icmp slt i64 %_i526, 3
  br i1 %_bop527, label %_for_body524, label %_for_exit525
_for_body524:
  store i64 0, i64* %_j528
  br label %_for_cond530
_for_cond530:
  %_j533 = load i64, i64* %_j528
  %_bop534 = icmp slt i64 %_j533, 4
  br i1 %_bop534, label %_for_body531, label %_for_exit532
_for_body531:
  %_s535 = load i64, i64* %_s519
  %_a536 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a517
  %_i537 = load i64, i64* %_i521
  %_gep538 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a536, i32 0, i32 1, i64 %_i537
  %_load539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep538
  %_j540 = load i64, i64* %_j528
  %_gep541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load539, i32 0, i32 1, i64 %_j540
  %_load542 = load i64, i64* %_gep541
  %_bop543 = add i64 %_s535, %_load542
  store i64 %_bop543, i64* %_s519
  %_j545 = load i64, i64* %_j528
  %_bop546 = add i64 %_j545, 1
  store i64 %_bop546, i64* %_j528
  br label %_for_cond530
_for_exit532:
  %_i548 = load i64, i64* %_i521
  %_bop549 = add i64 %_i548, 1
  store i64 %_bop549, i64* %_i521
  br label %_for_cond523
_for_exit525:
  %_s551 = load i64, i64* %_s519
  ret i64 %_s551
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
