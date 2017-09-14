#!/usr/bin/perl
#For
#Exemplo: comando linux "seq 1 10"

#@ARGV vector que guarda os argumentos de entrada

$num1=$ARGV[0];
$num2=$ARGV[1];

if ($num1 <= $num2){
	for ($i=$num1;$i<=$num2;$i++){
		print "$i\n";
	}
}
else {
	for ($i=$num1;$i>=$num2;$i--){
		print "$i\n";
	}
}
