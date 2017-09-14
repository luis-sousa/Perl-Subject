#!/usr/bin/perl
#Tabela de hash com chave=>valor
#Impressão dos valores associados a cada chave

%hash=("123"=>"carro","99"=>"comboio","44"=>"aviao","1046"=>"autocarro");
#De outra forma 
#%hash=("123","carro","99","comboio","44","aviao","1046","autocarro");

@lista = keys(%hash);
foreach $chave (@lista){
	print "$chave tem o valor $hash{$chave}\n";
}
