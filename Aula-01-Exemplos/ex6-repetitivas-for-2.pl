#!/usr/bin/perl
#For
#Exemplo: comando linux "seq 1 10"

#@ARGV vector que guarda os argumentos de entrada
#E se não forem introduzidos os valores pela linha de comandos?

if (@ARGV != 2){
	print "<programa> <num1> <num2>\n";
	exit;
}

$num1=$ARGV[0];
$num2=$ARGV[1];

if ($num1 <= $num2){
	for ($i=$num1;$i<=$num2;$i++){
		print "$i\n";
	}
}
