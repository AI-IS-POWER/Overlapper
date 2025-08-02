#!/usr/bin/env perl
use strict;
use warnings;

# grab inputs
my ($a, $b) = @ARGV;
unless (defined $a && defined $b) {
    die "Usage: $0 word1 word2\n";
}

# find maximal overlap
my $overlap = 0;
for (my $i = length($a); $i >= 0; $i--) {
    if (substr($a, length($a) - $i, $i) eq substr($b, 0, $i)) {
        $overlap = $i;
        last;
    }
}

# print result
print $a . substr($b, $overlap), "\n";
