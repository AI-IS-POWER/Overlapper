($a,$b)=@ARGV; for($i=length$a;$i>=0;$i--){ last if substr($a,-$i) eq substr($b,0,$i) } say $a.substr($b,$i)'
