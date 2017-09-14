#!/usr/bin/perl

open(FICH,"input.csv") || die "erro abrir o ficheiro";
open(OUT,">output.txt") || die "erro abrir o ficheiro";

while ($linha=<FICH>){
	chomp($linha);
	($numero) = split(" ",$linha);
	$linha =~ s/\d{9}/+351$numero/;
	print OUT "$linha\n";
}
close(FICH);
close(OUT);
