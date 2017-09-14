#!/usr/bin/perl
#Ler um ficheiro, filtrar as pessoas do sexo femenino e escrever o resultado no ficheiro "output1.txt" em modo append

open(FICH,"input3.csv") || die "erro abrir o ficheiro";
open(OUT,">>output3.txt") || die "erro abrir o ficheiro";

while ($linha=<FICH>){
	chomp($linha);
	($numero,$nome,$sexo) = split(";",$linha);
	if ($sexo eq "F"){
		print OUT "$linha\n";
	}
}

close(FICH);
close(OUT);
