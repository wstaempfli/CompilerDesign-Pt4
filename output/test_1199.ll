; generated from: ./sharedtests/dbernhard/mat_mult.oat
target triple = "x86_64-unknown-linux"
@eye = global { i64, [0 x { i64, [0 x i64] }*] }* bitcast ({ i64, [3 x { i64, [0 x i64] }*] }* @_global_arr7008 to { i64, [0 x { i64, [0 x i64] }*] }*)
@_global_arr7008 = global { i64, [3 x { i64, [0 x i64] }*] } { i64 3, [3 x { i64, [0 x i64] }*] [ { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7005 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7006 to { i64, [0 x i64] }*), { i64, [0 x i64] }* bitcast ({ i64, [3 x i64] }* @_global_arr7007 to { i64, [0 x i64] }*) ] }
@_global_arr7005 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 0, i64 0 ] }
@_global_arr7006 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 1, i64 0 ] }
@_global_arr7007 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 0, i64 0, i64 1 ] }
@_str6779 = global [3 x i8] c"| \00"
@_str6797 = global [2 x i8] c" \00"
@_str6807 = global [4 x i8] c" |
\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc6895 = alloca i64
  %_argv6897 = alloca { i64, [0 x i8*] }*
  %_eye6931 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_16965 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_mat_26999 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc6895
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv6897
  %_raw_array6899 = call i64* @oat_alloc_array(i64 3)
  %_array6900 = bitcast i64* %_raw_array6899 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6901 = call i64* @oat_alloc_array(i64 3)
  %_array6902 = bitcast i64* %_raw_array6901 to { i64, [0 x i64] }*
  %_gep_lit6903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6902, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit6903
  %_gep_lit6905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6902, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit6905
  %_gep_lit6907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6902, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit6907
  %_gep_lit6909 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6900, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6902, { i64, [0 x i64] }** %_gep_lit6909
  %_raw_array6911 = call i64* @oat_alloc_array(i64 3)
  %_array6912 = bitcast i64* %_raw_array6911 to { i64, [0 x i64] }*
  %_gep_lit6913 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6912, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit6913
  %_gep_lit6915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6912, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit6915
  %_gep_lit6917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6912, i32 0, i32 1, i32 2
  store i64 0, i64* %_gep_lit6917
  %_gep_lit6919 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6900, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6912, { i64, [0 x i64] }** %_gep_lit6919
  %_raw_array6921 = call i64* @oat_alloc_array(i64 3)
  %_array6922 = bitcast i64* %_raw_array6921 to { i64, [0 x i64] }*
  %_gep_lit6923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6922, i32 0, i32 1, i32 0
  store i64 0, i64* %_gep_lit6923
  %_gep_lit6925 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6922, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit6925
  %_gep_lit6927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6922, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit6927
  %_gep_lit6929 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6900, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6922, { i64, [0 x i64] }** %_gep_lit6929
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6900, { i64, [0 x { i64, [0 x i64] }*] }** %_eye6931
  %_raw_array6933 = call i64* @oat_alloc_array(i64 3)
  %_array6934 = bitcast i64* %_raw_array6933 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6935 = call i64* @oat_alloc_array(i64 3)
  %_array6936 = bitcast i64* %_raw_array6935 to { i64, [0 x i64] }*
  %_gep_lit6937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6936, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit6937
  %_gep_lit6939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6936, i32 0, i32 1, i32 1
  store i64 4, i64* %_gep_lit6939
  %_gep_lit6941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6936, i32 0, i32 1, i32 2
  store i64 3, i64* %_gep_lit6941
  %_gep_lit6943 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6934, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6936, { i64, [0 x i64] }** %_gep_lit6943
  %_raw_array6945 = call i64* @oat_alloc_array(i64 3)
  %_array6946 = bitcast i64* %_raw_array6945 to { i64, [0 x i64] }*
  %_gep_lit6947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6946, i32 0, i32 1, i32 0
  store i64 9, i64* %_gep_lit6947
  %_gep_lit6949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6946, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit6949
  %_gep_lit6951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6946, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit6951
  %_gep_lit6953 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6934, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6946, { i64, [0 x i64] }** %_gep_lit6953
  %_raw_array6955 = call i64* @oat_alloc_array(i64 3)
  %_array6956 = bitcast i64* %_raw_array6955 to { i64, [0 x i64] }*
  %_gep_lit6957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6956, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit6957
  %_gep_lit6959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6956, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit6959
  %_gep_lit6961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6956, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit6961
  %_gep_lit6963 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6934, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6956, { i64, [0 x i64] }** %_gep_lit6963
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6934, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_16965
  %_raw_array6967 = call i64* @oat_alloc_array(i64 3)
  %_array6968 = bitcast i64* %_raw_array6967 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6969 = call i64* @oat_alloc_array(i64 3)
  %_array6970 = bitcast i64* %_raw_array6969 to { i64, [0 x i64] }*
  %_gep_lit6971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6970, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit6971
  %_gep_lit6973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6970, i32 0, i32 1, i32 1
  store i64 0, i64* %_gep_lit6973
  %_gep_lit6975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6970, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit6975
  %_gep_lit6977 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6968, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6970, { i64, [0 x i64] }** %_gep_lit6977
  %_raw_array6979 = call i64* @oat_alloc_array(i64 3)
  %_array6980 = bitcast i64* %_raw_array6979 to { i64, [0 x i64] }*
  %_gep_lit6981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6980, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep_lit6981
  %_gep_lit6983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6980, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit6983
  %_gep_lit6985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6980, i32 0, i32 1, i32 2
  store i64 2, i64* %_gep_lit6985
  %_gep_lit6987 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6968, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6980, { i64, [0 x i64] }** %_gep_lit6987
  %_raw_array6989 = call i64* @oat_alloc_array(i64 3)
  %_array6990 = bitcast i64* %_raw_array6989 to { i64, [0 x i64] }*
  %_gep_lit6991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6990, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep_lit6991
  %_gep_lit6993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6990, i32 0, i32 1, i32 1
  store i64 1, i64* %_gep_lit6993
  %_gep_lit6995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array6990, i32 0, i32 1, i32 2
  store i64 1, i64* %_gep_lit6995
  %_gep_lit6997 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6968, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6990, { i64, [0 x i64] }** %_gep_lit6997
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array6968, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_26999
  %_load7002 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_26999
  %_load7001 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat_16965
  %_call7003 = call { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %_load7001, { i64, [0 x { i64, [0 x i64] }*] }* %_load7002)
  call void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %_call7003, i1 0)
  ret i64 0
}

define { i64, [0 x { i64, [0 x i64] }*] }* @new_mat() {
  %_raw_array6881 = call i64* @oat_alloc_array(i64 3)
  %_array6882 = bitcast i64* %_raw_array6881 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array6883 = call i64* @oat_alloc_array(i64 3)
  %_array6884 = bitcast i64* %_raw_array6883 to { i64, [0 x i64] }*
  %_gep_lit6885 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6882, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array6884, { i64, [0 x i64] }** %_gep_lit6885
  %_raw_array6887 = call i64* @oat_alloc_array(i64 3)
  %_array6888 = bitcast i64* %_raw_array6887 to { i64, [0 x i64] }*
  %_gep_lit6889 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6882, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array6888, { i64, [0 x i64] }** %_gep_lit6889
  %_raw_array6891 = call i64* @oat_alloc_array(i64 3)
  %_array6892 = bitcast i64* %_raw_array6891 to { i64, [0 x i64] }*
  %_gep_lit6893 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array6882, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array6892, { i64, [0 x i64] }** %_gep_lit6893
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_array6882
}

define { i64, [0 x { i64, [0 x i64] }*] }* @mult({ i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }* %matb) {
  %_mata6813 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_matb6815 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_res6818 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i6820 = alloca i64
  %_j6827 = alloca i64
  %_k6834 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mata, { i64, [0 x { i64, [0 x i64] }*] }** %_mata6813
  store { i64, [0 x { i64, [0 x i64] }*] }* %matb, { i64, [0 x { i64, [0 x i64] }*] }** %_matb6815
  %_call6817 = call { i64, [0 x { i64, [0 x i64] }*] }* @new_mat()
  store { i64, [0 x { i64, [0 x i64] }*] }* %_call6817, { i64, [0 x { i64, [0 x i64] }*] }** %_res6818
  store i64 0, i64* %_i6820
  br label %_for_cond6822
_for_cond6822:
  %_load6825 = load i64, i64* %_i6820
  %_bop6826 = icmp slt i64 %_load6825, 3
  br i1 %_bop6826, label %_for_body6823, label %_for_exit6824
_for_body6823:
  store i64 0, i64* %_j6827
  br label %_for_cond6829
_for_cond6829:
  %_load6832 = load i64, i64* %_j6827
  %_bop6833 = icmp slt i64 %_load6832, 3
  br i1 %_bop6833, label %_for_body6830, label %_for_exit6831
_for_body6830:
  store i64 0, i64* %_k6834
  br label %_for_cond6836
_for_cond6836:
  %_load6839 = load i64, i64* %_k6834
  %_bop6840 = icmp slt i64 %_load6839, 3
  br i1 %_bop6840, label %_for_body6837, label %_for_exit6838
_for_body6837:
  %_load6841 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res6818
  %_load6842 = load i64, i64* %_i6820
  %_gep6843 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6841, i32 0, i32 1, i64 %_load6842
  %_load6844 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6843
  %_load6845 = load i64, i64* %_j6827
  %_gep6846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6844, i32 0, i32 1, i64 %_load6845
  %_load6847 = load i64, i64* %_gep6846
  %_load6848 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mata6813
  %_load6849 = load i64, i64* %_i6820
  %_gep6850 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6848, i32 0, i32 1, i64 %_load6849
  %_load6851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6850
  %_load6852 = load i64, i64* %_k6834
  %_gep6853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6851, i32 0, i32 1, i64 %_load6852
  %_load6854 = load i64, i64* %_gep6853
  %_load6855 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_matb6815
  %_load6856 = load i64, i64* %_k6834
  %_gep6857 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6855, i32 0, i32 1, i64 %_load6856
  %_load6858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6857
  %_load6859 = load i64, i64* %_j6827
  %_gep6860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6858, i32 0, i32 1, i64 %_load6859
  %_load6861 = load i64, i64* %_gep6860
  %_bop6862 = mul i64 %_load6854, %_load6861
  %_bop6863 = add i64 %_load6847, %_bop6862
  %_load6864 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res6818
  %_load6865 = load i64, i64* %_i6820
  %_gep6866 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6864, i32 0, i32 1, i64 %_load6865
  %_load6867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6866
  %_load6868 = load i64, i64* %_j6827
  %_gep6869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6867, i32 0, i32 1, i64 %_load6868
  store i64 %_bop6863, i64* %_gep6869
  %_load6871 = load i64, i64* %_k6834
  %_bop6872 = add i64 %_load6871, 1
  store i64 %_bop6872, i64* %_k6834
  br label %_for_cond6836
_for_exit6838:
  %_load6874 = load i64, i64* %_j6827
  %_bop6875 = add i64 %_load6874, 1
  store i64 %_bop6875, i64* %_j6827
  br label %_for_cond6829
_for_exit6831:
  %_load6877 = load i64, i64* %_i6820
  %_bop6878 = add i64 %_load6877, 1
  store i64 %_bop6878, i64* %_i6820
  br label %_for_cond6822
_for_exit6824:
  %_load6880 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_res6818
  ret { i64, [0 x { i64, [0 x i64] }*] }* %_load6880
}

define void @print_matrix({ i64, [0 x { i64, [0 x i64] }*] }* %mat, i1 %pretty) {
  %_mat6764 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_pretty6766 = alloca i1
  %_i6768 = alloca i64
  %_j6782 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %mat, { i64, [0 x { i64, [0 x i64] }*] }** %_mat6764
  store i1 %pretty, i1* %_pretty6766
  store i64 0, i64* %_i6768
  br label %_for_cond6770
_for_cond6770:
  %_load6773 = load i64, i64* %_i6768
  %_bop6774 = icmp slt i64 %_load6773, 3
  br i1 %_bop6774, label %_for_body6771, label %_for_exit6772
_for_body6771:
  %_load6778 = load i1, i1* %_pretty6766
  br i1 %_load6778, label %_then6775, label %_else6776
_then6775:
  %_strptr6780 = bitcast [3 x i8]* @_str6779 to i8*
  call void @print_string(i8* %_strptr6780)
  br label %_join6777
_else6776:
  br label %_join6777
_join6777:
  store i64 0, i64* %_j6782
  br label %_for_cond6784
_for_cond6784:
  %_load6787 = load i64, i64* %_j6782
  %_bop6788 = icmp slt i64 %_load6787, 3
  br i1 %_bop6788, label %_for_body6785, label %_for_exit6786
_for_body6785:
  %_load6789 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_mat6764
  %_load6790 = load i64, i64* %_i6768
  %_gep6791 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_load6789, i32 0, i32 1, i64 %_load6790
  %_load6792 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep6791
  %_load6793 = load i64, i64* %_j6782
  %_gep6794 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load6792, i32 0, i32 1, i64 %_load6793
  %_load6795 = load i64, i64* %_gep6794
  call void @print_int(i64 %_load6795)
  %_strptr6798 = bitcast [2 x i8]* @_str6797 to i8*
  call void @print_string(i8* %_strptr6798)
  %_load6800 = load i64, i64* %_j6782
  %_bop6801 = add i64 %_load6800, 1
  store i64 %_bop6801, i64* %_j6782
  br label %_for_cond6784
_for_exit6786:
  %_load6806 = load i1, i1* %_pretty6766
  br i1 %_load6806, label %_then6803, label %_else6804
_then6803:
  %_strptr6808 = bitcast [4 x i8]* @_str6807 to i8*
  call void @print_string(i8* %_strptr6808)
  br label %_join6805
_else6804:
  br label %_join6805
_join6805:
  %_load6810 = load i64, i64* %_i6768
  %_bop6811 = add i64 %_load6810, 1
  store i64 %_bop6811, i64* %_i6768
  br label %_for_cond6770
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
