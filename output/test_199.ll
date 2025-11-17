; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %a) {
  %_a1074 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %a, { i64, [0 x { i64, [0 x i64] }*] }** %_a1074
  %_a1076 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1074
  %_load1078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr1077
  %_gep_ptr1077 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1076, i32 0, i32 1, i32 1
  %_load1080 = load i64, i64* %_gep_ptr1079
  %_gep_ptr1079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1078, i32 0, i32 1, i32 1
  ret i64 %_load1080
}

define i64 @g(i64 %x) {
  %_x1024 = alloca i64
  %_arr1067 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %x, i64* %_x1024
  %_raw_array1026 = call i64* @oat_alloc_array(i64 3)
  %_array1027 = bitcast i64* %_raw_array1026 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1028 = call i64* @oat_alloc_array(i64 3)
  %_array1029 = bitcast i64* %_raw_array1028 to { i64, [0 x i64] }*
  %_x1030 = load i64, i64* %_x1024
  store i64 %_x1030, i64* %_gep1031
  %_gep1031 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1029, i32 0, i32 1, i32 0
  %_x1033 = load i64, i64* %_x1024
  store i64 %_x1033, i64* %_gep1034
  %_gep1034 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1029, i32 0, i32 1, i32 1
  %_x1036 = load i64, i64* %_x1024
  store i64 %_x1036, i64* %_gep1037
  %_gep1037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1029, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1029, { i64, [0 x i64] }** %_gep1039
  %_gep1039 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1027, i32 0, i32 1, i32 0
  %_raw_array1041 = call i64* @oat_alloc_array(i64 3)
  %_array1042 = bitcast i64* %_raw_array1041 to { i64, [0 x i64] }*
  %_x1043 = load i64, i64* %_x1024
  store i64 %_x1043, i64* %_gep1044
  %_gep1044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 0
  %_x1046 = load i64, i64* %_x1024
  store i64 %_x1046, i64* %_gep1047
  %_gep1047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 1
  %_x1049 = load i64, i64* %_x1024
  store i64 %_x1049, i64* %_gep1050
  %_gep1050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1042, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1042, { i64, [0 x i64] }** %_gep1052
  %_gep1052 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1027, i32 0, i32 1, i32 1
  %_raw_array1054 = call i64* @oat_alloc_array(i64 3)
  %_array1055 = bitcast i64* %_raw_array1054 to { i64, [0 x i64] }*
  %_x1056 = load i64, i64* %_x1024
  store i64 %_x1056, i64* %_gep1057
  %_gep1057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1055, i32 0, i32 1, i32 0
  %_x1059 = load i64, i64* %_x1024
  store i64 %_x1059, i64* %_gep1060
  %_gep1060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1055, i32 0, i32 1, i32 1
  %_x1062 = load i64, i64* %_x1024
  store i64 %_x1062, i64* %_gep1063
  %_gep1063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1055, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1055, { i64, [0 x i64] }** %_gep1065
  %_gep1065 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1027, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1027, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1067
  %_arr1069 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1067
  %_load1071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr1070
  %_gep_ptr1070 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1069, i32 0, i32 1, i32 1
  %_load1073 = load i64, i64* %_gep_ptr1072
  %_gep_ptr1072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1071, i32 0, i32 1, i32 1
  ret i64 %_load1073
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc847 = alloca i64
  %_argv848 = alloca { i64, [0 x i8*] }*
  %_a883 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr963 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01006 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %argc, i64* %_argc847
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv848
  %_raw_array851 = call i64* @oat_alloc_array(i64 3)
  %_array852 = bitcast i64* %_raw_array851 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array853 = call i64* @oat_alloc_array(i64 3)
  %_array854 = bitcast i64* %_raw_array853 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep855
  %_gep855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array854, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep857
  %_gep857 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array854, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep859
  %_gep859 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array854, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array854, { i64, [0 x i64] }** %_gep861
  %_gep861 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array852, i32 0, i32 1, i32 0
  %_raw_array863 = call i64* @oat_alloc_array(i64 3)
  %_array864 = bitcast i64* %_raw_array863 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep865
  %_gep865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array864, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep867
  %_gep867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array864, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep869
  %_gep869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array864, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array864, { i64, [0 x i64] }** %_gep871
  %_gep871 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array852, i32 0, i32 1, i32 1
  %_raw_array873 = call i64* @oat_alloc_array(i64 3)
  %_array874 = bitcast i64* %_raw_array873 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep875
  %_gep875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array874, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep877
  %_gep877 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array874, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep879
  %_gep879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array874, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array874, { i64, [0 x i64] }** %_gep881
  %_gep881 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array852, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array852, { i64, [0 x { i64, [0 x i64] }*] }** %_a883
  %_raw_array885 = call i64* @oat_alloc_array(i64 4)
  %_array886 = bitcast i64* %_raw_array885 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array887 = call i64* @oat_alloc_array(i64 5)
  %_array888 = bitcast i64* %_raw_array887 to { i64, [0 x i64] }*
  %_bop889 = mul i64 0, 0
  store i64 %_bop889, i64* %_gep890
  %_gep890 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array888, i32 0, i32 1, i32 0
  %_bop892 = mul i64 0, 1
  store i64 %_bop892, i64* %_gep893
  %_gep893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array888, i32 0, i32 1, i32 1
  %_bop895 = mul i64 0, 2
  store i64 %_bop895, i64* %_gep896
  %_gep896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array888, i32 0, i32 1, i32 2
  %_bop898 = mul i64 0, 3
  store i64 %_bop898, i64* %_gep899
  %_gep899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array888, i32 0, i32 1, i32 3
  %_bop901 = mul i64 0, 4
  store i64 %_bop901, i64* %_gep902
  %_gep902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array888, i32 0, i32 1, i32 4
  store { i64, [0 x i64] }* %_array888, { i64, [0 x i64] }** %_gep904
  %_gep904 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array886, i32 0, i32 1, i32 0
  %_raw_array906 = call i64* @oat_alloc_array(i64 5)
  %_array907 = bitcast i64* %_raw_array906 to { i64, [0 x i64] }*
  %_bop908 = mul i64 1, 0
  store i64 %_bop908, i64* %_gep909
  %_gep909 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 0
  %_bop911 = mul i64 1, 1
  store i64 %_bop911, i64* %_gep912
  %_gep912 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 1
  %_bop914 = mul i64 1, 2
  store i64 %_bop914, i64* %_gep915
  %_gep915 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 2
  %_bop917 = mul i64 1, 3
  store i64 %_bop917, i64* %_gep918
  %_gep918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 3
  %_bop920 = mul i64 1, 4
  store i64 %_bop920, i64* %_gep921
  %_gep921 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array907, i32 0, i32 1, i32 4
  store { i64, [0 x i64] }* %_array907, { i64, [0 x i64] }** %_gep923
  %_gep923 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array886, i32 0, i32 1, i32 1
  %_raw_array925 = call i64* @oat_alloc_array(i64 5)
  %_array926 = bitcast i64* %_raw_array925 to { i64, [0 x i64] }*
  %_bop927 = mul i64 2, 0
  store i64 %_bop927, i64* %_gep928
  %_gep928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array926, i32 0, i32 1, i32 0
  %_bop930 = mul i64 2, 1
  store i64 %_bop930, i64* %_gep931
  %_gep931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array926, i32 0, i32 1, i32 1
  %_bop933 = mul i64 2, 2
  store i64 %_bop933, i64* %_gep934
  %_gep934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array926, i32 0, i32 1, i32 2
  %_bop936 = mul i64 2, 3
  store i64 %_bop936, i64* %_gep937
  %_gep937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array926, i32 0, i32 1, i32 3
  %_bop939 = mul i64 2, 4
  store i64 %_bop939, i64* %_gep940
  %_gep940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array926, i32 0, i32 1, i32 4
  store { i64, [0 x i64] }* %_array926, { i64, [0 x i64] }** %_gep942
  %_gep942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array886, i32 0, i32 1, i32 2
  %_raw_array944 = call i64* @oat_alloc_array(i64 5)
  %_array945 = bitcast i64* %_raw_array944 to { i64, [0 x i64] }*
  %_bop946 = mul i64 3, 0
  store i64 %_bop946, i64* %_gep947
  %_gep947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 0
  %_bop949 = mul i64 3, 1
  store i64 %_bop949, i64* %_gep950
  %_gep950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 1
  %_bop952 = mul i64 3, 2
  store i64 %_bop952, i64* %_gep953
  %_gep953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 2
  %_bop955 = mul i64 3, 3
  store i64 %_bop955, i64* %_gep956
  %_gep956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 3
  %_bop958 = mul i64 3, 4
  store i64 %_bop958, i64* %_gep959
  %_gep959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 4
  store { i64, [0 x i64] }* %_array945, { i64, [0 x i64] }** %_gep961
  %_gep961 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array886, i32 0, i32 1, i32 3
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array886, { i64, [0 x { i64, [0 x i64] }*] }** %_arr963
  %_raw_array965 = call i64* @oat_alloc_array(i64 3)
  %_array966 = bitcast i64* %_raw_array965 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array967 = call i64* @oat_alloc_array(i64 3)
  %_array968 = bitcast i64* %_raw_array967 to { i64, [0 x i64] }*
  %_bop969 = mul i64 0, 0
  store i64 %_bop969, i64* %_gep970
  %_gep970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 0
  %_bop972 = mul i64 0, 1
  store i64 %_bop972, i64* %_gep973
  %_gep973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 1
  %_bop975 = mul i64 0, 2
  store i64 %_bop975, i64* %_gep976
  %_gep976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array968, { i64, [0 x i64] }** %_gep978
  %_gep978 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array966, i32 0, i32 1, i32 0
  %_raw_array980 = call i64* @oat_alloc_array(i64 3)
  %_array981 = bitcast i64* %_raw_array980 to { i64, [0 x i64] }*
  %_bop982 = mul i64 1, 0
  store i64 %_bop982, i64* %_gep983
  %_gep983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array981, i32 0, i32 1, i32 0
  %_bop985 = mul i64 1, 1
  store i64 %_bop985, i64* %_gep986
  %_gep986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array981, i32 0, i32 1, i32 1
  %_bop988 = mul i64 1, 2
  store i64 %_bop988, i64* %_gep989
  %_gep989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array981, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array981, { i64, [0 x i64] }** %_gep991
  %_gep991 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array966, i32 0, i32 1, i32 1
  %_raw_array993 = call i64* @oat_alloc_array(i64 3)
  %_array994 = bitcast i64* %_raw_array993 to { i64, [0 x i64] }*
  %_bop995 = mul i64 2, 0
  store i64 %_bop995, i64* %_gep996
  %_gep996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 0
  %_bop998 = mul i64 2, 1
  store i64 %_bop998, i64* %_gep999
  %_gep999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 1
  %_bop1001 = mul i64 2, 2
  store i64 %_bop1001, i64* %_gep1002
  %_gep1002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array994, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array994, { i64, [0 x i64] }** %_gep1004
  %_gep1004 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array966, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array966, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01006
  %_arr1008 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr963
  %_load1010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr1009
  %_gep_ptr1009 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1008, i32 0, i32 1, i32 3
  %_load1012 = load i64, i64* %_gep_ptr1011
  %_gep_ptr1011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1010, i32 0, i32 1, i32 4
  %_a1013 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a883
  %_load1015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr1014
  %_gep_ptr1014 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1013, i32 0, i32 1, i32 1
  %_load1017 = load i64, i64* %_gep_ptr1016
  %_gep_ptr1016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load1015, i32 0, i32 1, i32 2
  %_bop1018 = add i64 %_load1012, %_load1017
  %_arr01019 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01006
  %_call1020 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01019)
  %_bop1021 = add i64 %_bop1018, %_call1020
  %_call1022 = call i64 @g(i64 4)
  %_bop1023 = add i64 %_bop1021, %_call1022
  ret i64 %_bop1023
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
