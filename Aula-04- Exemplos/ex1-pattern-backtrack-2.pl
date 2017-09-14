#!/usr/bin/perl -w
# Exemplos de expressões regulares com backtrack - protecção dos componentes entre parentesis
$linha="8110234;Jose Antonio;22;M;961237272";
print $linha."\n";
<STDIN>;
$linha =~ s/(^[;\d\s\w]*);(\d{9}$)/$1;00351$2/;
print $linha."\n";
