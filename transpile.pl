#!/usr/bin/env perl
use strict;
use warnings;
my $header= "\#include\<iostream\>\n
using namespace std\;\n
int main\(\)\{\n";
print "project name?";
my $file= <STDIN>;
my $newname = "new.cpp";
print "\$ay\$  ";
my $says=<STDIN>;
chomp($says);

for($says){
                #General Syntax errors
    if(/\+/ && /!\=/){
        print STDERR "Variable has no \= definition";
    };
    if(/\=/ && /!\+/){
        print STDERR "Variable must be declared with \+ before definition";
    };
    if(/\$;/){
        print STDERR "Missing \; at end of line";
    };
    if(/\(/ && /!\)/){
        print STDERR "Loop is not closed. \) has no match";
    };
    if(/\)/ && /!\(/){
        print STDERR "Unexpected termination of loop. Missing opening \(";
    };
};

#seperate valid inputs into two groups
#then parse according to get correct output
for ($says){
if(/[\(\)]/){               ###if () =>
    s/\;/\}\;/;                     ##replace: ; => "};"    
    if(/d/){                        #(if digit)
        s/[\(]/for\(int i\=0\;i\</; ## ( => "for (int i = 0; i<"
        s/[\)]/\;i\+\+\)\{/;        ## ) => ";i++)"
    }else{                      #else
        s/[\(]/while\(/;            ## ( => "while("
        s/\)/\)\{/;                 ## ) => "){"
        }
    }
elsif(/\+/){                        #(if + =>
    if(/\=d/){                      ##  if = digit)  
        s/\+/[int]/;                ## + => "int"
    }else{                      #else
        s/\+/[string]/;             ## + =>"string" 
        };  

s/^\s+|\s+$//g;                     ##REMOVE white space
};                 
                   #write to file

open(FH, '>' .$file) or die "Cannot open < $file: $!";
    print FH $says;
    print FH "\}";
    close(FH);
    rename $file, $newname;      ## creates a c++ file
    my $cmd = (`g++ $newname`);  ##compile using g++ => a.out
    system($cmd);
}
