#!/usr/bin/env perl
use strict;
use warnings;
                #ask for project name=>filename
print "project name?";
my $file= <STDIN>;
chomp ($file);
                #prompt for line of code
print "\$ay\$  ";
my $says=<STDIN>;
chomp($says);
open(FH, '>' .$file) or die "Cannot open < $file: $!";
chomp $says;
                #seperate valid inputs into two groups
                #then parse according to get correct output
for($says){
if(/\(/){
    tr/[\)\' ']/\\,/;
    tr/[\;\(]/\ /;
    s/^\s+|\s+$//g;
}
if(/\+/){
    tr/[\=\' ']/\\,/;
    tr/[\+\;]/\\ /; 
}   
s/^\s+|\s+$//g;
}
                #write to file
print FH $says;
print $says;
my @hears;
@hears = split(',', $says);
                #cleanup
close(FH);
    