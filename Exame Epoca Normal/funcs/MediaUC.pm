package MediaUC;
use funcs::MediaUC qw/calcularMediaUC/;
use strict;

sub calcularMediaUC($){
	my @refs = @{$_[0]};
	#print "$refs[2]";

	my %USM = %{$refs[2]};
	my %media;
	my @arraydata;#nota tamanho;

	foreach my $value (keys(%USM)){
	 	#print "kEY:$value Valor: $USM{$value} \n";	
		my $change = $value;
		$change =~ s/(.*):(.*)/$2/;
		#print "$change\n";
		if($media{$change}){
			my @arrayNovo = @{$media{$change}};
			$arrayNovo[0] += $USM{$value};
			$arrayNovo[1] += 1;
			$media{$change}= \@arrayNovo;
		}else{
			$arraydata[0]=$USM{$value};
			$arraydata[1]= 1;
			$media{$change}= \@arraydata;
			}		
	}
	
	foreach my $iterador (keys(%media)){
		my @calc = @{$media{$iterador}};
		my $result = $calc[0]/$calc[1];
		print "A UC $iterador tem media $result \n";
	}

	
}1;
