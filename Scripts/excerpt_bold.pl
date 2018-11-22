#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($ent, $n, $num, $out, $raw, $tag, $txt, $fh_out, $xray);
my $b = '<b>'; my $eb = '</b>';
my $pos = -14;
GetOptions(
           "entity=i" => \$ent,
           "num"   => \$num,
           "out=s" => \$out,
           "raw=s" => \$raw,
           "tag=s" => \$tag,
           "xray=s" => \$xray
          );
die "No raw ML input file specified." unless $raw;
die "No xray input file specified." unless $xray;
open FHraw, $raw or die "Can't open $raw for reading";
if ($out) { open $fh_out, ">", $out; *STDOUT = $fh_out; }
my $sel = 'select * from excerpt;';
my @result = `echo "$sel" | sqlite3 $xray`;
for (@result) {
  my ($id, $beg, $siz, $image, $related, $go) = split /\|/;
  last if $image;
  if ($ent) {
    $num = $id if $num and $related =~ /^$ent,|,$ent,|,$ent$/;
    next unless $related =~ /^$ent,|,$ent,|,$ent$/;
  }
  $n = read FHraw, $txt, $beg - $pos;
  print $txt;
  if ($tag) { print "[$tag] "; }
  if ($num) { printf "[%d] ", $num++; }
  $pos += $n;
  $n = read FHraw, $txt, $siz;
  print "$b$txt$eb";
  $pos += $n;
}
while(read FHraw, $txt, 8192 > 0) { print $txt; }
