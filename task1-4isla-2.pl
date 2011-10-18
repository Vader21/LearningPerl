#!/usr/bin/perl -w
use strict;
my @even_numbers;
my @not_even_numbers;
my @numbers;

print "Hello, man. This is 4isla 2.0. Do you want to type from you keyboard? y/n \n";
print "You Answer: \n";
chomp($_ = <STDIN>);
if (m/y|yes/i) {
    print "Type your numbers with Enter after each number and CNTRL+D in the end \n";
    chomp(@numbers = <STDIN>);
    eq_or_not();
} else {
    @numbers = qw/ 20 5 1 351 123 3 5 8 21 24 6 3 34 7 2 6 21 8783 7332 256 /;
    eq_or_not();}

sub eq_or_not{
foreach (@numbers) {
    my $new = $_ % 2;
    if ($new) {
        push (@not_even_numbers, $_)
    } else {
         push (@even_numbers, $_)
    }
}
print "Massive with Even Numbers. \n";
print "-" x 29, "\n";
foreach (@even_numbers) {
    print $_, "\t", "Even Number", "\n";
    print "-" x 29, "\n";
}
print "Massive with Not Even Numbers. \n";
print "-" x 29, "\n";
foreach (@not_even_numbers) {
    print $_, "\t", "Not Even Number", "\n";
    print "-" x 29, "\n";
}}
