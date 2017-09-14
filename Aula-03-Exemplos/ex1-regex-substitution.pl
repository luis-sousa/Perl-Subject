#!/usr/bin/perl
#Exemplos de expressões regulares - substituicao

#substituir todas as ocorrencias de ";" por ","
print "substituir todas as ocorrencias de ; por ,\n";
$var1="8010234;Luis Silva;LEI";
print "Escalar: $var1\n";

#$var1 =~ s/;/,/g;  # o "g" no final é de global = todas as ocorrencias
$var1 =~ s/;/,/g ;
print "Escalar alterado: $var1\n";

print "##############\n";

$var1="O joao e o JOAO foram passear";
$var1 =~ s/JOAO/PEDRO/ig;
print "Escalar alterado: $var1\n";

print "##############\n";

#substituir todas as ocorrencias $ por €
print "substituir todas as ocorrencias \$ por €\n";
$var1="\$200.27";
print "Escalar: $var1\n";
#$var1 =~ s/$/€/g; # o $ é o final de linha
$var1 =~ s/\$/€/g;
print "Escalar alterado: $var1\n";
