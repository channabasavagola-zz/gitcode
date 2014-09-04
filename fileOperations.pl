#!/usr/bin/perl

$farray = "/home/channu/perl_tests/arrays.pl";
open XYZ, $farray or die "Error while opening a file: $!";
while(<XYZ>){
print "$. $_";
}
close XYZ;

print "Enter a file name so as to create it: ";
chomp($fname=<STDIN>);
$out="/home/channu/perl_tests/$fname";
open ABC,">$out" or die "Error in creating one . . $!\n";
for $i(1..10){
print ABC "$i Hello, the time is ".scalar(localtime)."\n";
}
close ABC;

print "This was input into file $fname\n";
open XYZ,"$fname" or die "Error while opening..$!\n";
while(<XYZ>){
print;
}
close XYZ;
