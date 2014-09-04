#! /usr/bin/perl

$a="Channabasava Gola";
$b="SIT, Tumkur";
print "My name is $a, and I am a grad from $b\n";
# double quotes, leads to variable interpolation
print 'My name is $a, and I am a grad from $b\n';
$money='$100';
print "The expenditure for today: $money\n";
#. is used for concatenation of strings
$c=$a." ".$b."\n";
print "this is new concatinated string, $c";
#Arithmetic operation over strings, not much in use
$a="bat";
$b=$a + 1;
print "$a and $b \n";
#String repitition operator
print "ba"."na"x2;
print "\n";
#Strings are arithmetic expressions
$a="234.5";
print $a+1;
print "\n";
$a="123Hello45";
print $a+1;
print "\n";
$a="banana";
print $a+1;
print "\n";
#Escaping
$a=2345;
print "value of \$a is $a \n";
#for printing very lengthy strings
#make sure that there is no space between "<<" and "terminator"
print <<terminator ;

Hello, what's up
how are you doing
terminator

print "Enter your name ";
$name = <STDIN>;
print "Good morning, $name";
