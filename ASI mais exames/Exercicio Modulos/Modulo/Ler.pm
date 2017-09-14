package Modulo;
use Modulo::Ler qw/ler/;

use warnings;
use strict;

sub ler($){
	open(FILE, $_[0]) || die "erro ao abrir o ficheiro";
	my @lines=<FILE>;
	close(FILE);
	return \@lines;
}	
1;
