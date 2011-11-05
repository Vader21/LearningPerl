#!/usr/bin/perl -w
use strict;

my @very_cold = (
"",
"Ты убил Кенни. Very cold \n",
"Не трать мое время, неудачник. Very Cold \n",
"Через пять неудачных попыток твой ПК обидится и уйдет. Very Cold \n",
"Critical Error. Very Cold \n",
"O Rly. Very cold \n",
"WTF!? Very cold \n",
"1,2,3,4,5 Фреди пшел тебя искать. Very cold \n",
"Зря ты так. Зря, зря, зря. Very cold \n",
"Да ты прям как румынский спецназовец, только не румын. Very cold \n",
"Еще раз так ответишь и к тебе прийдет Джастин Бибер. Very cold \n",
"Иди ты в Нарнию с такой интуицией. Very cold \n",
"А ты играешь в гаму словно чумачечий, от крутости кода ты потерял дар речи. Very cold \n",
"Убейся об стену. Very cold \n",
);

my @cold = (
"",
"Google в помощ. Cold \n",
"Тебе нужна подсказка из зала. Cold \n",
"На тебя смотрят тёлки. Не профукай свой шанс. Cold \n",
"Кот Бегемот тебя накажет. Cold \n",
"Учу Ангийский с первого класса. Выучил 3 слова - What The Fuck. Cold \n",
"This is SPARTA!!! Cold \n",
"Играть только Нэрдам или тому кому нефиг делать. Cold \n",
"Вы все Говно,а Говно должно кричать громче. Cold \n",
);
my @hot = (
"",
"Да ты прям Леголас - меткий в глаз. Hot \n",
"Тебя охраняет сам Бородач. Hot \n",
"Me Gusta. Hot \n",
"Ответил, скажем прямо, ты не очень, так что прийдется думать тебе что есть мочи. Hot \n",
"Люк, я твой отец. Hot \n",
);
my @very_hot = (
"",
"Святой Джыгурда, да ты же Бэтмен. Very Hot \n",
"Якорь мне в зад, да ты же Девид Блейн. Very Hot \n",
"Грёбаный Йод. Даже Шелдон не ответил бы лучше. Very Hot \n",
"Headshot. Very Hot \n",
"Godlike. Very Hot \n",
"Та ты прям изобретатель синхрофазатрона. Very Hot \n",
"Даже Чак Норис боится тебя. Very Hot \n",
"Я хочу от тебя детей. Very Hot \n",
"Все тёлки твои. Very Hot \n",
);
my $size_v_cold = $#very_cold;
my $size_cold = $#cold;
my $size_hot = $#hot;
my $size_v_hot = $#very_hot;

my @num = (1...100);
my $rnum = int(rand(@num));
print "Угадай ка ты число от 1 до 100 и получишь бАльшую кАнфету. \n";
my $dif = 1;
while ($dif){
chomp(my $line = <STDIN>);
$dif = abs($line - $rnum);
my $y;
if (($dif >= 50) && ($dif <= 100)) {
    my $x = int(rand($size_v_cold));
    print $y = $very_cold[$x];
    } elsif (($dif >= 30) && ($dif <= 50)){
    my $x = int(rand($size_cold));
    print $y = $cold[$x]
    } elsif (($dif >= 10) && ($dif <= 30)){
    my $x = int(rand($size_hot));
    print $y = $hot[$x]
    } elsif (($dif >= 0) && ($dif <= 10)){
    my $x = int(rand($size_v_hot));
    print $y = $very_hot[$x]
    } elsif ($dif = 0){
    print "Ты Просто Красавец=) Просрал столько времени, но угадал число. \n";
    }
}
print "Ты Просто Красавец=) Просрал столько времени, но угадал число ";
print $rnum;