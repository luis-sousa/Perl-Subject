#!/usr/bin/perl

$nome1="Mario Melo Oliveira";
$nome2="MArio Melo Oliveira";
$nome3="mario Melo Oliveira";
$nome4="mario melo oliveira";
$nome5="MARIO melo Oliveira";

if($nome5=~m/\b[A-Z]{1}[a-z]*\s?\b/){

print "OK";

}else{

print "NOT OK";

}
