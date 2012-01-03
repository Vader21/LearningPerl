#!/usr/bin/perl -w
use strict;
while (){
print "Введите первое число A (A<B): \n";
exit if(!defined(my $a = <STDIN>));
chomp($a);
next if ($a=~/\D/);
print "Введите второе число B (B>A): \n";
exit if(!defined(my $b = <STDIN>));
chomp($b);
next if ($b =~/\D/);
    
if ($b <= $a) {
    print "Error: Число B ДОЛЖНО быть БОЛЬШЕ А. Введите правильно. \n";
    next
    };
my $sum;
my $num=$b-$a-1;

for (my $i=$a+1;$i<$b;$i++){
    $sum += $i;
    print $sum . "\n";
    
}
    print "количество цифр между $a и $b: ", $num, "\n";
    print "сумма чисел между $a и $b: ", $sum, "\n\n";
}