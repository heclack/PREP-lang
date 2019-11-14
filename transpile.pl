#!/usr/bin/env perl
use strict;
use warnings;

my $passCheck;
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
                #General Syntax errors
    if(/\+/ && /!\=/){
        print STDERR "variable has no \= defination";
    };
    if(/\=/ && /!\+/){
        print STDERR "variable must be declared with \+ before definition";
    };
    if(/\;$/){
        print STDERR "missing \; at end of line";
    };
    if(/\(/ && /!\)/){
        print STDERR "parenthesis is not closed. \( has no match";
    };
    if(/\)/ && /\(/){
        print STDERR ""
    }

return($passCheck)
}while($passCheck){
if(/[\(\)]/){
        tr/[\)\' ']/\\,/;
        tr/[\;\(]/\ /;
    }
elsif(/\+/){
    tr/[\=\' ']/\\,/;
    tr/[\+\;]/\\ /; 
        }else{ print STDERR "Syntax error, error during parsing";
        exit(1);    
    }
    s/^\s+|\s+$//g;
}             
my @hears;
@hears = split(',', $says);           
                 #write to file
for($says){
    open(FH, '>' .$file) or die "Cannot open < $file: $!";
    tr/\,/ /;
    print FH $says;
    print $says;
    close(FH);
    
};


print $says;

    