package LerFicheiro;
use funcs::LerFicheiro qw/ler/;
use strict;

sub ler($){
	open(FILE,${$_[0]}) || die "erro";
	my %UC;
	my %Alunos;
	my %AlunosUC;	
	my @refs;
	while(my $linha=<FILE>){
		#print "$linha";
		chomp($linha);
		my @dados=split(";", $linha);	

		$UC{$dados[0]}=$dados[1];
		$Alunos{$dados[2]}=$dados[3];
		my $chave = $linha;
		$chave=~ s/(.*);(.*);(.*);(.*);(.*)/$3:$2/;
		#print "$chave\n";
		$AlunosUC{$chave}=$dados[4];
		
	}
	close(FILE);
	$refs[0] = \%UC;
	$refs[1] = \%Alunos;
	$refs[2] = \%AlunosUC;
	return \@refs;
}1;

