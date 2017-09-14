package Modulo;

use Modulo::AlterarInfo qw/adicionaDados/;
use strict;
use warnings;

#ASI;9027;8091244;Joao Pedro de Goncalves;15

sub adicionaDados($) {
	#my @barlistint;
	#open FICH, $_[0] || die "Ficheiro $_[0] inexistente ou com erro!";
	#while (<FICH>){	
	#	chomp;
	#	s/(^[\w]+);(\d{4});(\d{7});[A-Z][a-z]+\s[A-Z][a-z]+\s[A-Z][a-z]+;(\d{2}$)/${1}${2}${3}2010\/2011${4}/; 
	#	push (@barlistint,$_);
	
	my @array = @{$_[0]};
	my $i;		
	for($i=0; $i<@array;$i++){
		if($array[$i] =~ s/(^[\w]+);(\d{4});(\d{7});([A-Z][a-z]+\s[A-Z][a-z]+\s[A-Z][a-z]+);(.*)/${1};${2};${3};${4} 2010\/2011;${5}/){
			print $array[$i];
			}
			else {$array[$i] =~ s/(^[\w]+);(\d{4});(\d{7});([A-Z][a-z]+\s[A-Z][a-z]+\s[a-z]+\s[A-Z][a-z]+);(.*)/${1};${2};${3};${4} 2010\/2011;${5}/;
				print $array[$i];
			}
		
		
	}

	#print "entrou";
	#return \@barlistint;
}

1;



#(^\d);\s([a-z]+);([a-z]+);([\w\s\w]*);\$(\d\.\d{2}$)/${1}\-\:${2} ou ${3} com ${4};${5}E
#(\d{2}$)