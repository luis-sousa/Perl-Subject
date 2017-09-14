#!usr/local/bin/perl -w
use funcs::LerFicheiro;
use funcs::MediaUC;
use funcs::AlterarInfo;
use strict;

my $file = "input.txt";
my $ref_arrayHash = LerFicheiro::ler(\$file);
my $ref_Media = MediaUC::calcularMediaUC($ref_arrayHash);
AlterarInfo::adicionaDados(\$file);
