#!/usr/bin/perl

$a = 3;
$b = 4;
$c = sum_of_a_and_b($a,$b);
$d = 3 * sum_of_a_and_b($c,$b);

print $c."\n";
print $d."\n";


sub sum_of_a_and_b {
    return $_[0] + $_[1];
}
