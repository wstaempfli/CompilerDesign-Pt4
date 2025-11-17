; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc552 = alloca i64
  %_argv553 = alloca { i64, [0 x i8*] }*
  %_s595 = alloca i64
  %_i597 = alloca i64
  %_j604 = alloca i64
  store i64 %argc, i64* %_argc552
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv553
  %_raw_array556 = call i64* @oat_alloc_array(i64 3)
  %_array557 = bitcast i64* %_raw_array556 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array558 = call i64* @oat_alloc_array(i64 4)
  %_array559 = bitcast i64* %_raw_array558 to { i64, [0 x i64] }*
  %_gep_lit560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array559, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit560
  %_gep_lit562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array559, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit562
  %_gep_lit564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array559, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit564
  %_gep_lit566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array559, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep_lit566
  %_gep_lit568 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array557, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array559, { i64, [0 x i64] }** %_gep_lit568
  %_raw_array570 = call i64* @oat_alloc_array(i64 4)
  %_array571 = bitcast i64* %_raw_array570 to { i64, [0 x i64] }*
  %_gep_lit572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 0
  store i64 4, i64* %_gep_lit572
  %_gep_lit574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 1
  store i64 5, i64* %_gep_lit574
  %_gep_lit576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 2
  store i64 6, i64* %_gep_lit576
  %_gep_lit578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 3
  store i64 7, i64* %_gep_lit578
  %_gep_lit580 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array557, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array571, { i64, [0 x i64] }** %_gep_lit580
  %_raw_array582 = call i64* @oat_alloc_array(i64 4)
  %_array583 = bitcast i64* %_raw_array582 to { i64, [0 x i64] }*
  %_gep_lit584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array583, i32 0, i32 1, i32 0
  store i64 8, i64* %_gep_lit584
  %_gep_lit586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array583, i32 0, i32 1, i32 1
  store i64 9, i64* %_gep_lit586
  %_gep_lit588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array583, i32 0, i32 1, i32 2
  store i64 10, i64* %_gep_lit588
  %_gep_lit590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array583, i32 0, i32 1, i32 3
  store i64 11, i64* %_gep_lit590
  %_gep_lit592 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array557, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array583, { i64, [0 x i64] }** %_gep_lit592
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array557, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s595
  store i64 0, i64* %_i597
  br label %_for_cond599
_for_cond599:
  %_i602 = load i64, i64* %_i597
  %_bop603 = icmp slt i64 %_i602, 3
  br i1 %_bop603, label %_for_body600, label %_for_exit601
_for_body600:
  store i64 0, i64* %_j604
  br label %_for_cond606
_for_cond606:
  %_j609 = load i64, i64* %_j604
  %_bop610 = icmp slt i64 %_j609, 4
  br i1 %_bop610, label %_for_body607, label %_for_exit608
_for_body607:
  %_s611 = load i64, i64* %_s595
  %_a612 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i613 = load i64, i64* %_i597
  %_gep614 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a612, i32 0, i32 1, i64 %_i613
  %_load615 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep614
  %_j616 = load i64, i64* %_j604
  %_gep617 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load615, i32 0, i32 1, i64 %_j616
  %_load618 = load i64, i64* %_gep617
  %_bop619 = add i64 %_s611, %_load618
  store i64 %_bop619, i64* %_s595
  %_j621 = load i64, i64* %_j604
  %_bop622 = add i64 %_j621, 1
  store i64 %_bop622, i64* %_j604
  br label %_for_cond606
_for_exit608:
  %_i624 = load i64, i64* %_i597
  %_bop625 = add i64 %_i624, 1
  store i64 %_bop625, i64* %_i597
  br label %_for_cond599
_for_exit601:
  %_s627 = load i64, i64* %_s595
  ret i64 %_s627
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
