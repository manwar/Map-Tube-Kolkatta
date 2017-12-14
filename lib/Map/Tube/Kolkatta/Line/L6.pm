package Map::Tube::Kolkatta::Line::L6;

$Map::Tube::Kolkatta::Line::L6::VERSION   = '0.11';
$Map::Tube::Kolkatta::Line::L6::AUTHORITY = 'cpan:MANWAR';

=head1 NAME

Map::Tube::Kolkatta::Line::L6 - Kolkatta Metro Map: Line 6.

=head1 VERSION

Version 0.11

=cut

use 5.006;
use strict; use warnings;

=head1 DESCRIPTION

Kolkata Metro Map: Line 6.

    +--------------------------+------------------------------------------------+
    | Station Name             | Linked To                                      |
    +--------------------------+------------------------------------------------+
    | Jai Hind                 | Kazi Nazul Islam Avenue                        |
    | Kazi Nazrul Islam Avenue | Jai Hind, New Town                             |
    | New Town                 | Kazi Nazrul Islam Avenue, Titumir              |
    | Titumir                  | New Town, Sub CBD 2                            |
    | Sub CBD 2                | Titumir, Convention Centre                     |
    | Convention Centre        | Sub CBD 2, Prakriti Centre                     |
    | Prakriti Tirtha          | Convention Centre, Baanijya Tirtha             |
    | Baanijya Tirtha          | Prakriti Tirtha, Rabindra Tirtha               |
    | Rabindra Tirtha          | Baanijya Tirtha, Vivek Tirtha                  |
    | Vivek Tirtha             | Rabindra Tirtha, Nazrul Tirtha                 |
    | Nazrul Tirtha            | Vivek Tirtha, Bidhannagar Limit                |
    | Bidhannagar Limit        | Nazrul Tirtha, Salt Lake Sector V              |
    | Salt Lake Sector V       | Bidhannagar Limit, Nicco Park                  |
    | Nicco Park               | Salt Lake Sector V, Gour Kishore Ghosh         |
    | Gour Kishore Ghosh       | Nicco Park, Varun Sengupta                     |
    | Varun Sengupta           | Gour Kishore Ghosh, Ritwik Ghatak              |
    | Ritwik Ghatak            | Varun Sengupta, VIP Bazar                      |
    | VIP Bazar                | Ritwik Ghatak, Hemanta Mukherjee               |
    | Hemanta Mukherjee        | VIP Bazar, Kavi Shukla                         |
    | Kavi Sukanta             | Hemanta Mukherjee, Jyotindra Nath Nandi        |
    | Jyotindra Nath Nandi     | Kavi Shukla, Satyajit Ray                      |
    | Satyajit Ray             | Jyotindra Nath Nandi, Kavi Subhash             |
    | Kavi Subhash             | Satyajit Ray                                   |
    +--------------------------+------------------------------------------------+

=head2 NOTE

=over 2

=item * The station "Jai Hind" is also part of
          L<Line 4|Map::Tube::Kolkatta::Line::L4>.

=item * The station "Salt Lake Sector V" is also part of
          L<Line 2|Map::Tube::Kolkatta::Line::L2>.

=item * The station "Kavi Subhash" is also part of
          L<Line 1|Map::Tube::Kolkatta::Line::L1>.

=back

=head1 MAP

Kolkatta Metro Map: L<Line 6|https://raw.githubusercontent.com/manwar/Map-Tube-Kolkatta/master/maps/L6.png>
map generated by plugin L<Map::Tube::Plugin::Graph>.

=begin html

<a href = "https://raw.githubusercontent.com/manwar/Map-Tube-Kolkatta/master/maps/L6.png">
<img src    = "https://raw.githubusercontent.com/manwar/Map-Tube-Kolkatta/master/maps/L6.png"
     alt    = "Kolkatta Metro Map: Line 6"
     width  = "250px"
     height = "600px"/>
</a>

=end html

=head1 AUTHOR

Mohammad S Anwar, C<< <mohammad.anwar at yahoo.com> >>

=head1 REPOSITORY

L<https://github.com/manwar/Map-Tube-Kolkatta>

=head1 BUGS

Please  report any bugs/feature requests to C<bug-map-tube-kolkatta at rt.cpan.org>,
or through the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Map-Tube-Kolkatta>.
I will be notified, and then you'll automatically be notified of progress on your
bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Map::Tube::Kolkatta::Line::L6

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

1; # End of Map::Tube::Kolkatta::Line::L6
