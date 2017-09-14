#!usr/local/bin/perl -w
#Joao Pedro Ferreira,912334121,4615-453,Porto

chomp($teclado = <STDIN>);
print "$teclado\n";
if($teclado =~ /[A-Z][a-z]*\s[A-Z][a-z]*\s[A-Z][a-z]*,\d{9},\d{4}\-\d{3},[A-Z][a-z]*/){
	print "Bem estruturado\n";
}else{
	print "Mal estruturado\n";
}
