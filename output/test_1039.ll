; generated from: ./sharedtests/dbernhard/for_cond_fun2.oat
target triple = "x86_64-unknown-linux"
@a = global i64 0
@b = global i64 0
@_str6747 = global [3 x i8] c", \00"
@_str6755 = global [5 x i8] c", b:\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6734 = alloca i64
  %_args6735 = alloca { i64, [0 x i8*] }*
  store i64 %argc, i64* %_argc6734
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6735
  store i64 5, i64* @b
  br label %_for_cond6739
_for_cond6739:
  %_b6742 = load i64, i64* @b
  %_call6743 = call i1 @con(i64 %_b6742)
  br i1 %_call6743, label %_for_body6740, label %_for_exit6741
_for_body6740:
  %_a6744 = load i64, i64* @a
  %_call6745 = call i8* @string_of_int(i64 %_a6744)
  call void @print_string(i8* %_call6745)
  %_strptr6748 = bitcast [3 x i8]* @_str6747 to i8*
  call void @print_string(i8* %_strptr6748)
  %_a6750 = load i64, i64* @a
  %_bop6751 = add i64 %_a6750, 1
  store i64 %_bop6751, i64* @a
  br label %_for_cond6739
_for_exit6741:
  %_a6753 = load i64, i64* @a
  call void @print_int(i64 %_a6753)
  %_strptr6756 = bitcast [5 x i8]* @_str6755 to i8*
  call void @print_string(i8* %_strptr6756)
  %_b6758 = load i64, i64* @b
  call void @print_int(i64 %_b6758)
  ret i64 0
}

define i1 @con(i64 %b) {
  %_b6724 = alloca i64
  store i64 %b, i64* %_b6724
  %_a6726 = load i64, i64* @a
  %_bop6727 = add i64 %_a6726, 1
  store i64 %_bop6727, i64* @a
  %_b6729 = load i64, i64* %_b6724
  %_bop6730 = sub i64 %_b6729, 1
  store i64 %_bop6730, i64* %_b6724
  %_a6732 = load i64, i64* @a
  %_bop6733 = icmp slt i64 %_a6732, 10
  ret i1 %_bop6733
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
