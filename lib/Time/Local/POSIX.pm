package Time::Local::POSIX;
use strict;
use Time::Local ();

# the implementation is in Time/Local.pm

1;

=head1 NAME

Time::Local::POSIX - Time::Local drop-in replacement that handles years as offset from 1900

=head1 SYNOPSIS

  use Time::Local::POSIX;

  # note $year is an offset from 1900
  my $time = timelocal( $sec, $min, $hour, $mday, $mon, $year );
  my $time = timegm( $sec, $min, $hour, $mday, $mon, $year );

=head1 DESCRIPTION

This module is a drop-in replacement for L<Time::Local>. The only difference is
that there's no year munging (like C<time*_modern>) but accepts year as an
offset from year 1900, to guarantee the round-trip from C<localtime> and
C<gmtime>.

In fact, this module is just a wrapper for L<Time::Local> and its C<_modern>
functions.

=head1 AUTHOR

Tatsuhiko Miyagawa E<lt>miyagawa@bulknews.netE<gt>

=head1 SEE ALSO

L<Time::Local>

=back


