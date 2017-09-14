#!/usr/bin/perl
#Ler um ficheiro e mostrar no ecra apenas pessoas do sexo masculino

open(FICH,"input1.csv") || die "erro abrir o ficheiro";

while ($linha=<FICH>){
	chomp($linha);
	($numero,$nome,$sexo) = split(";",$linha);
	if ($sexo eq "M"){
		print "$linha\n";
	}
}

close(FICH);
