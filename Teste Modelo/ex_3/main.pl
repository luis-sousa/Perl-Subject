#!/usr/bin/perl

use strict;
use warnings;

use Funcs::LerFicheiro;
use Funcs::ApurarReceita;
use Funcs::AdicionaInfo;

# --- FUNCS

sub printHashTable($)
{
	# Obtem a HashTable
	my %hashTable = %{$_[0]};

	# Obtem as Keys da HashTable
	my @keys = keys(%hashTable);

	# Itera a HashTable
	foreach my $key (@keys) {
		print "Dados do utente: $key\n";

		# Obtem o array de episodios
		my @episodes = @{$hashTable{$key}};

		# Itera os episodios
		foreach my $episode (@episodes) {
			my @data = @{$episode};

			print "\t---\n";
			print "\tData: $data[0]\n";
			print "\tSintomas: $data[1]\n";
			print "\tMotivo: $data[2]\n";
			print "\tDoutor: $data[3]\n";
			print "\tPreço: $data[4]\n";
		}

		print "\n";
	}
}

# ---

# Lê o ficheiro
my %hashTable = %{ler("data.csv")};

# Apresenta os dados da HashTable
printHashTable(\%hashTable);

# Apresenta a receita para cada utente
receitaConsultas(\%hashTable);

# Adiciona dois novos registos
%hashTable = %{adicionaDados(\%hashTable, "134546;30/10/2012;entorce pe;entorce pe direito;Dra Maria Sousa;10.00€")};
%hashTable = %{adicionaDados(\%hashTable, "415250;16/11/2012;tonturas;pressão sanguínea baixa;Dra José Silva;30.00€")};

# Apresenta os dados da HashTable
printHashTable(\%hashTable);

receitaConsultas(\%hashTable);
