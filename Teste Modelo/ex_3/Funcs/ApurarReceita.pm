# ApurarReceita.pm

use Funcs::ApurarReceita qw/receitaConsultas/;

use warnings;
use strict;

# Apresenta a receita de cada utente
# agrupada por mês
#
# ARGS
#	0 - Referencia para a HashTable
#
sub receitaConsultas($)
{
	# Apanha a HashTable
	my %hashTable = %{$_[0]};

	# Itera os utentes
	my @keys = keys(%hashTable);

	foreach my $key (@keys) {
		print "Receita do utente: $key\n";

		# faz os calculos da receita
		my %receita = ();
		my @episodes = @{$hashTable{$key}};

		foreach my $episode (@episodes) {
			# Obtem os dados do episodio
			my @data = @{$episode};

			# Obtem o mês do episodio
			my ($mounth) = $data[0] =~ /\/([\d]*)\//;
			my ($price) = $data[4] =~ /([\d]*\.[\d]*)/;	

			if (exists $receita{$mounth})
			{
				$receita{$mounth} += $price;
			} 
			else
			{
				$receita{$mounth} = $price;
			}
		}

		# Apresenta os resultados
		my @mounths = keys(%receita);

		foreach my $mounth (@mounths) {
			print "\tNo mês $mounth foi de $receita{$mounth}€\n";
		}
	}
}

1;
# EOF