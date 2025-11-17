; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc575 = alloca i64
  %_argv576 = alloca { i64, [0 x i8*] }*
  %_a617 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s619 = alloca i64
  %_i621 = alloca i64
  %_j628 = alloca i64
  store i64 %argc, i64* %_argc575
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv576
  %_raw_array579 = call i64* @oat_alloc_array(i64 3)
  %_array580 = bitcast i64* %_raw_array579 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array581 = call i64* @oat_alloc_array(i64 4)
  %_array582 = bitcast i64* %_raw_array581 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep583
  %_gep583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array582, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep585
  %_gep585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array582, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep587
  %_gep587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array582, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep589
  %_gep589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array582, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array582, { i64, [0 x i64] }** %_gep591
  %_gep591 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array580, i32 0, i32 1, i32 0
  %_raw_array593 = call i64* @oat_alloc_array(i64 4)
  %_array594 = bitcast i64* %_raw_array593 to { i64, [0 x i64] }*
  store i64 4, i64* %_gep595
  %_gep595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array594, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep597
  %_gep597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array594, i32 0, i32 1, i32 1
  store i64 6, i64* %_gep599
  %_gep599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array594, i32 0, i32 1, i32 2
  store i64 7, i64* %_gep601
  %_gep601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array594, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array594, { i64, [0 x i64] }** %_gep603
  %_gep603 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array580, i32 0, i32 1, i32 1
  %_raw_array605 = call i64* @oat_alloc_array(i64 4)
  %_array606 = bitcast i64* %_raw_array605 to { i64, [0 x i64] }*
  store i64 8, i64* %_gep607
  %_gep607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array606, i32 0, i32 1, i32 0
  store i64 9, i64* %_gep609
  %_gep609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array606, i32 0, i32 1, i32 1
  store i64 10, i64* %_gep611
  %_gep611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array606, i32 0, i32 1, i32 2
  store i64 11, i64* %_gep613
  %_gep613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array606, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array606, { i64, [0 x i64] }** %_gep615
  %_gep615 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array580, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array580, { i64, [0 x { i64, [0 x i64] }*] }** %_a617
  store i64 0, i64* %_s619
  store i64 0, i64* %_i621
  br label %_for_cond623
_for_cond623:
  %_i626 = load i64, i64* %_i621
  %_bop627 = icmp slt i64 %_i626, 3
  br i1 %_bop627, label %_for_body624, label %_for_exit625
_for_body624:
  store i64 0, i64* %_j628
  br label %_for_cond630
_for_cond630:
  %_j633 = load i64, i64* %_j628
  %_bop634 = icmp slt i64 %_j633, 4
  br i1 %_bop634, label %_for_body631, label %_for_exit632
_for_body631:
  %_s635 = load i64, i64* %_s619
  %_a636 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a617
  %_i637 = load i64, i64* %_i621
  %_load639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr638
  %_gep_ptr638 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a636, i32 0, i32 1, i64 %_i637
  %_j640 = load i64, i64* %_j628
  %_load642 = load i64, i64* %_gep_ptr641
  %_gep_ptr641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load639, i32 0, i32 1, i64 %_j640
  %_bop643 = add i64 %_s635, %_load642
  store i64 %_bop643, i64* %_s619
  %_j645 = load i64, i64* %_j628
  %_bop646 = add i64 %_j645, 1
  store i64 %_bop646, i64* %_j628
  br label %_for_cond630
_for_exit632:
  %_i648 = load i64, i64* %_i621
  %_bop649 = add i64 %_i648, 1
  store i64 %_bop649, i64* %_i621
  br label %_for_cond623
_for_exit625:
  %_s651 = load i64, i64* %_s619
  ret i64 %_s651
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
