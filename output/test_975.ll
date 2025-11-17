; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str1993 = global [4 x i8] c"abc\00"
@_str1997 = global [4 x i8] c"def\00"
@_str2005 = global [4 x i8] c"789\00"
@_str2009 = global [4 x i8] c"123\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_argc1985 = alloca i64
  %_argv1986 = alloca { i64, [0 x i8*] }*
  %_strs2015 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %argc, i64* %_argc1985
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_argv1986
  %_raw_array1989 = call i64* @oat_alloc_array(i64 2)
  %_array1990 = bitcast i64* %_raw_array1989 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1991 = call i64* @oat_alloc_array(i64 2)
  %_array1992 = bitcast i64* %_raw_array1991 to { i64, [0 x i8*] }*
  %_strptr1994 = bitcast [4 x i8]* @_str1993 to i8*
  %_gep_lit1995 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1992, i32 0, i32 1, i32 0
  store i8* %_strptr1994, i8** %_gep_lit1995
  %_strptr1998 = bitcast [4 x i8]* @_str1997 to i8*
  %_gep_lit1999 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1992, i32 0, i32 1, i32 1
  store i8* %_strptr1998, i8** %_gep_lit1999
  %_gep_lit2001 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1990, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1992, { i64, [0 x i8*] }** %_gep_lit2001
  %_raw_array2003 = call i64* @oat_alloc_array(i64 2)
  %_array2004 = bitcast i64* %_raw_array2003 to { i64, [0 x i8*] }*
  %_strptr2006 = bitcast [4 x i8]* @_str2005 to i8*
  %_gep_lit2007 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2004, i32 0, i32 1, i32 0
  store i8* %_strptr2006, i8** %_gep_lit2007
  %_strptr2010 = bitcast [4 x i8]* @_str2009 to i8*
  %_gep_lit2011 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array2004, i32 0, i32 1, i32 1
  store i8* %_strptr2010, i8** %_gep_lit2011
  %_gep_lit2013 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1990, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array2004, { i64, [0 x i8*] }** %_gep_lit2013
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1990, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2015
  %_strs2017 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs2015
  %_gep2018 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs2017, i32 0, i32 1, i32 1
  %_load2019 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_gep2018
  %_gep2020 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_load2019, i32 0, i32 1, i32 1
  %_load2021 = load i8*, i8** %_gep2020
  call void @print_string(i8* %_load2021)
  ret i64 0
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
