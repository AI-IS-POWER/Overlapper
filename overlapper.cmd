@echo off
REM overlap.bat — overlap two words using Perl one-liner without negative substr
if "%~2"=="" (
  echo Usage: %~nx0 word1 word2
  exit /b 1
)

set "word1=%~1"
set "word2=%~2"

perl -E "($a,$b)=@ARGV;
  for($i=length($a); $i>=0; $i--){
    # compare suffix of $a (starting at length-$i) to prefix of $b
    last if substr($a, length($a)-$i, $i) eq substr($b, 0, $i)
  }
  print $a . substr($b, $i), qq(\n)
" "%word1%" "%word2%"
