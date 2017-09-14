#!/usr/bin/perl
#Adicionar posicoes vector sem respeitar sequencia das posicoes (lista ligada)
#Remover posicoes de um vector

@vec1 = (1,4,5,6,7);

print "@vec1\n";

$vec1[10]=10;

print "#########\n";
print "@vec1\n";


print "#########\n";
for ($i=0; $i<@vec1; $i++) {
	print "$vec1[$i]\n";
}


print "#########\n";
print @vec1."\n";

print "#########\n";
$vec1[1]=undef;
print "@vec1\n";
if ($vec1[1]==""){
	print "vazio\n";
}
