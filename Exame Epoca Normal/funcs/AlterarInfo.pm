package AlterarInfo;
use funcs::AlterarInfo qw/adicionaDados/;
use strict;

sub adicionaDados($){
	open(FILE,${$_[0]}) || die "erro";
	
	while(my $linha=<FILE>){
		chomp($linha);
		$linha =~ s/(.*);(.*);(.*);(.*);(.*)/$1;$2;$3;$4;2010\/2011;$5/;
		print "$linha\n";
		
		
	}
	close(FILE);
	
}1;

