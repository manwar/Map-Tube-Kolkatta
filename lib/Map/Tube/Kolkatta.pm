package Map::Tube::Kolkatta;

$Map::Tube::Kolkatta::VERSION   = '0.21';
$Map::Tube::Kolkatta::AUTHORITY = 'cpan:MANWAR';

=head1 NAME

Map::Tube::Kolkatta - Interface to the Kolkatta Metro Map.

=head1 VERSION

Version 0.21

=cut

use 5.006;
use Data::Dumper;
use File::Share ':all';

use Moo;
use namespace::autoclean;

has json => (is => 'ro', default => sub { return dist_file('Map-Tube-Kolkatta', 'kolkatta-map.json') });

with 'Map::Tube';

=head1 DESCRIPTION

The Kolkata Metro was  the  first  metro railway in India, opening for commercial
services from 1984. On 29  December 2010,  Metro Railway, Kolkata became the 17th
zone of the Indian Railways, operated by the Ministry  of Railways. There are 300
metro  services  daily  carrying  over  650,000  passengers  making it the second
busiest metro system in India.

It currently provides functionality to find the shortest  route between  the  two
given stations. It covers the following lines of Kolkatta Metro:

=over 2

=item * L<Line 1|Map::Tube::Kolkatta::Line::L1>

=item * L<Line 2|Map::Tube::Kolkatta::Line::L2>

=item * L<Line 3|Map::Tube::Kolkatta::Line::L3>

=item * L<Line 4|Map::Tube::Kolkatta::Line::L4>

=item * L<Line 5|Map::Tube::Kolkatta::Line::L5>

=item * L<Line 6|Map::Tube::Kolkatta::Line::L6>

=back

Source: L<wikipedia|https://en.wikipedia.org/wiki/Kolkata_Metro>.

There is a very handy tool provided by L<Map::Tube::CLI> called C<map-tube> which
exposes the  map  (and all other maps) from command line. Please refer to its pod
document for  more  details. Support  for C<Map::Tube::Kolkatta>, is available by
L<Map::Tube::CLI> v0.31 or above.

=head1 CONSTRUCTOR

The constructor DO NOT expects parameters.This setup the default node definitions.

    use strict; use warnings;
    use Map::Tube::Kolkatta;

    my $metro = Map::Tube::Kolkatta->new;

=head1 METHODS

=head2 get_shortest_route($from, $to)

It expects C<$from> and C<$to> station name, required param. It returns an object
of type L<Map::Tube::Route>. On error it throws exception of type L<Map::Tube::Exception>.

    use strict; use warnings;
    use Map::Tube::Kolkatta;

    my $metro = Map::Tube::Kolkatta->new;
    my $route = $metro->get_shortest_route('Esplanade', 'Central');

    print "Route: $route\n";

=head2 as_image($line_name)

It expects the plugin  L<Map::Tube::Plugin::Graph> to be  installed. Returns line
image  as  base64  encoded string if C<$line_name> passed in otherwise it returns
base64 encoded string of the entire map.

    use strict; use warnings;
    use MIME::Base64;
    use Map::Tube::Kolkatta;

    my $metro = Map::Tube::Kolkatta->new;
    my $map   = $metro->name;
    open(my $IMAGE, ">", "$map.png")
       or die "ERROR: Can't open [$map.png]: $!";
    binmode($IMAGE);
    print $IMAGE decode_base64($metro->as_image);
    close($IMAGE);

The L<Kolkatta Metro Map|https://raw.githubusercontent.com/manwar/Map-Tube-Kolkatta/master/maps/Kolkatta-Metro.png> as generated by plugin L<Map::Tube::Plugin::Graph>.

=begin html

<a href = "https://raw.githubusercontent.com/manwar/Map-Tube-Kolkatta/master/maps/Kolkatta-Metro.png">
<img src    = "https://raw.githubusercontent.com/manwar/Map-Tube-Kolkatta/master/maps/Kolkatta-Metro.png"
     alt    = "Kolkatta Metro Map"
     width  = "500px"
     height = "800px"/>
</a>

=end html

=head1 AUTHOR

Mohammad S Anwar, C<< <mohammad.anwar at yahoo.com> >>

=head1 REPOSITORY

L<https://github.com/manwar/Map-Tube-Kolkatta>

=head1 SEE ALSO

L<Map::Tube::CLI>

=head1 BUGS

Please  report any bugs/feature requests to C<bug-map-tube-kolkatta at rt.cpan.org>,
or through the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Map-Tube-Kolkatta>.
I will be notified, and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::Kolkatta

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Map-Tube-Kolkatta>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Map-Tube-Kolkatta>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Map-Tube-Kolkatta>

=item * Search CPAN

L<http://search.cpan.org/dist/Map-Tube-Kolkatta/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (C) 2017 Mohammad S Anwar.

This program  is  free software; you can redistribute it and / or modify it under
the  terms  of the the Artistic License (2.0). You may obtain a  copy of the full
license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any  use,  modification, and distribution of the Standard or Modified Versions is
governed by this Artistic License.By using, modifying or distributing the Package,
you accept this license. Do not use, modify, or distribute the Package, if you do
not accept this license.

If your Modified Version has been derived from a Modified Version made by someone
other than you,you are nevertheless required to ensure that your Modified Version
 complies with the requirements of this license.

This  license  does  not grant you the right to use any trademark,  service mark,
tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge patent license
to make,  have made, use,  offer to sell, sell, import and otherwise transfer the
Package with respect to any patent claims licensable by the Copyright Holder that
are  necessarily  infringed  by  the  Package. If you institute patent litigation
(including  a  cross-claim  or  counterclaim) against any party alleging that the
Package constitutes direct or contributory patent infringement,then this Artistic
License to you shall terminate on the date that such litigation is filed.

Disclaimer  of  Warranty:  THE  PACKAGE  IS  PROVIDED BY THE COPYRIGHT HOLDER AND
CONTRIBUTORS  "AS IS'  AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED
WARRANTIES    OF   MERCHANTABILITY,   FITNESS   FOR   A   PARTICULAR  PURPOSE, OR
NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS
REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL,  OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE
OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

=cut

1; # End of Map::Tube::Kolkatta
