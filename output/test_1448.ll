; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n4827 = alloca i64
  store i64 %n, i64* %_n4827
  %_n4832 = load i64, i64* %_n4827
  %_bop4833 = icmp eq i64 %_n4832, 0
  br i1 %_bop4833, label %_then4829, label %_else4830
_then4829:
  ret i64 0
_else4830:
  br label %_join4831
_join4831:
  %_n4837 = load i64, i64* %_n4827
  %_bop4838 = icmp eq i64 %_n4837, 1
  br i1 %_bop4838, label %_then4834, label %_else4835
_then4834:
  ret i64 1
_else4835:
  br label %_join4836
_join4836:
  %_n4839 = load i64, i64* %_n4827
  %_bop4840 = sub i64 %_n4839, 1
  %_function4841 = call i64 @fibR(i64 %_bop4840)
  %_n4842 = load i64, i64* %_n4827
  %_bop4843 = sub i64 %_n4842, 2
  %_function4844 = call i64 @fibR(i64 %_bop4843)
  %_bop4845 = add i64 %_function4841, %_function4844
  ret i64 %_bop4845
}

define i64 @fibI(i64 %n) {
  %_n4788 = alloca i64
  %_a4790 = alloca i64
  %_b4792 = alloca i64
  %_old4813 = alloca i64
  store i64 %n, i64* %_n4788
  store i64 0, i64* %_a4790
  store i64 1, i64* %_b4792
  %_n4797 = load i64, i64* %_n4788
  %_bop4798 = icmp eq i64 %_n4797, 0
  br i1 %_bop4798, label %_then4794, label %_else4795
_then4794:
  %_a4799 = load i64, i64* %_a4790
  ret i64 %_a4799
_else4795:
  br label %_join4796
_join4796:
  %_n4803 = load i64, i64* %_n4788
  %_bop4804 = icmp eq i64 %_n4803, 1
  br i1 %_bop4804, label %_then4800, label %_else4801
_then4800:
  %_b4805 = load i64, i64* %_b4792
  ret i64 %_b4805
_else4801:
  br label %_join4802
_join4802:
  br label %_while_cond4806
_while_cond4806:
  %_n4809 = load i64, i64* %_n4788
  %_bop4810 = sub i64 %_n4809, 2
  %_bop4811 = icmp sgt i64 %_bop4810, 0
  br i1 %_bop4811, label %_while_body4807, label %_while_exit4808
_while_body4807:
  %_b4812 = load i64, i64* %_b4792
  store i64 %_b4812, i64* %_old4813
  %_b4815 = load i64, i64* %_b4792
  %_a4816 = load i64, i64* %_a4790
  %_bop4817 = add i64 %_b4815, %_a4816
  store i64 %_bop4817, i64* %_b4792
  %_old4819 = load i64, i64* %_old4813
  store i64 %_old4819, i64* %_a4790
  %_n4821 = load i64, i64* %_n4788
  %_bop4822 = sub i64 %_n4821, 1
  store i64 %_bop4822, i64* %_n4788
  br label %_while_cond4806
_while_exit4808:
  %_a4824 = load i64, i64* %_a4790
  %_b4825 = load i64, i64* %_b4792
  %_bop4826 = add i64 %_a4824, %_b4825
  ret i64 %_bop4826
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4772 = alloca i64
  %_argv4773 = alloca { i64, [0 x i8*] }*
  %_val4776 = alloca i64
  store i64 %argc, i64* %_argc4772
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4773
  store i64 1, i64* %_val4776
  %_function4781 = call i64 @fibR(i64 12)
  %_bop4782 = icmp eq i64 %_function4781, 144
  %_function4783 = call i64 @fibI(i64 12)
  %_bop4784 = icmp eq i64 %_function4783, 144
  %_bop4785 = and i1 %_bop4782, %_bop4784
  br i1 %_bop4785, label %_then4778, label %_else4779
_then4778:
  store i64 0, i64* %_val4776
  br label %_join4780
_else4779:
  br label %_join4780
_join4780:
  %_val4787 = load i64, i64* %_val4776
  ret i64 %_val4787
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
