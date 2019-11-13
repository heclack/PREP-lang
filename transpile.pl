#!/usr/bin/env perl
use strict;
use warnings;

my @hears;
print "filename?";
my $file= <STDIN>;
chomp ($file);
print "\$ay\$  ";
my $says=<STDIN>;
chomp($says);
open(FH, '>' .$file) or die "Cannot open < $file: $!";
chomp $says;
if($says=~/\(/){
    $says=~tr/[\)\' ']/\\,/;
    $says=~tr/[\;\(]/\ /;
    $says =~s/^\s+|\s+$//g;
}
if($says=~/\+/){
    $says=~tr/[\+]/\\ /;
    $says=~tr/[\;\(]/\ /;
    $says =~s/^\s+|\s+$//g;
};
print FH $says;
print $says;



 @hears = split(',', $says);

my $iterator;
my @variable;
my @event; 
    # print $iterator;
    # print @variable;
close(FH);
    