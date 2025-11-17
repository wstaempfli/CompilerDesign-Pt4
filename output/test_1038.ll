; generated from: ./sharedtests/dbernhard/for_cond_fun.oat
target triple = "x86_64-unknown-linux"
@_str6711 = global [3 x i8] c", \00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_argc6692 = alloca i64
  %_args6693 = alloca { i64, [0 x i8*] }*
  %_x6696 = alloca i64
  %_y6698 = alloca i64
  %_str6707 = alloca i8*
  store i64 %argc, i64* %_argc6692
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_args6693
  store i64 0, i64* %_x6696
  store i64 10, i64* %_y6698
  br label %_for_cond6700
_for_cond6700:
  %_y6703 = load i64, i64* %_y6698
  %_bop6704 = icmp slt i64 %_y6703, 20
  br i1 %_bop6704, label %_for_body6701, label %_for_exit6702
_for_body6701:
  %_y6705 = load i64, i64* %_y6698
  %_call6706 = call i8* @string_of_int(i64 %_y6705)
  store i8* %_call6706, i8** %_str6707
  %_str6709 = load i8*, i8** %_str6707
  call void @print_string(i8* %_str6709)
  %_strptr6712 = bitcast [3 x i8]* @_str6711 to i8*
  call void @print_string(i8* %_strptr6712)
  %_y6714 = load i64, i64* %_y6698
  %_bop6715 = add i64 %_y6714, 1
  store i64 %_bop6715, i64* %_y6698
  %_x6717 = load i64, i64* %_x6696
  %_bop6718 = add i64 %_x6717, 1
  store i64 %_bop6718, i64* %_x6696
  %_y6721 = load i64, i64* %_y6698
  %_x6720 = load i64, i64* %_x6696
  %_scall_void6722 = call i1 @con(i64 %_x6720, i64 %_y6721)
  br label %_for_cond6700
_for_exit6702:
  %_x6723 = load i64, i64* %_x6696
  ret i64 %_x6723
}

define i1 @con(i64 %a, i64 %b) {
  %_a6682 = alloca i64
  %_b6683 = alloca i64
  store i64 %a, i64* %_a6682
  store i64 %b, i64* %_b6683
  %_a6686 = load i64, i64* %_a6682
  %_bop6687 = add i64 %_a6686, 1
  store i64 %_bop6687, i64* %_a6682
  %_b6689 = load i64, i64* %_b6683
  %_bop6690 = add i64 %_b6689, 1
  store i64 %_bop6690, i64* %_b6683
  ret i1 1
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
