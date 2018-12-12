@echo off
set "GCC_PATH_ADD=F:\Programs\LLVM32\bin;C:\mingw32\bin"
if defined GCC_PATH_BASE (
  set "PATH=%GCC_PATH_BASE%"
) else (
  set "GCC_PATH_BASE=%PATH%"
)
set "PATH=%GCC_PATH_ADD%;%PATH%"
echo - clang and gnu compiler are now 32 bit
echo.
@echo on
