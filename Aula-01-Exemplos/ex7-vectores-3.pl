#!/usr/bin/perl
#Ler valores do teclado para um vector e imprimir o mesmo no final mas por ordem inversa 

$valor="inicio";
while ($valor ne "ZZZ"){
	print "insira valor (ZZZ para terminar): ";
	$valor=<STDIN>;
	chomp $valor;
	if ($valor ne "ZZZ"){
		push(@lista,$valor);	
	}
}

print reverse(@lista);
print "\n";
