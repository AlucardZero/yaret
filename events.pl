#!/usr/bin/env perl
use strict;
use warnings;
use JSON::XS;
use LWP::UserAgent;
use POSIX qw/floor strftime/;
use DateTime;
use CGI "meta";
use File::Temp qw/tempfile/;

my $json = JSON::XS->new();

# Set up datacenter information

# Shard IDs culled from http://chat-us.riftgame.com:8080/chatservice/shard/list
my @euids = qw/2702 2714 2711 2721 2741 2722/;
my @usids = qw/1704 1707 1702 1721 1708 1701 1706/;
my %eunames = (
    2702 => "Bloodiron",
    2714 => "Brisesol",
    2711 => "Brutwacht",
    2721 => "Gelidra",
    2741 => "Typhiria",
    2722 => "Zaviel",
    );
my %usnames = (
    1704 => "Deepwood",
    1707 => "Faeblight",
    1702 => "Greybriar",
    1721 => "Hailol",
    1708 => "Laethys",
    1701 => "Seastone",
    1706 => "Wolfsbane",
    );

my %nadc = (
    url => "http://chat-us.riftgame.com:8080/chatservice/zoneevent/list?shardId=",
    shortname => "na",
    names => \%usnames,
    ids => \@usids,
    tz => "America/Los_Angeles",
    );
my %eudc = (
    url => "http://chat-eu.riftgame.com:8080/chatservice/zoneevent/list?shardId=",
    shortname => "eu",
    names => \%eunames,
    ids => \@euids,
    tz => "GMT",
    );

my @dcs = ();
push(@dcs, \%nadc);
push(@dcs, \%eudc);

# Set up browser. Max 5s timeout = 5*(6+5) = max 55s runtime in theory
my $ua = LWP::UserAgent->new(
    agent => 'Opera/9.80 (X11; Linux x86_64) Presto/2.12.388 Version/12.16',
    timeout => 5,
    );

# Go through each DC and construct web pages
foreach my $dc (@dcs) {
# Safely use a temp file (moved later)
  my ($temp, $filename) = tempfile("retXXXXX", TMPDIR => 1, UNLINK => 0);
  my $html = new CGI;

  print $temp $html->start_html(
      -title => "YARET",
      -encoding => 'UTF-8',
      -style => { -src => 'ret.css'},
      -head => meta({-http_equiv => 'Refresh',
        -content => '60'}),
      );
  print $temp "<center><h3>Yet Another Rift Event Tracker</h3>";
  print $temp "<p>This one with more colors</p>\n";

# Insert links to other datacenter's pages
  print $temp "<p>\n";
  foreach my $otherdc (@dcs) {
    if ($dc != $otherdc) {
      print $temp '<a href="'. $otherdc->{"shortname"} . '.html">' . $otherdc->{"shortname"} . "</a> ";
    }
    else { print $temp $dc->{"shortname"} . " "; }
  }
  print $temp "</p></center>\n";

# Construct table
  my @headers = ("Shard", "Zone", "Event Name", "Elapsed Time");
  print $temp "<table>";

  print $temp '<caption align="bottom">';
  print $temp '<span class="relevant">Max level content</span> / <span class="oldnews olddesc">Old content</span> + <span class="new">Newly started event</span>';
  print $temp '</caption>';
  print $temp "<thead><tr>\n";
  foreach my $header (@headers) {
    print $temp "<th>$header</th>";
  }

  print $temp "</tr></thead>\n";

  foreach my $zoneid ( @{ $dc->{"ids"} } ) {  # @{ ... } = turning an array reference into a usable array
    print $temp "<tbody>\n";
    my $site = $ua->get($dc->{"url"} . $zoneid) or next;
    my $result = $json->decode($site->content) or next;
    print $temp "<tr><td class='label'>" .  $dc->{"names"}{$zoneid} . "</td><td></td><td></td><td></td></tr>";
# Construct zone event rows.  Max level content will be displayed first.
    my @text = ("", "<tr class=\"firstold\"></tr>"); 
    foreach my $zone (@{ $result->{"data"} }) {
      if ($zone->{"name"}) { 
        my $time = floor((time - $zone->{"started"})/60);

# Assign CSS classes to different events
        my $class = "oldnews"; my $place = 1;

        if ($zone->{"zone"} =~ /^(The Dendrome|Steppes of Infinity|Morban|Ashora|Kingsward|Das Dendrom|Steppen der Unendlichkeit|Königszirkel|Le Rhizome|Steppes de l'Infini|Protectorat du Roi)$/) { $class = "relevant"; $place = 0; }

        if ($zone->{"name"} =~ /^(Hooves and Horns|Des sabots et des cornes|Hufe und Hörner)$/) { $class .= " pony"; }
#      if ($zone->{"name"} eq "The Awakening") { $class .= " pony"; }
        elsif ($zone->{"name"} =~ /^(Bloodfire Behemoth|Béhémoth feu-sanglant|Blutfeuer-Ungetüm)$/) { $class .= " behemoth"; }
        elsif ($zone->{"name"} =~ /^(Dreams of Blood and Bone|Rêves de sang et d'os|Träume aus Blut und Gebeinen)$/) { $class .= " volan"; }

# Minutes to consider an event new
        if ($time < 4) { $class .= " new"; }

        $text[$place] .= "<tr class='$class'>\n";
        $text[$place] .= "<td></td>";
        $text[$place] .= "<td>" . $zone->{"zone"} . "</td>";
        $text[$place] .= "<td>" . $zone->{"name"} . "</td>";
        $text[$place] .= "<td>" . $time . "m</td>"; 
        $text[$place] .= "</tr>\n";
      }
    }
    print $temp $text[0];
    print $temp $text[1];
    print $temp "</tbody>\n";
  }

  print $temp "</table>\n";

# Construct footer
  my $dt = DateTime->now(time_zone => $dc->{"tz"});
  print $temp '<p align="center"><small>Generated ' . $dt->strftime("%F %T %Z") . '</small></p>';

  print $temp "<p class=\"disclaimer\">Trion, Trion Worlds, RIFT, Storm Legion, Nightmare Tide, Telara, and their respective logos, are trademarks or registered trademarks of Trion Worlds, Inc. in the U.S. and other countries. This site is not affiliated with Trion Worlds or any of its affiliates.</p>\n"; 
  print $temp $html->end_html;

  close $temp;
  chmod oct("0644"), $filename;
  rename($filename, "/var/www/rift/" . $dc->{"shortname"} . ".html");
}
