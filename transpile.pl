#!/usr/bin/env perl
use strict;
use warnings;

print "project name?";
my $file= <STDIN>;
chomp ($file);  #will be used for output file name
                #prompt for line of code
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
for($says){
    open(FH, '>' .$file) or die "Cannot open < $file: $!";
    print FH $says;
    print $says;
    close(FH);

}