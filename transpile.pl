#!/usr/bin/env perl
use strict;
use warnings;


my $says;
my @hears;

$says = "(ddsfa)sdava dasdkajd;";
chomp $says;
if($says=~/\(/){
    $says=~tr/[\)\' ']/\\,/;
    $says=~tr/[\;\(]/\ /;
    $says =~s/^\s+|\s+$//g;
    @hears = split(',', $says);
}
my $iterator;
my @variable;
my @event; 
    print $says;
    print $iterator;
    # print @variable;

    