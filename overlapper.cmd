@echo off
REM overlap.bat: overlap two words using Perl one-liner

if "%~2"=="" (
  echo Usage: %~nx0 word1 word2
  exit /b 1
)

set word1=%~1
set word2=%~2

perl -E "($a,$b)=@ARGV; for(\$i=length\$a; \$i>=0; \$i--){ last if substr(\$a,-\$i) eq substr(\$b,0,\$i) } print \$a.substr(\$b,\$i), qq(\n)" %word1% %word2%
