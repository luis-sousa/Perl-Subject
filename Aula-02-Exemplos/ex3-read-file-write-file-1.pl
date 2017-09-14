#!/usr/bin/perl
#Ler um ficheiro, filtrar as pessoas do sexo masculino e escrever o resultado num ficheiro "output1.txt"

open(FICH,"input3.csv") || die "erro abrir o ficheiro";
open(OUT,">output3.txt") || die "erro abrir o ficheiro";

while ($linha=<FICH>){
	chomp($linha);
	($numero,$nome,$sexo) = split(";",$linha);
	if ($sexo eq "M"){
		print OUT "$linha\n";
	}
}

close(FICH);
close(OUT);
