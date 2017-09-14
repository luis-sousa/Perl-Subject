#!/usr/bin/perl
#Remover chave de uma hashtable
#Apagar hashtable
use warnings;

%hash=("123"=>"carro","99"=>"comboio","44"=>"aviao","1046"=>"autocarro");

print "\n##### ANTES DE APAGAR CHAVE 123 ##### \n";
@lista = keys(%hash);
foreach $chave (@lista){
	print "$chave tem o valor $hash{$chave}\n";
}

delete $hash{"123"}; #apaga a chave e o valor da hashtable

print "\n##### DEPOIS APAGAR CHAVE 123 ##### \n";
@lista = keys(%hash);
foreach $chave (@lista){
	print "$chave tem o valor $hash{$chave}\n";
}

print "\n##### APAGAR HASHTABLE ##### \n";
undef %hash;

@lista = keys(%hash);
foreach $chave (@lista){
	print "$chave tem o valor $hash{$chave}\n";
}
