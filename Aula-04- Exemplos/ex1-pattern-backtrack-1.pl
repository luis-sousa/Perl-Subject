#!/usr/bin/perl -w
# Exemplos de expressões regulares com backtrack - protecção dos componentes entre parentesis
$str="O Mr. quando se ri,mais parece uma Miss";
print "$str\n";
<STDIN>;
$str =~ s/(.*)Mr\.(.*)Miss/$1Sr\.$2Menina/;
print "$str\n";

