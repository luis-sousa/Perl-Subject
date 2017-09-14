#!/usr/bin/perl

print "Insira uma expressão para ser calculada: ";
$str = <STDIN>;
chomp($str);

# Converte os '%'
$str =~ s/([\d]*)%/0.$1/g;

print "Resultado: " . (eval "$str") . "\n";

#EOF