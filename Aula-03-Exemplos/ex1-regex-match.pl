#!/usr/bin/perl
#Exemplos de expressões regulares - verificar padrao

#Verificar se um escalar so contem letras e/ou espaços
print "Verificar se um escalar so contem letras e/ou espaços\n";
$var1="vamos ver se so contem letras";
print "Escalar: $var1\n";
if ( $var1 =~ /^[a-zA-Z\s]+$/ ) {
	print "OK\n";
} else {
	print "NOT OK\n";
}

print "##################\n";

#Verificar se um escalar contem 9 numeros (se tiver >=9 ja satisfaz)
print "Verificar se um escalar contem 9 numeros (se tiver >=9 ja satisfaz)\n";
$var1="91988884232345";
print "Escalar: $var1\n";
if ( $var1 =~ /\d{9}/ ){
	print "OK\n";
} else {
	print "NOT OK\n";
}

print "##################\n";

#Verificar se um escalar contem so 9 numeros 
print "Verificar se um escalar contem so 9 numeros\n";
$var1="911123234";
print "Escalar: $var1\n";
if ( $var1 =~ /\b\d{9}\b/ ){
	print "OK\n";
} else {
	print "NOT OK\n";
}

print "##################\n";

#Verificar se um escalar começa pela letra 'A'
print "Verificar se um escalar começa pela letra 'A'\n";
$var1="Amizade";
print "Escalar: $var1\n";
if ( $var1 =~ /^A/ ){
	print "OK\n";
} else {
	print "NOT OK\n";
}

print "##################\n";

#Verificar se um escalar termina com;"
print "Verificar se um escalar termina com;\n";
$var1="teste1;testar se termina com;";
print "Escalar: $var1\n";
if ( $var1 =~ /;$/ ){
	print "OK\n";
} else {
	print "NOT OK\n";
}

print "##################\n";

#Verificar se um escalar começa por 96 ou 93 ou 91 ou 92 e contem apenas 9 numeros
print "Verificar se um escalar começa por 96 ou 93 ou 91 ou 92 e contem apenas 9 numeros\n";
$var1="921232424";
print "Escalar: $var1\n";
if ( $var1 =~ /\b91|96|93|92\d{7}\b/) {
	print "OK\n";
} else {
	print "NOT OK\n";
}


#Verificar se um escalar começa por 96 ou 93 ou 91 ou 92 e contem apenas 9 numeros
print "Verificar se um escalar começa por 96 ou 93 ou 91 ou 92 e contem apenas 9 numeros\n";
$var1="941232424";
print "Escalar: $var1\n";
if ( $var1 =~ /\b9[1632]\d{7}\b/) {
	print "OK\n";
} else {
	print "NOT OK\n";
}




