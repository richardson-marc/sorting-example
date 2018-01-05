#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Long;


my $number;
GetOptions (
    'number=i' => \$number
    ) or die "Usage: $0 --number <number of records>";
    
    print " we want $number records please\n";

    my $path_to_file = './numbers';
    open my $handle, '<', $path_to_file;


chomp(my @numbers = <$handle>);
my @reversenumbers = reverse @numbers;

my @results = splice @reversenumbers, 0 , $number;

foreach my $result(@results) {
    print "$result\n"
}
