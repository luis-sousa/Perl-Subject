# MediaUC.pm

package Modulo;
use Modulo::MediaUC qw/media/;

use warnings;
use strict;

sub media($){
	my @array = @{$_[2]};
	my $i;
	my $valor;
	#Imprimir HashTable das AlunosUC-Notas
	my $alunoUC = \%hashAlunosUC;
	for (keys %{$alunoUC}){
		print "Aluno UC: ", $_, "\t";
		print "Nota: ", $hashAlunosUC{$_}, "\n";
	}
	#print eval($valor)."\n";
}
1;