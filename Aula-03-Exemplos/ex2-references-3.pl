#!/usr/bin/perl
#Le ficheiro --- cada linha forma um vector e cada vector e colocado noutro vector
#temos uma matriz - 1º coluna temos numeros, 2º coluna nomes, 3ª coluna sexo, 4ª coluna tlm
#suma temos os dados organizados em tabela
# |numero  |nome      |sexo|tlm|
# |80224223|joao paulo|M   |931231231|
# |80524218|luis silva|M   |961636232|
# ...

open(FICH,"dados_ex2.txt") || die "erro abrir ficheiro";
while(<FICH>){
        chomp($_);
        my @row=split(';',$_);

        #adiciona ao vector "matrix" o apontador para cada array formado a partir da linha
        push(@matrix,\@row);  
}

#O conteudo de matrix é um apontadar para um vector que contem cada linha do ficheiro tb organizada em vector
print "@matrix\n";

#Exemplo de como aceder a linha 0 da matrix e depois ao respectivo nome
$rarray = $matrix[0];
print "$$rarray[1]\n";

print "${$matrix[2]}[3]\n";


