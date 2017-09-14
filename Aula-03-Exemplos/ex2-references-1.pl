#!/usr/bin/perl

@vector1=(20,23,22,33,65);

$refVector1=\@vector1;  # $refVector1 é o apontador para o vector1

print "$$refVector1[0]\n"; # mostra o conteudo do apontador posicao 0 do array

@aux=@$refVector1; #recria array a partir da referencia para o vector1
print "@aux\n";
print "\n@{$refVector1}\n";
