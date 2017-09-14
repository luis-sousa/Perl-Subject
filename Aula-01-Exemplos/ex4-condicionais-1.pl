#!/usr/bin/perl
#Programa que dados dois números lidos a partir do teclado, diz qual dos números é maior, menor ou igual que o outro.

print "Introduza num1: ";
chomp($num1=<STDIN>);
print "Introduza num2: ";
chomp($num2=<STDIN>);

print "O valor de \$num1=$num1 e \$num2=$num2\n";

if ($num1 >= $num2) {
	print "O $num1 é >= que o $num2\n";
} else {
	print "O $num1 é < que o $num2\n";
}

#ElseIf
if ($num1 == $num2) {
	print "O $num1 é = ao $num2\n";
} elsif ($num1 < $num2) {
	print "O $num1 é < que o $num2\n";
} else {	
	print "O $num1 é > que o $num2\n";
}
