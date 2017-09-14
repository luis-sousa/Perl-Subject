#!/usr/bin/perl
use strict;
use warnings;

use Mod::Leitura;
use Mod::Validar;

sub printHashTable($)
{
	# Obtem a HashTable
	my %hashTable = %{$_[0]};

	# Obtem as Keys da HashTable
	my @keys = keys(%hashTable);

	# Itera a HashTable
	foreach my $key (@keys) {
		print "Dados: $key\n";

		# Obtem o array de episodios
		my @episodes = @{$hashTable{$key}};

		# Itera os episodios
		foreach my $episode (@episodes) {
			my @data = @{$episode};

			print "\t---\n";
			print "\tnome: $data[0]\n";
			print "\tcotaMensal: $data[1]\n";
			print "\tData Pagamento: $data[2]\n";
			print "\tValor Pago: $data[3]\n";
		}

		print "\n";
	}
}

# Lê o ficheiro
my %hashTable = %{ler("dados.txt")};

faltosos(\%hashTable);
atrasados(\%hashTable);


