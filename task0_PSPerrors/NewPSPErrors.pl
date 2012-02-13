#!/usr/bin/perl -w
use strict;
#PSPerrors Test1.
print "Hi. Welcome in HQcyber PSP Hack Web Bata Base. You can find all information about Sony errors. They are divided on Sintax, DAX FW ONLY, Networking, Firmware, Memory Stick, UMD, Homebrew, POPS, Other. The categories are in brackets in the end of error description. \n";
chomp(my $line = <STDIN>);
open (ERROR, "< errors.txt");
my %erros_hash = split ('#', <ERROR>);
foreach (%erros_hash) {
if ($line eq $_) {
    print $erros_hash{"$_"};
}
}