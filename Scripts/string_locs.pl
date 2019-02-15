#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($inp, $str, $l, $txt);
my $offset = -14;
GetOptions(
           "inp=s"  => \$inp,
           "offset" => \$offset,
           "str=s"  => \$str,
           "l=i"    => \$l
           );
$txt = `cat $inp`;
my $loc = 0;
while (($loc = index($txt, $str, $loc + 1)) > 0) {
  printf "%d\t%d\n", $loc + $offset, length($str);
}
