package LerFicheiro;

use Modulo::LerFicheiro qw/ler/;
use strict;
use warnings;

sub ler($){
	open (FILE,$_[0]) || die "Erro ao abrir ficheiro!";
	my %uc;
	my %alunos;
	my %alunosuc;
	my @result;

	while(<FILE>){
		chomp($_);
		
		my @array=split(";",$_);
		
		$uc{$array[0]}=$array[1];
		$alunos{$array[2]}=$array[3];
		my $key = join (':',($array[2],$array[1]));
		$alunosuc{$key}=$array[4];

	}
	$result[0]= \%uc;
	$result[1]= \%alunos;
	$result[2]= \%alunosuc;

	close(FILE);
	
	return @result;
}1;
