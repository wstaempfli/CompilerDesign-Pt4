; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc652 = alloca i64
  %_argv653 = alloca { i64, [0 x i8*] }*
  %_s695 = alloca i64
  %_i697 = alloca i64
  %_j704 = alloca i64
  store i64 %argc, i64* %_argc652
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv653
  %_raw_array656 = call i64* @oat_alloc_array(i64 3)
  %_array657 = bitcast i64* %_raw_array656 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array658 = call i64* @oat_alloc_array(i64 4)
  %_array659 = bitcast i64* %_raw_array658 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep660
  %_gep660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array659, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep662
  %_gep662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array659, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep664
  %_gep664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array659, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep666
  %_gep666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array659, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array659, { i64, [0 x i64] }** %_gep668
  %_gep668 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array657, i32 0, i32 1, i32 0
  %_raw_array670 = call i64* @oat_alloc_array(i64 4)
  %_array671 = bitcast i64* %_raw_array670 to { i64, [0 x i64] }*
  store i64 4, i64* %_gep672
  %_gep672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array671, i32 0, i32 1, i32 0
  store i64 5, i64* %_gep674
  %_gep674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array671, i32 0, i32 1, i32 1
  store i64 6, i64* %_gep676
  %_gep676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array671, i32 0, i32 1, i32 2
  store i64 7, i64* %_gep678
  %_gep678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array671, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array671, { i64, [0 x i64] }** %_gep680
  %_gep680 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array657, i32 0, i32 1, i32 1
  %_raw_array682 = call i64* @oat_alloc_array(i64 4)
  %_array683 = bitcast i64* %_raw_array682 to { i64, [0 x i64] }*
  store i64 8, i64* %_gep684
  %_gep684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 0
  store i64 9, i64* %_gep686
  %_gep686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 1
  store i64 10, i64* %_gep688
  %_gep688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 2
  store i64 11, i64* %_gep690
  %_gep690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array683, { i64, [0 x i64] }** %_gep692
  %_gep692 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array657, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array657, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s695
  store i64 0, i64* %_i697
  br label %_for_cond699
_for_cond699:
  %_i702 = load i64, i64* %_i697
  %_bop703 = icmp slt i64 %_i702, 3
  br i1 %_bop703, label %_for_body700, label %_for_exit701
_for_body700:
  store i64 0, i64* %_j704
  br label %_for_cond706
_for_cond706:
  %_j709 = load i64, i64* %_j704
  %_bop710 = icmp slt i64 %_j709, 4
  br i1 %_bop710, label %_for_body707, label %_for_exit708
_for_body707:
  %_s711 = load i64, i64* %_s695
  %_a712 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i713 = load i64, i64* %_i697
  %_load715 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr714
  %_gep_ptr714 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a712, i32 0, i32 1, i64 %_i713
  %_j716 = load i64, i64* %_j704
  %_load718 = load i64, i64* %_gep_ptr717
  %_gep_ptr717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load715, i32 0, i32 1, i64 %_j716
  %_bop719 = add i64 %_s711, %_load718
  store i64 %_bop719, i64* %_s695
  %_j721 = load i64, i64* %_j704
  %_bop722 = add i64 %_j721, 1
  store i64 %_bop722, i64* %_j704
  br label %_for_cond706
_for_exit708:
  %_i724 = load i64, i64* %_i697
  %_bop725 = add i64 %_i724, 1
  store i64 %_bop725, i64* %_i697
  br label %_for_cond699
_for_exit701:
  %_s727 = load i64, i64* %_s695
  ret i64 %_s727
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
