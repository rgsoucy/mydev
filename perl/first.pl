#!/usr/local/bin/perl
print "Hello World! \n";

#Variables
#scalars: things '$'
#arrays: lists '@'
#hashes:dictionaries '%'
#
$a=5;
print "Variable a is: $a \n";

$a++;
print "a++ gives us: $a \n";

$a+=10;
# shorthand math options:
# ++
# +=
# --
# -=
# /=
# *=
print "a+=10 gives us:$a \n";

#scalars can also be strings
#
$myString= "Hello World!";

print "myString is: $myString \n";

#concat strings with '.'
#
$otherStr= " My name is Ryan!";

$addStrings= $myString . $otherStr;
print "concat strings: $addStrings \n";

#Arrays: lists of scalars
@nums= (1,2,3,4,5);
@words= ("dog", "cat", "fish");

#call array with $
print "Should print 2: $nums[1] \n";

#array length: $#array_name
#array length = # elements_in_array - 1
print "Length of nums is: $#nums \n";

#Hashes:
#also called dictionaries in other languages
#a term and a definition--> a key and a value
#each key has one value

%days_in_months = ("July" => 31, "August" => 31, "September" => 30);

#get values with $hashname{key}

print "In July there are " . $days_in_months{"July"} . " days \n";

#adding a key/value
#

$days_in_months{"June"} = 30;

#get list of hash keys

@month_list = keys %days_in_summer;
 
#loops
#
$num_words =$#words + 1;

for $i (0 .. $num_words){
print $words[$i] . "\n";
}

print "\n \n";

for $ii (keys %days_in_months) {
print "$ii has $days_in_months{$ii} days.\n";
}

print "\n \n";


for $people ('Bill','Steve','Joe'){
print "Hi I'm $people \n";
}



