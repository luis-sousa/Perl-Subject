#!/usr/bin/perl

@array=(1,2,3,4,5,6);

$size=@array;

$str1="";
for($i=0;$i<($size/2);$i++){
 $str1=$str1."+".$array[$i];
}

print $str1."\n";

$str2="";
for($i=$size/2;$i<($size);$i++){
 $str2=$str2."+".$array[$i];

}

print $str2."\n";
