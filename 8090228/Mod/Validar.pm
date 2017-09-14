#!/usr/bin/perl


use Mod::Validar qw/atrasados/;

use warnings;
use strict;

sub atrasados($){

	my %hashTable = %{$_[0]};

	my @keys = keys(%hashTable);

	# Itera a HashTable
	foreach my $key (@keys) {
		

		# Obtem o array de episodios
		my @episodes = @{$hashTable{$key}};

		# Itera os episodios
		foreach my $episode (@episodes) {
			my @data = @{$episode};
			my ($value) = $data[2] =~  /\/([\d]*)\//;   #   /([\d]*)\/\//; 
  
			if($value >5){}

			print "\t---\n";
			print "\tnome: $data[0]\n";
			print "\tcotaMensal: $data[1]\n";
			print "\tData Pagamento: $data[2]\n";
			print "\tValor Pago: $data[3]\n";
			}
		}

		print "\n";
	}



	sub faltosos($){
	my %hashTable = %{$_[0]};

	my @keys = keys(%hashTable);

	# Itera a HashTable
	foreach my $key (@keys) {
		

		# Obtem o array de episodios
		my @episodes = @{$hashTable{$key}};

		# Itera os episodios
		foreach my $episode (@episodes) {
			my @data = @{$episode};
			my ($cota) = $data[1] =~ /([\d]*\.[\d]*)/;
			my ($valorPago) = $data[3] =~ /([\d]*\.[\d]*)/;     

			if($cota - $valorPago  > 0){

			print "\t---\n";
			print "\tnome: $data[0]\n";
			print "\tcotaMensal: $data[1]\n";
			print "\tData Pagamento: $data[2]\n";
			print "\tValor Pago: $data[3]\n";
			}
		}

		print "\n";	
	}
}
1;

