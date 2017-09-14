#!/usr/bin/perl

@vector1=(20,23,22,33,65);
$media=0;
$media_idade=0;

$media = calcula_media_idade(\@vector1); #Passagem por referencia 
print "Media de idades 1: $$media\n";

$media=0;
$media_idade=0;

print "Media de idades 2: ".${&calcula_media_idade(\@vector1)}."\n";

sub calcula_media_idade() {
	$elementosArray = $_[0]; #O argumento 0 e uma referencia para o vector1
	@aux=@$elementosArray;   #recria array a partir dos escalares acessiveis pelo apontador
	foreach $idade (@aux){
		$media_idade=$media_idade+$idade;
	}
	$media_idade=$media_idade/@aux;
	return \$media_idade;
}
