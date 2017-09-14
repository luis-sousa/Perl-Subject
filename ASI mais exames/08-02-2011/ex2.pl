#!/usr/bin/perl

open(F, "input.txt") || die "erro";
open(O, ">accounts.sh") || die "erro";

print O "#!/bin/bash\n";

while (<F>) {
	
	chomp($_);
	print $_."\n";
	($num,$nome,$bi,,$dn,$disc) = split(",",$_);
	print O "adduser $num -p $dn -c $nome -g $disc\n";
}

close(F);
close(O);
