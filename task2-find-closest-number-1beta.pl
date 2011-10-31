#!/usr/bin/perl -w
use strict;
my @numbers;
my @num_list = qw / 5 10 20 40 80 100 /;
my @d;

#приглашение в программу. выбор печати из масива или с клавиатуры.
print "Prog 'Find Closest Number' ver.01 alpha. \n";
print "Closest are Numbers 5, 10, 20, 40, 80, 100";
print "Do you want to type numbers from keyboard? \n";
print "y/n \n";
print "You Answer: \n";
chomp($_ = <STDIN>);
#печать с клавиатуры
if (m/y|yes/i) {
    print "Type your numbers with Enter after each number and CNTRL+D in the end \n";
    chomp(@numbers = <STDIN>);
#печать с массива @numbers
} else {
    @numbers = qw/ no numbers now /;
}
my $index = -1;
my $d = 0;
foreach my $x (@numbers) {
    foreach my $y (@num_list){
    $index ++;
    if ($index == 0) {
        $d = $x - $y;
    }
    if (abs($x - $y) <= $d){
        
      }
        } 
}