# prep-lang

This program is not currently 'hooked up' to take arguments from perl and therefore conversion to copy and cast file requires manual input;
Must run in mac, linux, or wsl enviroment;
Current build is very fragile, very little error checking

############SYNTAX#################

    ##new variable
+ /variablename/ = /variable description/ ;
    ##number to indicate loop cycle 
(/number/) /variable/ /event/ ;
    ##represent a while statement
(/variable/) /variable/ /event/ ;

##############################

TO USE
RUN 'perl transpile.pl'
ENTER the name of program,
ENTER a line of code
>>will output FILE
RUN 'a.out FILE nameofyourchoosingfile'
>>will output  nameofyourchoosingfile/with only integers

