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
                #seperate valid inputs into two groups
                #then parse according to get correct output
for($says){
if(/[\(\)]/){
        tr/[\)\' ']/\\,/;
        tr/[\;\(]/\ /;
    }
elsif(/\+/){
    tr/[\=\' ']/\\,/;
    tr/[\+\;]/\\ /; 
        }else{ print STDERR "Syntax error";
        exit(1);    
    }
    s/^\s+|\s+$//g;
}             
my @hears;
@hears = split(',', $says);           
                 #write to file
for($says){
    open(FH, '>' .$file) or die "Cannot open < $file: $!";
    (tr/[\,]/0/);
    (s/^\s+|\s+$//g);
    print FH $says;
    close(FH);
    
};


print $says;

    