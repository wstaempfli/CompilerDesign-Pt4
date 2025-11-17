; generated from: ./sharedtests/dbernhard/count_primes_less_100.oat
target triple = "x86_64-unknown-linux"
@list = global { i64, [0 x i64] }* null

define i1 @isPrime(i64 %x) {
  %_x6643 = alloca i64
  %_i6653 = alloca i64
  %_cur_num6662 = alloca i64
  store i64 %x, i64* %_x6643
  %_load6648 = load i64, i64* %_x6643
  %_bop6649 = icmp eq i64 %_load6648, 0
  %_load6650 = load i64, i64* %_x6643
  %_bop6651 = icmp eq i64 %_load6650, 1
  %_bop6652 = or i1 %_bop6649, %_bop6651
  br i1 %_bop6652, label %_then6645, label %_else6646
_then6645:
  ret i1 0
_else6646:
  br label %_join6647
_join6647:
  store i64 2, i64* %_i6653
  br label %_for_cond6655
_for_cond6655:
  %_load6658 = load i64, i64* %_i6653
  %_load6659 = load i64, i64* %_x6643
  %_bop6660 = icmp slt i64 %_load6658, %_load6659
  br i1 %_bop6660, label %_for_body6656, label %_for_exit6657
_for_body6656:
  %_load6661 = load i64, i64* %_x6643
  store i64 %_load6661, i64* %_cur_num6662
  br label %_while_cond6664
_while_cond6664:
  %_load6667 = load i64, i64* %_cur_num6662
  %_load6668 = load i64, i64* %_i6653
  %_bop6669 = icmp sge i64 %_load6667, %_load6668
  br i1 %_bop6669, label %_while_body6665, label %_while_exit6666
_while_body6665:
  %_load6670 = load i64, i64* %_cur_num6662
  %_load6671 = load i64, i64* %_i6653
  %_bop6672 = sub i64 %_load6670, %_load6671
  store i64 %_bop6672, i64* %_cur_num6662
  br label %_while_cond6664
_while_exit6666:
  %_load6677 = load i64, i64* %_cur_num6662
  %_bop6678 = icmp eq i64 %_load6677, 0
  br i1 %_bop6678, label %_then6674, label %_else6675
_then6674:
  ret i1 0
_else6675:
  br label %_join6676
_join6676:
  %_load6679 = load i64, i64* %_i6653
  %_bop6680 = add i64 %_load6679, 1
  store i64 %_bop6680, i64* %_i6653
  br label %_for_cond6655
_for_exit6657:
  ret i1 1
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6592 = alloca i64
  %_argv6594 = alloca { i64, [0 x i8*] }*
  %_n6596 = alloca i64
  %_i6602 = alloca i64
  %_count6618 = alloca i64
  %_i6620 = alloca i64
  store i64 %argc, i64* %_argc6592
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6594
  store i64 100, i64* %_n6596
  %_load6598 = load i64, i64* %_n6596
  %_raw_array6599 = call i64* @oat_alloc_array(i64 %_load6598)
  %_array6600 = bitcast i64* %_raw_array6599 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array6600, { i64, [0 x i64] }** @list
  store i64 0, i64* %_i6602
  br label %_for_cond6604
_for_cond6604:
  %_load6607 = load i64, i64* %_i6602
  %_bop6608 = icmp slt i64 %_load6607, 100
  br i1 %_bop6608, label %_for_body6605, label %_for_exit6606
_for_body6605:
  %_load6609 = load i64, i64* %_i6602
  %_bop6610 = add i64 %_load6609, 1
  %_load6611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_load6612 = load i64, i64* %_i6602
  %_gep6613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6611, i32 0, i32 1, i64 %_load6612
  store i64 %_bop6610, i64* %_gep6613
  %_load6615 = load i64, i64* %_i6602
  %_bop6616 = add i64 %_load6615, 1
  store i64 %_bop6616, i64* %_i6602
  br label %_for_cond6604
_for_exit6606:
  store i64 0, i64* %_count6618
  store i64 0, i64* %_i6620
  br label %_for_cond6622
_for_cond6622:
  %_load6625 = load i64, i64* %_i6620
  %_load6626 = load i64, i64* %_n6596
  %_bop6627 = icmp slt i64 %_load6625, %_load6626
  br i1 %_bop6627, label %_for_body6623, label %_for_exit6624
_for_body6623:
  %_load6631 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @list
  %_load6632 = load i64, i64* %_i6620
  %_gep6633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6631, i32 0, i32 1, i64 %_load6632
  %_load6634 = load i64, i64* %_gep6633
  %_call6635 = call i1 @isPrime(i64 %_load6634)
  br i1 %_call6635, label %_then6628, label %_else6629
_then6628:
  %_load6636 = load i64, i64* %_count6618
  %_bop6637 = add i64 %_load6636, 1
  store i64 %_bop6637, i64* %_count6618
  br label %_join6630
_else6629:
  br label %_join6630
_join6630:
  %_load6639 = load i64, i64* %_i6620
  %_bop6640 = add i64 %_load6639, 1
  store i64 %_bop6640, i64* %_i6620
  br label %_for_cond6622
_for_exit6624:
  %_load6642 = load i64, i64* %_count6618
  ret i64 %_load6642
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
