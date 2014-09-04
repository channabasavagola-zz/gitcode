#!/usr/bin/perl

@colors = qw(red green yellow black white brown);
print "array \@colors has: @colors\n";

@sorted_colors= sort @colors;
print "array \@sorted_colors has: @sorted_colors\n";

@num = qw(34 17 4 1 53 102 5 65 12);
print "array \@num has: @num\n";

@sorted_lexicographically_num= sort @num;
print "array \@sorted_lexicographically_num has: @sorted_lexicographically_num\n";

@sorted_num= sort {$a<=>$b} @num;
print "array \@sorted_num has: @sorted_num\n";

@sorted_num= reverse @sorted_num;
print "array \@sorted_num has: @sorted_num (in decesending order)\n";

$size_num = @num;
print "The size of array \@num is $size_num\n";

print "$#num is the max index of this array\n";

print "The array before shifting is @num\n";
$shifted=shift @num;
print "The array after shifting is @num\n";
print "$shifted was shifted\n";

print "The array before unshifting 23 is @num\n";
unshift(@num, 23);
print "The array after unshifting 23 is @num\n";

print "Before poping from \@colors was @colors\n";
$poped=pop @colors;
print "After poping from \@colors is @colors\n";
print "$poped is poped... !\n";

push(@colors,"brown");
print "After pushing brown \@colors is @colors\n";

print "Before splicing \@colors was @colors\n";
@middle=splice(@colors, 2,3);
print "After splicing \@middle is @middle\nand \@colors is @colors\n";
