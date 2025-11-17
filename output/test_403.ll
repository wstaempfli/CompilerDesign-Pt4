; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %n) {
  %_n4727 = alloca i64
  store i64 %n, i64* %_n4727
  %_n4732 = load i64, i64* %_n4727
  %_bop4733 = icmp eq i64 %_n4732, 0
  br i1 %_bop4733, label %_then4729, label %_else4730
_then4729:
  ret i64 0
_else4730:
  br label %_join4731
_join4731:
  %_n4737 = load i64, i64* %_n4727
  %_bop4738 = icmp eq i64 %_n4737, 1
  br i1 %_bop4738, label %_then4734, label %_else4735
_then4734:
  ret i64 1
_else4735:
  br label %_join4736
_join4736:
  %_n4739 = load i64, i64* %_n4727
  %_bop4740 = sub i64 %_n4739, 1
  %_call4741 = call i64 @fibR(i64 %_bop4740)
  %_n4742 = load i64, i64* %_n4727
  %_bop4743 = sub i64 %_n4742, 2
  %_call4744 = call i64 @fibR(i64 %_bop4743)
  %_bop4745 = add i64 %_call4741, %_call4744
  ret i64 %_bop4745
}

define i64 @fibI(i64 %n) {
  %_n4688 = alloca i64
  %_a4690 = alloca i64
  %_b4692 = alloca i64
  %_old4713 = alloca i64
  store i64 %n, i64* %_n4688
  store i64 0, i64* %_a4690
  store i64 1, i64* %_b4692
  %_n4697 = load i64, i64* %_n4688
  %_bop4698 = icmp eq i64 %_n4697, 0
  br i1 %_bop4698, label %_then4694, label %_else4695
_then4694:
  %_a4699 = load i64, i64* %_a4690
  ret i64 %_a4699
_else4695:
  br label %_join4696
_join4696:
  %_n4703 = load i64, i64* %_n4688
  %_bop4704 = icmp eq i64 %_n4703, 1
  br i1 %_bop4704, label %_then4700, label %_else4701
_then4700:
  %_b4705 = load i64, i64* %_b4692
  ret i64 %_b4705
_else4701:
  br label %_join4702
_join4702:
  br label %_while_cond4706
_while_cond4706:
  %_n4709 = load i64, i64* %_n4688
  %_bop4710 = sub i64 %_n4709, 2
  %_bop4711 = icmp sgt i64 %_bop4710, 0
  br i1 %_bop4711, label %_while_body4707, label %_while_exit4708
_while_body4707:
  %_b4712 = load i64, i64* %_b4692
  store i64 %_b4712, i64* %_old4713
  %_b4715 = load i64, i64* %_b4692
  %_a4716 = load i64, i64* %_a4690
  %_bop4717 = add i64 %_b4715, %_a4716
  store i64 %_bop4717, i64* %_b4692
  %_old4719 = load i64, i64* %_old4713
  store i64 %_old4719, i64* %_a4690
  %_n4721 = load i64, i64* %_n4688
  %_bop4722 = sub i64 %_n4721, 1
  store i64 %_bop4722, i64* %_n4688
  br label %_while_cond4706
_while_exit4708:
  %_a4724 = load i64, i64* %_a4690
  %_b4725 = load i64, i64* %_b4692
  %_bop4726 = add i64 %_a4724, %_b4725
  ret i64 %_bop4726
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc4672 = alloca i64
  %_argv4673 = alloca { i64, [0 x i8*] }*
  %_val4676 = alloca i64
  store i64 %argc, i64* %_argc4672
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv4673
  store i64 1, i64* %_val4676
  %_call4681 = call i64 @fibR(i64 12)
  %_bop4682 = icmp eq i64 %_call4681, 144
  %_call4683 = call i64 @fibI(i64 12)
  %_bop4684 = icmp eq i64 %_call4683, 144
  %_bop4685 = and i1 %_bop4682, %_bop4684
  br i1 %_bop4685, label %_then4678, label %_else4679
_then4678:
  store i64 0, i64* %_val4676
  br label %_join4680
_else4679:
  br label %_join4680
_join4680:
  %_val4687 = load i64, i64* %_val4676
  ret i64 %_val4687
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
