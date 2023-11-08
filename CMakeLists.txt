cmake_minimum_required(VERSION 3.0)
project(sqlite3)
set (sqlite3_src sqlite3.c sqlite3.h)
add_library(sqlite3 SHARED ${sqlite3_src})
include (GenerateExportHeader)
GENERATE_EXPORT_HEADER( sqlite3
		     BASE_NAME sqlite3
		     EXPORT_MACRO_NAME sqlite3_EXPORT
		     EXPORT_FILE_NAME sqlite3_Export.h
		     STATIC_DEFINE sqlite3_BUILT_AS_STATIC)