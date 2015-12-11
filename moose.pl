#!/usr/bin/env perl

package Welcomer;
use Moose;

has 'age'  => ( is => 'rw', isa => 'Int', required => 1 );
has 'name' => ( is => 'rw', isa => 'Str', required => 1 );

sub welcome {
    my $self = shift;
    return "Hello " . $self->name . " who is " . $self->age . " years old!";
}

my $o = Welcomer->new( name => 'Tamas', age => 29 );

print $o->welcome();

1;
