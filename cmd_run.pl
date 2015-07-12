#!/usr/bin/env perl

use strict;
use warnings;
use IPC::Run3;

sub run_cmd {
    my @cmd = @_;
    my $stderr;
    my $stdout;

    run3( \@cmd, undef, \$stdout, \$stderr );
    my $exit = $?;

    my %retval = (
        stdout => $stdout,
        stderr => $stderr,
        exit   => $exit,
    );

    return \%retval;
}
