#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($beg, $siz, $pad, $raw, $txt);
GetOptions(
           "pad=i" => \$pad,
           "raw=s" => \$raw
          );
die "No raw ML input file specified." unless $raw;
open FH, $raw;
while(<>) {
  next if /^#|^$/;
  ($beg, $siz) = split;
  $beg += 14;
  if ($pad) { $beg -= $pad; $siz += 2*$pad; }
  seek FH, $beg, 0;
  my $n = read FH, $txt, $siz;
  print "$txt\n";
}
