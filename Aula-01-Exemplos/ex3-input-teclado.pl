#!/usr/bin/perl
#Programa que pede dois números ao utilizador e os multiplica. Mostra o resultado no ecrã com uma mudança de linha no final

#Realçar o papel do chomp e cuidados com o print

system(clear);
print "################## VERSAO 1 ############\n";

print "Introduza num1: ";
$num1=<STDIN>;
print "Introduza num2: ";
$num2=<STDIN>;

print "Versao sem chomp: $num1*$num2\n";

print "################## VERSAO 2 ############\n";
#Mesmo Exercício - Variante 2

print "Introduza num1: ";
$num1=<STDIN>;
chomp($num1);
print "Introduza num2: ";
$num2=<STDIN>;
chomp($num2);

print "Versao com chomp: $num1*$num2\n";
print "Versao com chomp - print correcto: ".$num1*$num2."\n";

print "################## VERSAO 3 ############\n";
#Mesmo Exercício - Variante 3

print "Introduza num1: ";
chomp($num1=<STDIN>);
print "Introduza num2: ";
chomp($num2=<STDIN>);

print "Versao com chomp: $num1*$num2\n";
print "Versao com chomp - print correcto: ".$num1*$num2."\n";

