#!/usr/bin/perl

# LerFicheiro.pm

use Mod::Leitura qw/ler/;

use warnings;
use strict;

# Carrega o ficheiro para uma HashTable
#
# ARGS
#	0 - Caminho do ficheiro
#	
# RETURNS
#	Referencia para a HashTable
#
sub ler($)
{
	# Abre o ficheiro
	open(FILE, "$_[0]");
  
	# Nova Hastable
	my %hash = ();

	# Percorre todas as linhas
	while (my $line = <FILE>)
	{
		# Limpa a linha
		chomp($line);

		# Faz o split da linha
		my @allData = split(";", $line);

		# Cria o novo episodio
		my @newEpisode = @allData[1..4];

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
	}

	return \%hash;
}

1;
#EOF




