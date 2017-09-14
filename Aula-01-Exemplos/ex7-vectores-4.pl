#!/usr/bin/perl
#Adicionar elementos lidos do teclado a um vector e imprimir uma dada posicao

$valor="inicio";
while ($valor ne "ZZZ"){
	print "insira valor (ZZZ para terminar): ";
	$valor=<STDIN>;
	chomp $valor;
	if ($valor ne "ZZZ"){
		push(@lista,$valor);	
	}
}

$tam=@lista;
print "tamanho: $tam\n";

print "insira indice a imprimir: ";
$id=<STDIN>;
print "$lista[$id]\n";

