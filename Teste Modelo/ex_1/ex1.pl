#!/bin/usr/perl

# Pede uma string
print "Insira uma frase (sem caracteres especiais): ";
$str = <STDIN>;

# Remove os espaços e faz o lowercase
$str =~ s/([A-Z])/\l$1/g;
$str =~ s/(\s)//g;

# Conta todas as letras
@letters = ("a".."z");
@list = split("", $str);
$count = 0;

foreach my $letter (@letters) {
	foreach my $item (@list) {
		if ($letter eq $item)
		{
			$count++;
		}
	}
	print "$letter -> $count\n";
	$count = 0;
}

# EOF