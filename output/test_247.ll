; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc876 = alloca i64
  %_argv877 = alloca { i64, [0 x i8*] }*
  %_a1894 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2910 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3926 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4942 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5952 = alloca { i64, [0 x i64] }*
  store i64 %argc, i64* %_argc876
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv877
  %_raw_array880 = call i64* @oat_alloc_array(i64 3)
  %_array881 = bitcast i64* %_raw_array880 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array882 = call i64* @oat_alloc_array(i64 1)
  %_array883 = bitcast i64* %_raw_array882 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array883, { i64, [0 x i64] }** %_gep884
  %_gep884 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array881, i32 0, i32 1, i32 0
  %_raw_array886 = call i64* @oat_alloc_array(i64 1)
  %_array887 = bitcast i64* %_raw_array886 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array887, { i64, [0 x i64] }** %_gep888
  %_gep888 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array881, i32 0, i32 1, i32 1
  %_raw_array890 = call i64* @oat_alloc_array(i64 1)
  %_array891 = bitcast i64* %_raw_array890 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array891, { i64, [0 x i64] }** %_gep892
  %_gep892 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array881, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array881, { i64, [0 x { i64, [0 x i64] }*] }** %_a1894
  %_raw_array896 = call i64* @oat_alloc_array(i64 3)
  %_array897 = bitcast i64* %_raw_array896 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array898 = call i64* @oat_alloc_array(i64 1)
  %_array899 = bitcast i64* %_raw_array898 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array899, { i64, [0 x i64] }** %_gep900
  %_gep900 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array897, i32 0, i32 1, i32 0
  %_raw_array902 = call i64* @oat_alloc_array(i64 1)
  %_array903 = bitcast i64* %_raw_array902 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array903, { i64, [0 x i64] }** %_gep904
  %_gep904 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array897, i32 0, i32 1, i32 1
  %_raw_array906 = call i64* @oat_alloc_array(i64 1)
  %_array907 = bitcast i64* %_raw_array906 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array907, { i64, [0 x i64] }** %_gep908
  %_gep908 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array897, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array897, { i64, [0 x { i64, [0 x i64] }*] }** %_a2910
  %_raw_array912 = call i64* @oat_alloc_array(i64 3)
  %_array913 = bitcast i64* %_raw_array912 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array914 = call i64* @oat_alloc_array(i64 1)
  %_array915 = bitcast i64* %_raw_array914 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array915, { i64, [0 x i64] }** %_gep916
  %_gep916 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array913, i32 0, i32 1, i32 0
  %_raw_array918 = call i64* @oat_alloc_array(i64 1)
  %_array919 = bitcast i64* %_raw_array918 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array919, { i64, [0 x i64] }** %_gep920
  %_gep920 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array913, i32 0, i32 1, i32 1
  %_raw_array922 = call i64* @oat_alloc_array(i64 1)
  %_array923 = bitcast i64* %_raw_array922 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array923, { i64, [0 x i64] }** %_gep924
  %_gep924 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array913, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array913, { i64, [0 x { i64, [0 x i64] }*] }** %_a3926
  %_raw_array928 = call i64* @oat_alloc_array(i64 3)
  %_array929 = bitcast i64* %_raw_array928 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array930 = call i64* @oat_alloc_array(i64 1)
  %_array931 = bitcast i64* %_raw_array930 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array931, { i64, [0 x i64] }** %_gep932
  %_gep932 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array929, i32 0, i32 1, i32 0
  %_raw_array934 = call i64* @oat_alloc_array(i64 1)
  %_array935 = bitcast i64* %_raw_array934 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array935, { i64, [0 x i64] }** %_gep936
  %_gep936 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array929, i32 0, i32 1, i32 1
  %_raw_array938 = call i64* @oat_alloc_array(i64 1)
  %_array939 = bitcast i64* %_raw_array938 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array939, { i64, [0 x i64] }** %_gep940
  %_gep940 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array929, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array929, { i64, [0 x { i64, [0 x i64] }*] }** %_a4942
  %_raw_array944 = call i64* @oat_alloc_array(i64 3)
  %_array945 = bitcast i64* %_raw_array944 to { i64, [0 x i64] }*
  store i64 0, i64* %_gep946
  %_gep946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 0
  store i64 1, i64* %_gep948
  %_gep948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 1
  store i64 2, i64* %_gep950
  %_gep950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array945, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array945, { i64, [0 x i64] }** %_a5952
  %_a5954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5952
  %_a2955 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2910
  %_gep956 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2955, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_a5954, { i64, [0 x i64] }** %_gep956
  %_a2958 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2910
  %_load960 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr959
  %_gep_ptr959 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2958, i32 0, i32 1, i32 0
  %_gep961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load960, i32 0, i32 1, i32 0
  store i64 2, i64* %_gep961
  %_a2963 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2910
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2963, { i64, [0 x { i64, [0 x i64] }*] }** %_a1894
  %_a1965 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1894
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1965, { i64, [0 x { i64, [0 x i64] }*] }** %_a3926
  %_a4967 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4942
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4967, { i64, [0 x { i64, [0 x i64] }*] }** %_a1894
  %_a3969 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3926
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3969, { i64, [0 x { i64, [0 x i64] }*] }** %_a2910
  %_a2971 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2910
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2971, { i64, [0 x { i64, [0 x i64] }*] }** %_a4942
  %_a4973 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4942
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4973, { i64, [0 x { i64, [0 x i64] }*] }** %_a3926
  %_a3975 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3926
  %_load977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_gep_ptr976
  %_gep_ptr976 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3975, i32 0, i32 1, i32 0
  %_load979 = load i64, i64* %_gep_ptr978
  %_gep_ptr978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_load977, i32 0, i32 1, i32 0
  ret i64 %_load979
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
