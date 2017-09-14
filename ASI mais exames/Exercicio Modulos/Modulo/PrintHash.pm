package Modulo;

use Modulo::PrintHash qw/printhash/;
use strict;
use warnings;

sub printhash($){
	my $apontador=$_[0];
	my %aux=%$apontador;

	foreach my $key (keys %aux){
		my $reference=$aux{$key};
		#print com referencias;		
		#print "$key => @$reference\n";

		#print sem referencias
		print "$key => $aux{$key}\n";

	}


}
1;
