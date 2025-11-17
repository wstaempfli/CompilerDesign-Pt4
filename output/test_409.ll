; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %partial, i64 %len, i64 %insertee) {
  %_partial5550 = alloca { i64, [0 x i64] }*
  %_len5551 = alloca i64
  %_insertee5552 = alloca i64
  %_inserted5560 = alloca { i64, [0 x i64] }*
  %_i5562 = alloca i64
  %_not_yet_inserted5579 = alloca i1
  %_i5594 = alloca i64
  store { i64, [0 x i64] }* %partial, { i64, [0 x i64] }** %_partial5550
  store i64 %len, i64* %_len5551
  store i64 %insertee, i64* %_insertee5552
  %_len5556 = load i64, i64* %_len5551
  %_bop5557 = add i64 %_len5556, 1
  %_raw_array5558 = call i64* @oat_alloc_array(i64 %_bop5557)
  %_array5559 = bitcast i64* %_raw_array5558 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5559, { i64, [0 x i64] }** %_inserted5560
  store i64 0, i64* %_i5562
  br label %_for_cond5564
_for_cond5564:
  %_i5567 = load i64, i64* %_i5562
  %_len5568 = load i64, i64* %_len5551
  %_bop5569 = add i64 %_len5568, 1
  %_bop5570 = icmp slt i64 %_i5567, %_bop5569
  br i1 %_bop5570, label %_for_body5565, label %_for_exit5566
_for_body5565:
  %_uop5571 = sub i64 0, 1
  %_inserted5572 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5560
  %_i5573 = load i64, i64* %_i5562
  %_gep5574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5572, i32 0, i32 1, i64 %_i5573
  store i64 %_uop5571, i64* %_gep5574
  %_i5576 = load i64, i64* %_i5562
  %_bop5577 = add i64 %_i5576, 1
  store i64 %_bop5577, i64* %_i5562
  br label %_for_cond5564
_for_exit5566:
  store i1 1, i1* %_not_yet_inserted5579
  %_insertee5584 = load i64, i64* %_insertee5552
  %_partial5585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5550
  %_gep5586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5585, i32 0, i32 1, i32 0
  %_load5587 = load i64, i64* %_gep5586
  %_bop5588 = icmp slt i64 %_insertee5584, %_load5587
  br i1 %_bop5588, label %_then5581, label %_else5582
_then5581:
  store i1 0, i1* %_not_yet_inserted5579
  %_insertee5590 = load i64, i64* %_insertee5552
  %_inserted5591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5560
  %_gep5592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5591, i32 0, i32 1, i32 0
  store i64 %_insertee5590, i64* %_gep5592
  br label %_join5583
_else5582:
  br label %_join5583
_join5583:
  store i64 0, i64* %_i5594
  br label %_for_cond5596
_for_cond5596:
  %_i5599 = load i64, i64* %_i5594
  %_len5600 = load i64, i64* %_len5551
  %_bop5601 = icmp slt i64 %_i5599, %_len5600
  br i1 %_bop5601, label %_for_body5597, label %_for_exit5598
_for_body5597:
  %_not_yet_inserted5605 = load i1, i1* %_not_yet_inserted5579
  br i1 %_not_yet_inserted5605, label %_then5602, label %_else5603
_then5602:
  %_insertee5609 = load i64, i64* %_insertee5552
  %_partial5610 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5550
  %_i5611 = load i64, i64* %_i5594
  %_gep5612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5610, i32 0, i32 1, i64 %_i5611
  %_load5613 = load i64, i64* %_gep5612
  %_bop5614 = icmp sgt i64 %_insertee5609, %_load5613
  br i1 %_bop5614, label %_then5606, label %_else5607
_then5606:
  store i1 0, i1* %_not_yet_inserted5579
  %_insertee5616 = load i64, i64* %_insertee5552
  %_inserted5617 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5560
  %_i5618 = load i64, i64* %_i5594
  %_bop5619 = add i64 %_i5618, 1
  %_gep5620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5617, i32 0, i32 1, i64 %_bop5619
  store i64 %_insertee5616, i64* %_gep5620
  %_partial5622 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5550
  %_i5623 = load i64, i64* %_i5594
  %_gep5624 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5622, i32 0, i32 1, i64 %_i5623
  %_load5625 = load i64, i64* %_gep5624
  %_inserted5626 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5560
  %_i5627 = load i64, i64* %_i5594
  %_gep5628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5626, i32 0, i32 1, i64 %_i5627
  store i64 %_load5625, i64* %_gep5628
  br label %_join5608
_else5607:
  %_partial5630 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5550
  %_i5631 = load i64, i64* %_i5594
  %_gep5632 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5630, i32 0, i32 1, i64 %_i5631
  %_load5633 = load i64, i64* %_gep5632
  %_inserted5634 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5560
  %_i5635 = load i64, i64* %_i5594
  %_gep5636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5634, i32 0, i32 1, i64 %_i5635
  store i64 %_load5633, i64* %_gep5636
  br label %_join5608
_join5608:
  br label %_join5604
_else5603:
  %_partial5638 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5550
  %_i5639 = load i64, i64* %_i5594
  %_gep5640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5638, i32 0, i32 1, i64 %_i5639
  %_load5641 = load i64, i64* %_gep5640
  %_inserted5642 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5560
  %_i5643 = load i64, i64* %_i5594
  %_bop5644 = add i64 %_i5643, 1
  %_gep5645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5642, i32 0, i32 1, i64 %_bop5644
  store i64 %_load5641, i64* %_gep5645
  br label %_join5604
_join5604:
  %_i5647 = load i64, i64* %_i5594
  %_bop5648 = add i64 %_i5647, 1
  store i64 %_bop5648, i64* %_i5594
  br label %_for_cond5596
_for_exit5598:
  %_inserted5650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5560
  ret { i64, [0 x i64] }* %_inserted5650
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %unsorted, i64 %len) {
  %_unsorted5514 = alloca { i64, [0 x i64] }*
  %_len5515 = alloca i64
  %_out5522 = alloca { i64, [0 x i64] }*
  %_i5530 = alloca i64
  store { i64, [0 x i64] }* %unsorted, { i64, [0 x i64] }** %_unsorted5514
  store i64 %len, i64* %_len5515
  %_raw_array5518 = call i64* @oat_alloc_array(i64 1)
  %_array5519 = bitcast i64* %_raw_array5518 to { i64, [0 x i64] }*
  %_gep_lit5520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5519, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5520
  store { i64, [0 x i64] }* %_array5519, { i64, [0 x i64] }** %_out5522
  %_unsorted5524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5514
  %_gep5525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5524, i32 0, i32 1, i32 0
  %_load5526 = load i64, i64* %_gep5525
  %_out5527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5522
  %_gep5528 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out5527, i32 0, i32 1, i32 0
  store i64 %_load5526, i64* %_gep5528
  store i64 1, i64* %_i5530
  br label %_for_cond5532
_for_cond5532:
  %_i5535 = load i64, i64* %_i5530
  %_len5536 = load i64, i64* %_len5515
  %_bop5537 = icmp slt i64 %_i5535, %_len5536
  br i1 %_bop5537, label %_for_body5533, label %_for_exit5534
_for_body5533:
  %_unsorted5540 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5514
  %_i5541 = load i64, i64* %_i5530
  %_gep5542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5540, i32 0, i32 1, i64 %_i5541
  %_load5543 = load i64, i64* %_gep5542
  %_i5539 = load i64, i64* %_i5530
  %_out5538 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5522
  %_call5544 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out5538, i64 %_i5539, i64 %_load5543)
  store { i64, [0 x i64] }* %_call5544, { i64, [0 x i64] }** %_out5522
  %_i5546 = load i64, i64* %_i5530
  %_bop5547 = add i64 %_i5546, 1
  store i64 %_bop5547, i64* %_i5530
  br label %_for_cond5532
_for_exit5534:
  %_out5549 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5522
  ret { i64, [0 x i64] }* %_out5549
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5487 = alloca i64
  %_argv5488 = alloca { i64, [0 x i8*] }*
  %_array5505 = alloca { i64, [0 x i64] }*
  %_result5509 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc5487
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5488
  %_raw_array5491 = call i64* @oat_alloc_array(i64 6)
  %_array5492 = bitcast i64* %_raw_array5491 to { i64, [0 x i64] }*
  %_gep_lit5493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5492, i32 0, i32 1, i32 0
  store i64 13, i64* %_gep_lit5493
  %_gep_lit5495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5492, i32 0, i32 1, i32 1
  store i64 42, i64* %_gep_lit5495
  %_gep_lit5497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5492, i32 0, i32 1, i32 2
  store i64 32, i64* %_gep_lit5497
  %_gep_lit5499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5492, i32 0, i32 1, i32 3
  store i64 3, i64* %_gep_lit5499
  %_gep_lit5501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5492, i32 0, i32 1, i32 4
  store i64 2, i64* %_gep_lit5501
  %_gep_lit5503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5492, i32 0, i32 1, i32 5
  store i64 6, i64* %_gep_lit5503
  store { i64, [0 x i64] }* %_array5492, { i64, [0 x i64] }** %_array5505
  %_array5507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5505
  %_call5508 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array5507, i64 6)
  store { i64, [0 x i64] }* %_call5508, { i64, [0 x i64] }** %_result5509
  %_result5511 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result5509
  %_gep5512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result5511, i32 0, i32 1, i32 5
  %_load5513 = load i64, i64* %_gep5512
  ret i64 %_load5513
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
