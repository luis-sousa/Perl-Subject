#!/usr/bin/perl
#Programa que dadas duas strings lidas a partir do teclado as compara e mostra no ecrã informação sobre se as strings são iguais ou diferentes

print "Introduza str1: ";
chomp($str1=<STDIN>);
print "Introduza str2: ";
chomp($str2=<STDIN>);

if ($str1 eq $str2) {
#Experimentar trocar o 'eq' por '==' 
#Attn: operadores lógicos de números e diferente caracteres (ver doc. fornecida)
	print "iguais\n";
} else {
	print "diferentes\n";
}



