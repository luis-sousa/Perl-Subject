#!/usr/bin/perl

@atividadesLazer = ("al1","al2","al3");
@chaveEuromilhoes = ("12","34","56");
@locaisFavoritos = ("l1","l2","l3");

%hash=(0=>\@atividadesLazer,1=>\@chaveEuromilhoes,2=>\@locaisFavoritos);



print " local favorito $hash{2}[0]\n";

