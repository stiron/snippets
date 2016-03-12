#!/usr/bin/env perl

use strict;
use warnings;

#
# grep
#

my @array = qw(one two three four five three-way-road high-five);

my $scalar_context = grep( /three/, @array );
print "In scalar context grep returns the number of matches: ";
print $scalar_context;
print "\n";

# > In scalar context grep returns the number of matches: 2

my @list_context = grep( /three/, @array );
print "In list context grep returns the matched elements: ";
print join( ', ', @list_context );
print "\n";

# > In list context grep returns the matched elements: three, three-way-road

#
# map
#

print "In scalar context map returns the number of matches: ";
my $uc_scalar = map( uc($_), @array );
print $uc_scalar;
print "\n";

# > In scalar context map returns the number of matches: 7

print "In list context map returns the matched elements: ";
my @uc_array = map( uc($_), @array );
print join( ',', @uc_array );
print "\n";

# > In list context map returns the matched elements: ONE,TWO,THREE,FOUR,FIVE,THREE-WAY-ROAD,HIGH-FIVE
