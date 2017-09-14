#!/usr/bin/perl
#Ler valores do teclado para um vector ate se pressionar ZZZ
#Quando o utilizador pressiona ZZZ os dados do vector sao guardados no ficheiro (1 por linha)

open(OUT,">output2.txt") || die "erro abrir o ficheiro";

while ($linha ne "ZZZ") {
	chomp($linha=<STDIN>);
	if ($linha ne "ZZZ") { 
		push(@vectorLinhas,$linha);
	}
}
foreach $elemento (@vectorLinhas) { 
	print OUT "$elemento\n";
}
close(OUT);
