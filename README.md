# Overlapper
**Merge two words with ONE LINE OF CODE!!! Star this repo!!!**  
Copy this command and run it in the terminal.
```
perl -E '($a,$b)=@ARGV; for($i=length$a;$i>=0;$i--){ last if substr($a,-$i) eq substr($b,0,$i) } say $a.substr($b,$i)' sweden denmark
```
This will merge "sweden" and "denmark"

## Why I make this repo
I recently read a challenge on [Sloth Bytes](https://slothbytes.beehiiv.com)
```
Word Overlapping
Given two words, overlap them in such a way, morphing the last few letters of the first word with the first few letters of the second word.

Return the shortest overlapped word possible.

Examples
overlap("sweden", "denmark")
output = "swedenmark"

overlap("honey", "milk")
output = "honeymilk"

overlap("dodge", "dodge") "dodge"
Notes
All words will be given in lowercase.

If no overlap is possible, return both words one after the other (example #3).
```
This is the shortest way to accomplish this puzzle(I think so)
