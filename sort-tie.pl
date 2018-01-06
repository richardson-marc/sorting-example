#!/usr/bin/perl

use Getopt::Long;
use warnings;
use strict;

use Tie::File;


my $number;
GetOptions (
    'number=i' => \$number
    ) or die "Usage: $0 --number <number of records>";


tie my @numbers, 'Tie::File', './numbers' or die "could not open file";
print "done tieing records";
my @reversenumbers = reverse @numbers;
foreach my $number( @reversenumbers){
    print "$number\n";
}

my @results = splice @reversenumbers, 0 , $number;

foreach my $result(@results) {
    print "$result\n"
}
