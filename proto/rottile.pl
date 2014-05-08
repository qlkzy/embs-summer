#!/usr/bin/env perl

use List::Util qw(shuffle);

while (<>) {
    s/\s+//g;
    s/\((.*)\)/\1/g;
    @cols = split /,/;
    $rot = int(rand(4));
    while ($rot-- > 0) {
        unshift(@cols, pop(@cols));
    }
    print "(@{[join(', ', @cols)]})\n";
}
