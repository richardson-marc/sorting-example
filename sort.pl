#!/usr/bin/perl

use strict;
use warnings;
use Getopt::Long;


my $number;
GetOptions (
    'number=i' => \$number
    ) or die "Usage: $0 --number <number of records>";

    my $path_to_file = './numbers';
    open my $handle, '<', $path_to_file or die $!;

chomp(my @numbers = <$handle>);
my @reversenumbers = reverse @numbers;
@numbers=();
close $handle;

my @results = splice @reversenumbers, 0 , $number;

foreach my $result(@results) {
    my $resulttoprint = sprintf ("%.10g", $result);
    print "$resulttoprint\n"
}
