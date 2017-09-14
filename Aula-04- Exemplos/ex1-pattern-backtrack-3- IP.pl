#!/usr/bin/perl

#validar se um determinado endereco IP pertence a classe C

$ip = <STDIN>;

if ($ip=~/^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/ &&(($1>=192 && $1<=223  && $2<=255 && $3<=255  &&$4<=254 )))
{ 
	print "OK\n"; 
} else { 
	print "NOK\n"; 
}
