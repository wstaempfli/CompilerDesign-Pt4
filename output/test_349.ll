; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc776 = alloca i64
  %_argv777 = alloca { i64, [0 x i8*] }*
  %_a1794 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2810 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3826 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4842 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5852 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc776
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv777
  %_raw_array780 = call i64* @oat_alloc_array(i64 3)
  %_array781 = bitcast i64* %_raw_array780 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array782 = call i64* @oat_alloc_array(i64 1)
  %_array783 = bitcast i64* %_raw_array782 to { i64, [0 x i64] }*
  %_gep_lit784 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array781, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array783, { i64, [0 x i64] }** %_gep_lit784
  %_raw_array786 = call i64* @oat_alloc_array(i64 1)
  %_array787 = bitcast i64* %_raw_array786 to { i64, [0 x i64] }*
  %_gep_lit788 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array781, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array787, { i64, [0 x i64] }** %_gep_lit788
  %_raw_array790 = call i64* @oat_alloc_array(i64 1)
  %_array791 = bitcast i64* %_raw_array790 to { i64, [0 x i64] }*
  %_gep_lit792 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array781, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array791, { i64, [0 x i64] }** %_gep_lit792
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array781, { i64, [0 x { i64, [0 x i64] }*] }** %_a1794
  %_raw_array796 = call i64* @oat_alloc_array(i64 3)
  %_array797 = bitcast i64* %_raw_array796 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array798 = call i64* @oat_alloc_array(i64 1)
  %_array799 = bitcast i64* %_raw_array798 to { i64, [0 x i64] }*
  %_gep_lit800 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array799, { i64, [0 x i64] }** %_gep_lit800
  %_raw_array802 = call i64* @oat_alloc_array(i64 1)
  %_array803 = bitcast i64* %_raw_array802 to { i64, [0 x i64] }*
  %_gep_lit804 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array803, { i64, [0 x i64] }** %_gep_lit804
  %_raw_array806 = call i64* @oat_alloc_array(i64 1)
  %_array807 = bitcast i64* %_raw_array806 to { i64, [0 x i64] }*
  %_gep_lit808 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array797, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array807, { i64, [0 x i64] }** %_gep_lit808
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array797, { i64, [0 x { i64, [0 x i64] }*] }** %_a2810
  %_raw_array812 = call i64* @oat_alloc_array(i64 3)
  %_array813 = bitcast i64* %_raw_array812 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array814 = call i64* @oat_alloc_array(i64 1)
  %_array815 = bitcast i64* %_raw_array814 to { i64, [0 x i64] }*
  %_gep_lit816 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array813, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array815, { i64, [0 x i64] }** %_gep_lit816
  %_raw_array818 = call i64* @oat_alloc_array(i64 1)
  %_array819 = bitcast i64* %_raw_array818 to { i64, [0 x i64] }*
  %_gep_lit820 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array813, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array819, { i64, [0 x i64] }** %_gep_lit820
  %_raw_array822 = call i64* @oat_alloc_array(i64 1)
  %_array823 = bitcast i64* %_raw_array822 to { i64, [0 x i64] }*
  %_gep_lit824 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array813, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array823, { i64, [0 x i64] }** %_gep_lit824
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array813, { i64, [0 x { i64, [0 x i64] }*] }** %_a3826
  %_raw_array828 = call i64* @oat_alloc_array(i64 3)
  %_array829 = bitcast i64* %_raw_array828 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array830 = call i64* @oat_alloc_array(i64 1)
  %_array831 = bitcast i64* %_raw_array830 to { i64, [0 x i64] }*
  %_gep_lit832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array829, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array831, { i64, [0 x i64] }** %_gep_lit832
  %_raw_array834 = call i64* @oat_alloc_array(i64 1)
  %_array835 = bitcast i64* %_raw_array834 to { i64, [0 x i64] }*
  %_gep_lit836 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array829, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array835, { i64, [0 x i64] }** %_gep_lit836
  %_raw_array838 = call i64* @oat_alloc_array(i64 1)
  %_array839 = bitcast i64* %_raw_array838 to { i64, [0 x i64] }*
  %_gep_lit840 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array829, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array839, { i64, [0 x i64] }** %_gep_lit840
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array829, { i64, [0 x { i64, [0 x i64] }*] }** %_a4842
  %_raw_array844 = call i64* @oat_alloc_array(i64 3)
  %_array845 = bitcast i64* %_raw_array844 to { i64, [0 x i64] }*
  %_gep_lit846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array845, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit846
  %_gep_lit848 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array845, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit848
  %_gep_lit850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array845, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit850
  store { i64, [0 x i64] }* %_array845, { i64, [0 x i64] }** %_a5852
  %_a5854 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5852
  %_a2855 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2810
  %_gep856 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2855, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5854, { i64, [0 x i64] }** %_gep856
  %_a2858 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2810
  %_gep859 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2858, i32 0, i32 1, i32 0
  %_load860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep859
  %_gep861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load860, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep861
  %_a2863 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2810
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2863, { i64, [0 x { i64, [0 x i64] }*] }** %_a1794
  %_a1865 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1794
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1865, { i64, [0 x { i64, [0 x i64] }*] }** %_a3826
  %_a4867 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4842
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4867, { i64, [0 x { i64, [0 x i64] }*] }** %_a1794
  %_a3869 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3826
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3869, { i64, [0 x { i64, [0 x i64] }*] }** %_a2810
  %_a2871 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2810
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2871, { i64, [0 x { i64, [0 x i64] }*] }** %_a4842
  %_a4873 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4842
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4873, { i64, [0 x { i64, [0 x i64] }*] }** %_a3826
  %_a3875 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3826
  %_gep876 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3875, i32 0, i32 1, i32 0
  %_load877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep876
  %_gep878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load877, i32 0, i32 1, i32 0
  %_load879 = load i64, i64* %_gep878
  ret i64 %_load879
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
