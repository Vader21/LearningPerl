#/usr/bin/perl

=cut
0. sudo install build-essential

1. Поставить local::lib
	http://search.cpan.org/~apeiron/local-lib-1.008004/lib/local/lib.pm#The_bootstrapping_technique
	Обрати внимание, что там идет по два примера, используй с путем по умолчанию "perl Makefile.PL --bootstrap" и вариант под bash. Не сделай лишнего.
	Команды, которые будешь исполнять - вставь сюда, чтобы я проверил.
	Прочитай какую-то статью, чтобы понять зачем оно надо. (статью укажи тут)
	К следующему пункту переходи, когда пришлешь результат работы и сообщишь, чтобы я проверил.

2. Поставить cpanminus
	Прочитай, что это такое и зачем надо(поискать статьи), ставить по пункту из ссылки:	
	http://search.cpan.org/~miyagawa/App-cpanminus-1.5002/lib/App/cpanminus.pm#Installing_to_local_perl_%28perlbrew%29

3. Поставить модуль Task::Dancer
	sudo install libpng12-dev libgd2-xpm-dev libjpeg62-dev libfreetype6-dev

	Использовать для установки cpanminus (показать КАК) НЕ sudo вариант! наш вариант - perlbrew (local::lib)
	!!! Обратить внимание на окончание лога установки, не случилось ли ошибки?!


	Залить на прочтение в Киндл:
	Введение: http://search.cpan.org/perldoc?Dancer::Introduction
	Документация: http://search.cpan.org/perldoc?Dancer
	Кукбук: http://search.cpan.org/perldoc?Dancer::Cookbook
	http://perldancer.org/documentation

4. Создать проект на Dancer, назвать его task0-dancer-test запустить и порадоваться
	http://search.cpan.org/~xsawyerx/Dancer-1.3072/lib/Dancer/Introduction.pod#SETUP

	Прочитать страницу мануала до тех пор, пока станет совсем непонятно.
	

0. Complete
1. Download & unpack And than
#perl Makefile.PL --bootstrap
#make
#make test
#make install
#echo 'eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)' >>~/.bashrc 
Пока понятный МАН не нашел. в поисках
2. install ok
3. поставил. работает
4. сделал /home/ГАРМ/Projects/LearningPerl/MyApp/ через dancer -a MyApp
запустил cd MyApp
    bin/app.pl
как в МАНе по сетапу.
закончилось на 
== Entering the development dance floor ... О_о
получил http://localhost:3000/ 
Getting started
Here’s. how to get dancing:

=cut
