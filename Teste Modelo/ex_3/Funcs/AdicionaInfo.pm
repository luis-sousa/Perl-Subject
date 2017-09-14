# AdicionaInfo.pm

use Funcs::AdicionaInfo qw/adicionaDados/;

use warnings;
use strict;

# Adiciona um novo episodio a um utente
#
# ARGS
#	0 - Referencia para a HashTable
# 	1 - Setrinf com os novos dados
#
# RETURNS
# 	Referencia para a HashTable
sub adicionaDados($$)
{
	my %hash = %{$_[0]};

	my $line = $_[1];

	# Limpa a linha
	chomp($line);

	# Faz o split da linha
	my @allData = split(";", $line);

	# Cria o novo episodio
	my @newEpisode = @allData[1..5];

	# Verifica se o utente existe na HashTable
	if (exists $hash{$allData[0]})
	{
		# Existe
		# Obtem o array de episodios
		my $episodes = $hash{$allData[0]};

		# Adiciona o novo episodio
		push(@{$episodes}, \@newEpisode);
	}
	else
	{
		# Não existe
		# Cria Um novo array de episodios
		my @episodes;

		# Adiciona o novo episodio
		push(@episodes, \@newEpisode);

		# Cria um registo para o novo utente
		$hash{$allData[0]} = \@episodes;
	}

	return \%hash;
}

1;
# EOF