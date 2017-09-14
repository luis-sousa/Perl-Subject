#!/usr/bin/perl
#ATENCAO a forma como se imprime o array porque @array contem o tamanho. Vejamos alguns detalhes com o print de um vector

@a=("Joao","Paulo","Mario","Oliveira");
$tam_array=@a;

print @a;
print "\n";
print @a."\n";  

print "@a\n";

print "$tam_array\n";
