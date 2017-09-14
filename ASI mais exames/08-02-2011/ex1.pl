#!/usr/bin/perl

$num="Este exame custa a resolver (se calhar, até nem me custa muito)";

$num=~s/custa/não custa/;
$num=~s/\(/\-/;
$num=~s/nem me custa muito/estudei o suficiente/;
$num=~s/\)/\!/;

print "$num\n";


