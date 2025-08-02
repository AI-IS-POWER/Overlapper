# Overlapper
Merge two words with ONE LINE OF CODE!!! Star this repo!!!  
For those impatient,copy this command and run it in the terminal 
'''perl -E '($a,$b)=@ARGV; for($i=length$a;$i>=0;$i--){ last if substr($a,-$i) eq substr($b,0,$i) } say $a.substr($b,$i)' sweden denmark


I recently read a challenge on [Sloth Bytes](https://slothbytes.beehiiv.com)
