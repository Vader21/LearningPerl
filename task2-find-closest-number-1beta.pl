#!/usr/bin/perl -w
use strict;

my @numbers;
my @num_list = qw / 0 5 10 20 30 40 50 60 70 80 90 100 /;
my @more;
my @less;


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
    @numbers = qw/ 1 15 27 33 /;
}

foreach my $x (@numbers) {
    foreach my $y (@num_list) {
        if ($y > $x) {push (@more, $y)}
        if ($y < $x) {push (@less, $y)}
    }
}
my $in = 0;
my $z = -1;
foreach my $x (@numbers){
    my $a = abs($x - $more[$in]);
    my $b = abs($x - $less[$z]);
   if ($a < $b) {
    print "$more[$in]" . "\n";
   }
   if ($a > $b) {
    print "$less[$z]" . "\n";
   }
   if ($a = $b) {
    print "$x";
   }
   $in ++;
   $z --; 
}
