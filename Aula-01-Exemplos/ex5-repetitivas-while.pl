#!/usr/bin/perl
#Somar o tamanho das frases inseridas

$tamanho=0;
while ($linha ne "ZZZ"){
	print "insira frase (ZZZ para terminar): ";
	chomp($linha=<STDIN>);
	if ($linha ne "ZZZ"){
		$tamanho=$tamanho+length($linha);
	}
}
print "Valor inserido: $tamanho\n";


	
