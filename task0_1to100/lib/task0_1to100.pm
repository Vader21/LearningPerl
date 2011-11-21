package task0_1to100;
use Dancer ':syntax';
use common::sense;

our $VERSION = '0.1';

get '/' => sub {
    template 'index', { rnum => int(rand(100)), output => "Угадай ка ты число от 1 до 100 и получишь бАльшую кАнфету. <br>\n", time_start => time };
};

post '/' => sub {
    my @very_cold = (
    "[Очень Холодно]Ты убил Кенни.",
    "[Очень Холодно]Не трать мое время, неудачник.",
    "[Очень Холодно]Через пять неудачных попыток твой ПК обидится и уйдет.",
    "[Очень Холодно]Critical Error.",
    "[Очень Холодно]O Rly.",
    "[Очень Холодно]WTF!?",
    "[Очень Холодно]1,2,3,4,5 Фреди пшел тебя искать.",
    "[Очень Холодно]Зря ты так. Зря, зря, зря.",
    "[Очень Холодно]Да ты прям как румынский спецназовец, только не румын.",
    "[Очень Холодно]Еще раз так ответишь и к тебе прийдет Джастин Бибер.",
    "[Очень Холодно]Иди ты в Нарнию с такой интуицией.",
    "[Очень Холодно]А ты играешь в гаму словно чумачечий, от крутости кода ты потерял дар речи.",
    "[Очень Холодно]Убейся об стену.",
    "[Очень Холодно]На коробке с наушниками изображена красивая, спокойная голубоглазая девушка. Почему ее не показали взъерошенную, растрепанную, с налитыми кровью глазами, пока она пыталась эти ****** наушники из коробки запаянной достать?",
    );
    
    my @cold = (
    "[Холодно]Google в помощ.",
    "[Холодно]Тебе нужна подсказка из зала.",
    "[Холодно]На тебя смотрят тёлки. Не профукай свой шанс.",
    "[Холодно]Кот Бегемот тебя накажет.",
    "[Холодно]Учу Ангийский с первого класса. Выучил 3 слова - What The Fuck.",
    "[Холодно]This is SPARTA!!!1",
    "[Холодно]Играть только Нэрдам или тому кому нефиг делать.",
    "[Холодно]Вы все Говно,а Говно должно кричать громче.",
    );
    my @hot = (
    "[Жарко]Да ты прям Леголас - меткий в глаз.",
    "[Жарко]Тебя охраняет сам Бородач.",
    "[Жарко]Me Gusta.",
    "[Жарко]Ответил, скажем прямо, ты не очень, так что прийдется думать тебе что есть мочи.",
    "[Жарко]Люк, я твой отец.",
    "[Жарко]Да тебя даже пельмени боятся, всплывать не решаются и держатся вместе",
    );
    my @very_hot = (
    "[Очень Жарко]Святой Джыгурда, да ты же Бэтмен.",
    "[Очень Жарко]Якорь мне в зад, да ты же Девид Блейн.",
    "[Очень Жарко]Грёбаный Йод. Даже Шелдон не ответил бы лучше.",
    "[Очень Жарко]Headshot.",
    "[Очень Жарко]Godlike.",
    "[Очень Жарко]Та ты прям изобретатель синхрофазатрона.",
    "[Очень Жарко]Даже Чак Норис боится тебя.",
    "[Очень Жарко]Я хочу от тебя детей.",
    "[Очень Жарко]Все тёлки твои.",
    '[Очень Жарко]Человечество не останется вечно на Земле, но в погоне за светом и пространством сначала робко проникнет за пределы атмосферы, а затем завоюет себе все околосолнечное пространство. - Циолковский Константин Эдуардович.'
    );
    

    my $dif = 1;
    my $time_start = params->{time_start};
    my $line = params->{guess_number};
    my $output = params->{output};
    my $rnum = params->{rnum};
    if (!($line =~ m/\D/) && $line <=100 && $line >=1) {
    $dif = abs($line - $rnum);
    if (($dif > 50) && ($dif < 100)) {
	my $x = int(rand(scalar @very_cold));
	$output .= $very_cold[$x] . "<br>\n";
	} elsif (($dif > 30) && ($dif <= 50)){
	my $x = int(rand(scalar @cold));
	$output .= $cold[$x] . "<br>\n";
	} elsif (($dif > 10) && ($dif <= 30)){
	my $x = int(rand(scalar @hot));
	$output .= $hot[$x] . "<br>\n";
	} elsif (($dif > 0) && ($dif <= 10)){
	my $x = int(rand(scalar @very_hot));
	$output .= $very_hot[$x] . "<br>\n";
	} else {
	$output .= "Ты Просто Красавец=) Просрал столько времени, но угадал число $rnum <br>\n"
	. "Ты просрал " . ((time) - $time_start) .  " секунд(ы) <br>\n"
	. "<img src=\"/images/Cat_Congratulations.gif\"> <br>"
	. "<a href=http://localhost:3000/>NEW GAME</a>";
	};
    } else {
	$output .=  "Насяльника, Равшана мана не понимать. Введи мана другуя буква <br>\n"
	};
#    print "Ты просрал ", ((time) - $time_start),  " секунд(ы) \n";
    template 'index', { output => $output, rnum => $rnum, time_start => $time_start };
};

true;
