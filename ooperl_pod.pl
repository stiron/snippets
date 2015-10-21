package PackAge;

=head1 NAME

B<PackAge> - Imlements PackAge...

=head1 SYNOPSYS

It does this and that...

=head1 DESCRIPTION

Long dos and don'ts...

=head1 METHODS

=over 4

=item B<new>:

Creates a new object instance.

=cut

sub new {
    my $this  = shift;
    my $class = ref($this) || $this;
    my $self  = bless {@_}, $class;
    return $self;
}

=back

=cut

1;
