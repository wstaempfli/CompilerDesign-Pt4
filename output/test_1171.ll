; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j, i64 %count) {
  %_board5737 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5739 = alloca i64
  %_j5741 = alloca i64
  %_count5743 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5737
  store i64 %i, i64* %_i5739
  store i64 %j, i64* %_j5741
  store i64 %count, i64* %_count5743
  %_load5748 = load i64, i64* %_i5739
  %_bop5749 = icmp sge i64 %_load5748, 0
  %_load5750 = load i64, i64* %_j5741
  %_bop5751 = icmp sge i64 %_load5750, 0
  %_bop5752 = and i1 %_bop5749, %_bop5751
  %_load5753 = load i64, i64* %_i5739
  %_load5754 = load i64, i64* @len
  %_bop5755 = icmp slt i64 %_load5753, %_load5754
  %_bop5756 = and i1 %_bop5752, %_bop5755
  %_load5757 = load i64, i64* %_j5741
  %_load5758 = load i64, i64* @len
  %_bop5759 = icmp slt i64 %_load5757, %_load5758
  %_bop5760 = and i1 %_bop5756, %_bop5759
  br i1 %_bop5760, label %_then5745, label %_else5746
_then5745:
  %_load5761 = load i64, i64* %_count5743
  %_load5762 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5737
  %_load5763 = load i64, i64* %_i5739
  %_gep5764 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load5762, i32 0, i32 1, i64 %_load5763
  %_load5765 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5764
  %_load5766 = load i64, i64* %_j5741
  %_gep5767 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5765, i32 0, i32 1, i64 %_load5766
  %_load5768 = load i64, i64* %_gep5767
  %_bop5769 = add i64 %_load5761, %_load5768
  ret i64 %_bop5769
_else5746:
  %_load5770 = load i64, i64* %_count5743
  ret i64 %_load5770
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %board, i64 %i, i64 %j) {
  %_board5640 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5642 = alloca i64
  %_j5644 = alloca i64
  %_alive5653 = alloca i64
  %_count5655 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %board, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  store i64 %i, i64* %_i5642
  store i64 %j, i64* %_j5644
  %_load5646 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_load5647 = load i64, i64* %_i5642
  %_gep5648 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load5646, i32 0, i32 1, i64 %_load5647
  %_load5649 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5648
  %_load5650 = load i64, i64* %_j5644
  %_gep5651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5649, i32 0, i32 1, i64 %_load5650
  %_load5652 = load i64, i64* %_gep5651
  store i64 %_load5652, i64* %_alive5653
  store i64 0, i64* %_count5655
  %_load5662 = load i64, i64* %_count5655
  %_load5660 = load i64, i64* %_j5644
  %_bop5661 = sub i64 %_load5660, 1
  %_load5658 = load i64, i64* %_i5642
  %_bop5659 = sub i64 %_load5658, 1
  %_load5657 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5663 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5657, i64 %_bop5659, i64 %_bop5661, i64 %_load5662)
  store i64 %_call5663, i64* %_count5655
  %_load5669 = load i64, i64* %_count5655
  %_load5668 = load i64, i64* %_j5644
  %_load5666 = load i64, i64* %_i5642
  %_bop5667 = sub i64 %_load5666, 1
  %_load5665 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5670 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5665, i64 %_bop5667, i64 %_load5668, i64 %_load5669)
  store i64 %_call5670, i64* %_count5655
  %_load5677 = load i64, i64* %_count5655
  %_load5675 = load i64, i64* %_j5644
  %_bop5676 = add i64 %_load5675, 1
  %_load5673 = load i64, i64* %_i5642
  %_bop5674 = sub i64 %_load5673, 1
  %_load5672 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5678 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5672, i64 %_bop5674, i64 %_bop5676, i64 %_load5677)
  store i64 %_call5678, i64* %_count5655
  %_load5684 = load i64, i64* %_count5655
  %_load5682 = load i64, i64* %_j5644
  %_bop5683 = sub i64 %_load5682, 1
  %_load5681 = load i64, i64* %_i5642
  %_load5680 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5685 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5680, i64 %_load5681, i64 %_bop5683, i64 %_load5684)
  store i64 %_call5685, i64* %_count5655
  %_load5691 = load i64, i64* %_count5655
  %_load5689 = load i64, i64* %_j5644
  %_bop5690 = add i64 %_load5689, 1
  %_load5688 = load i64, i64* %_i5642
  %_load5687 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5692 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5687, i64 %_load5688, i64 %_bop5690, i64 %_load5691)
  store i64 %_call5692, i64* %_count5655
  %_load5699 = load i64, i64* %_count5655
  %_load5697 = load i64, i64* %_j5644
  %_bop5698 = sub i64 %_load5697, 1
  %_load5695 = load i64, i64* %_i5642
  %_bop5696 = add i64 %_load5695, 1
  %_load5694 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5700 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5694, i64 %_bop5696, i64 %_bop5698, i64 %_load5699)
  store i64 %_call5700, i64* %_count5655
  %_load5706 = load i64, i64* %_count5655
  %_load5705 = load i64, i64* %_j5644
  %_load5703 = load i64, i64* %_i5642
  %_bop5704 = add i64 %_load5703, 1
  %_load5702 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5707 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5702, i64 %_bop5704, i64 %_load5705, i64 %_load5706)
  store i64 %_call5707, i64* %_count5655
  %_load5714 = load i64, i64* %_count5655
  %_load5712 = load i64, i64* %_j5644
  %_bop5713 = add i64 %_load5712, 1
  %_load5710 = load i64, i64* %_i5642
  %_bop5711 = add i64 %_load5710, 1
  %_load5709 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5640
  %_call5715 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_load5709, i64 %_bop5711, i64 %_bop5713, i64 %_load5714)
  store i64 %_call5715, i64* %_count5655
  %_load5720 = load i64, i64* %_alive5653
  %_bop5721 = icmp eq i64 %_load5720, 1
  br i1 %_bop5721, label %_then5717, label %_else5718
_then5717:
  %_load5725 = load i64, i64* %_count5655
  %_bop5726 = icmp slt i64 %_load5725, 2
  br i1 %_bop5726, label %_then5722, label %_else5723
_then5722:
  ret i64 0
_else5723:
  %_load5730 = load i64, i64* %_count5655
  %_bop5731 = icmp slt i64 %_load5730, 4
  br i1 %_bop5731, label %_then5727, label %_else5728
_then5727:
  ret i64 1
_else5728:
  br label %_join5729
_join5729:
  br label %_join5724
_join5724:
  ret i64 0
_else5718:
  br label %_join5719
_join5719:
  %_load5735 = load i64, i64* %_count5655
  %_bop5736 = icmp eq i64 %_load5735, 3
  br i1 %_bop5736, label %_then5732, label %_else5733
_then5732:
  ret i64 1
_else5733:
  ret i64 0
_join5734:
  ret i64 0
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc5465 = alloca i64
  %_argv5467 = alloca { i64, [0 x i8*] }*
  %_board5519 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board5571 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5573 = alloca i64
  %_j5586 = alloca i64
  %_i5610 = alloca i64
  %_j5618 = alloca i64
  store i64 %argc, i64* %_argc5465
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv5467
  %_raw_array5469 = call i64* @oat_alloc_array(i64 4)
  %_array5470 = bitcast i64* %_raw_array5469 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5471 = call i64* @oat_alloc_array(i64 4)
  %_array5472 = bitcast i64* %_raw_array5471 to { i64, [0 x i64] }*
  %_gep_lit5473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5472, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5473
  %_gep_lit5475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5472, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5475
  %_gep_lit5477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5472, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5477
  %_gep_lit5479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5472, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5479
  %_gep_lit5481 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5470, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5472, { i64, [0 x i64] }** %_gep_lit5481
  %_raw_array5483 = call i64* @oat_alloc_array(i64 4)
  %_array5484 = bitcast i64* %_raw_array5483 to { i64, [0 x i64] }*
  %_gep_lit5485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5484, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5485
  %_gep_lit5487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5484, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit5487
  %_gep_lit5489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5484, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit5489
  %_gep_lit5491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5484, i32 0, i32 1, i32 3
  store i64 1, i64* %_gep_lit5491
  %_gep_lit5493 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5470, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5484, { i64, [0 x i64] }** %_gep_lit5493
  %_raw_array5495 = call i64* @oat_alloc_array(i64 4)
  %_array5496 = bitcast i64* %_raw_array5495 to { i64, [0 x i64] }*
  %_gep_lit5497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5496, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit5497
  %_gep_lit5499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5496, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit5499
  %_gep_lit5501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5496, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit5501
  %_gep_lit5503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5496, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5503
  %_gep_lit5505 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5470, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5496, { i64, [0 x i64] }** %_gep_lit5505
  %_raw_array5507 = call i64* @oat_alloc_array(i64 4)
  %_array5508 = bitcast i64* %_raw_array5507 to { i64, [0 x i64] }*
  %_gep_lit5509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5508, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5509
  %_gep_lit5511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5508, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5511
  %_gep_lit5513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5508, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5513
  %_gep_lit5515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5508, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5515
  %_gep_lit5517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5470, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5508, { i64, [0 x i64] }** %_gep_lit5517
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5470, { i64, [0 x { i64, [0 x i64] }*] }** %_board5519
  %_raw_array5521 = call i64* @oat_alloc_array(i64 4)
  %_array5522 = bitcast i64* %_raw_array5521 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array5523 = call i64* @oat_alloc_array(i64 4)
  %_array5524 = bitcast i64* %_raw_array5523 to { i64, [0 x i64] }*
  %_gep_lit5525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5524, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5525
  %_gep_lit5527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5524, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5527
  %_gep_lit5529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5524, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5529
  %_gep_lit5531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5524, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5531
  %_gep_lit5533 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5522, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array5524, { i64, [0 x i64] }** %_gep_lit5533
  %_raw_array5535 = call i64* @oat_alloc_array(i64 4)
  %_array5536 = bitcast i64* %_raw_array5535 to { i64, [0 x i64] }*
  %_gep_lit5537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5536, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5537
  %_gep_lit5539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5536, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5539
  %_gep_lit5541 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5536, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5541
  %_gep_lit5543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5536, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5543
  %_gep_lit5545 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5522, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array5536, { i64, [0 x i64] }** %_gep_lit5545
  %_raw_array5547 = call i64* @oat_alloc_array(i64 4)
  %_array5548 = bitcast i64* %_raw_array5547 to { i64, [0 x i64] }*
  %_gep_lit5549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5548, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5549
  %_gep_lit5551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5548, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5551
  %_gep_lit5553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5548, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5553
  %_gep_lit5555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5548, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5555
  %_gep_lit5557 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5522, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array5548, { i64, [0 x i64] }** %_gep_lit5557
  %_raw_array5559 = call i64* @oat_alloc_array(i64 4)
  %_array5560 = bitcast i64* %_raw_array5559 to { i64, [0 x i64] }*
  %_gep_lit5561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit5561
  %_gep_lit5563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit5563
  %_gep_lit5565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit5565
  %_gep_lit5567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5560, i32 0, i32 1, i32 3
  store i64 0, i64* %_gep_lit5567
  %_gep_lit5569 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array5522, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array5560, { i64, [0 x i64] }** %_gep_lit5569
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array5522, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5571
  store i64 0, i64* %_i5573
  br label %_for_cond5575
_for_cond5575:
  %_load5578 = load i64, i64* %_i5573
  %_bop5579 = icmp slt i64 %_load5578, 4
  br i1 %_bop5579, label %_for_body5576, label %_for_exit5577
_for_body5576:
  %_raw_array5580 = call i64* @oat_alloc_array(i64 4)
  %_array5581 = bitcast i64* %_raw_array5580 to { i64, [0 x i64] }*
  %_load5582 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5571
  %_load5583 = load i64, i64* %_i5573
  %_gep5584 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load5582, i32 0, i32 1, i64 %_load5583
  store { i64, [0 x i64] }* %_array5581, { i64, [0 x i64] }** %_gep5584
  store i64 0, i64* %_j5586
  br label %_for_cond5588
_for_cond5588:
  %_load5591 = load i64, i64* %_j5586
  %_bop5592 = icmp slt i64 %_load5591, 4
  br i1 %_bop5592, label %_for_body5589, label %_for_exit5590
_for_body5589:
  %_load5595 = load i64, i64* %_j5586
  %_load5594 = load i64, i64* %_i5573
  %_load5593 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5519
  %_call5596 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_load5593, i64 %_load5594, i64 %_load5595)
  %_load5597 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5571
  %_load5598 = load i64, i64* %_i5573
  %_gep5599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load5597, i32 0, i32 1, i64 %_load5598
  %_load5600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5599
  %_load5601 = load i64, i64* %_j5586
  %_gep5602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5600, i32 0, i32 1, i64 %_load5601
  store i64 %_call5596, i64* %_gep5602
  %_load5604 = load i64, i64* %_j5586
  %_bop5605 = add i64 %_load5604, 1
  store i64 %_bop5605, i64* %_j5586
  br label %_for_cond5588
_for_exit5590:
  %_load5607 = load i64, i64* %_i5573
  %_bop5608 = add i64 %_load5607, 1
  store i64 %_bop5608, i64* %_i5573
  br label %_for_cond5575
_for_exit5577:
  store i64 0, i64* %_i5610
  br label %_for_cond5612
_for_cond5612:
  %_load5615 = load i64, i64* %_i5610
  %_load5616 = load i64, i64* @len
  %_bop5617 = icmp slt i64 %_load5615, %_load5616
  br i1 %_bop5617, label %_for_body5613, label %_for_exit5614
_for_body5613:
  store i64 0, i64* %_j5618
  br label %_for_cond5620
_for_cond5620:
  %_load5623 = load i64, i64* %_j5618
  %_load5624 = load i64, i64* @len
  %_bop5625 = icmp slt i64 %_load5623, %_load5624
  br i1 %_bop5625, label %_for_body5621, label %_for_exit5622
_for_body5621:
  %_load5626 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board5571
  %_load5627 = load i64, i64* %_i5610
  %_gep5628 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load5626, i32 0, i32 1, i64 %_load5627
  %_load5629 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep5628
  %_load5630 = load i64, i64* %_j5618
  %_gep5631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load5629, i32 0, i32 1, i64 %_load5630
  %_load5632 = load i64, i64* %_gep5631
  call void @print_int(i64 %_load5632)
  %_load5634 = load i64, i64* %_j5618
  %_bop5635 = add i64 %_load5634, 1
  store i64 %_bop5635, i64* %_j5618
  br label %_for_cond5620
_for_exit5622:
  %_load5637 = load i64, i64* %_i5610
  %_bop5638 = add i64 %_load5637, 1
  store i64 %_bop5638, i64* %_i5610
  br label %_for_cond5612
_for_exit5614:
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
