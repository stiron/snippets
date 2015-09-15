#!/usr/bin/env perl

use strict;
use warnings;
use Parallel::ForkManager;

my $pm = Parallel::ForkManager->new(5);
my @list = ( 1, 2, 3, 4, 5, 6, 7, 8, 9 );

LOOP_IT:
for my $data (@list) {
    my $pid = $pm->start and next LOOP_IT;

    print doesnt_do_anything($data);

    $pm->finish;
}
$pm->wait_all_children;

# Just for the demonstration
sub doesnt_do_anything {
    my $elem = shift;
    my $out  = "$elem - ";
    $out .= qx(date);
    chomp($out);
    $out .= " - processed...\n";
    sleep(1);

    return $out;
}
