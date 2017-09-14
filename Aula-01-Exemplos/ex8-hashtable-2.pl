#!/usr/bin/perl
#Adicionar chave=>valor a uma hashtable

%hash=("123"=>"carro","99"=>"comboio","44"=>"aviao","1046"=>"autocarro");

print "\n##### ANTES #####\n";
@lista = keys(%hash);
foreach $chave (@lista){
	print "$chave tem o valor $hash{$chave}\n";
}

@vector=%hash;
push(@vector,"199", "barco");

#$hash{'199'}="barco";

print "\n##### DEPOIS #####\n";
%hash=@vector;
@lista = keys(%hash);
foreach $chave (@lista){
	print "$chave tem o valor $hash{$chave}\n";
}

