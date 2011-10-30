#!/usr/bin/perl -w
use strict;
my @user_numbers;
my @num_list = qw / 5 10 20 40 80 100 /;
my @d;

#приглашение в программу. выбор печати из масива или с клавиатуры.
print "Prog 'Find Closest X Coordinate' ver.01 alpha. \n";
print "X coordinate points at: ".join(",", @num_list);
print "Do you want to type numbers from keyboard? [y/N]: ";
chomp($_ = <STDIN>);
#печать с клавиатуры
if (m/y|yes/i) {
    print "Type your numbers with Enter after each number and CNTRL+D in the end \n";
    chomp(@user_numbers = <STDIN>);
#печать с массива @user_numbers
} else {
    @user_numbers = qw/ 6 /;
}
my $d = 0;
foreach my $x (@user_numbers) {
    for my $i (0..@num_list) {
        if ($i == 0) {
            $d = $x - $num_list[$i];
        }
        if (abs($x - $num_list[$i]) <= $d){
            
        }
    } 
}