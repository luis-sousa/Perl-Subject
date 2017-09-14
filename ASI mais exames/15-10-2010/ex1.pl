#!/usr/bin/perl

$num="707123456";

$num=~s/707\d{6}/\\dev\\null/; #apenas é necessária esta instruçao para responder a questão

print "$num\n";


