#!/usr/bin/perl
#N exemplos de vectores - mostrar e explicar um-a-um

system(clear);

print "###################\n";
@array = (1,2,3,2,3,3,2); 
print "@array\n";
print "@array"."\n";

$tam=@array;
print "$tam\n";
print "###################\n";

@c = ("ola", @array , "adeus");
print "@c\n";
print "###################\n";

($a, $b, $c) = (7, 8, 9);
print "$a $b $c\n";
print "###################\n";

@array = (5, 6, 7);
print "@array\n";
print "###################\n";

$linha = "8070212;Luis Sousa;M;9612332123";
@array = split(";",$linha);
print "Numero: $array[0] - Nome: $array[1]\n";
print "###################\n";

$linha = "8070212;Luis Sousa;M;9612332123";
($numero,$nome) = split(";",$linha);
print "Numero: $numero - Nome: $nome\n";
print "###################\n";


