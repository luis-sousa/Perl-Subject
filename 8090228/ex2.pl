#!/usr/bin/perl

use strict;

my $matricula;
print("Introduza matricula portuguesa");
chomp($matricula = <STDIN>);

if($matricula =~ /\d{2}-[A-Z]*-\d{2}/ | $matricula =~ /[A-Z]*-\d{2}-\d{2}/ | $matricula =~ /\d{2}-\d{2}-[A-Z]*/){
	print "Valido\n";
}else{
	print "Invalido\n";
}


