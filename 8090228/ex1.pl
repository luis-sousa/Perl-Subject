#!/usr/bin/perl

use strict;

my $number;
print("Introduza um numero visa");
chomp($number = <STDIN>);

if($number =~ /\d{4}[\s]\d{4}[\s]\d{4}[\s]\d{4}[\s]\d{4}/){
	print "Bem estruturado\n";
}else{
	print "Mal estruturado\n";
}


