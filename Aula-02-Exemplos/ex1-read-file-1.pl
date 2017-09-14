#!/usr/bin/perl
#Ler um ficheiro linha a linha e mostrar a linha no ecra

open(FICH,"input1.csv") || die "erro abrir o ficheiro";

while (<FICH>){
	print $_;
}

close(FICH);
