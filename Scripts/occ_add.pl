#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($beg, $siz, $entity, $out, $fh_out);
GetOptions(
           "entity=i" => \$entity,
           "out=s" => \$out
          );
die "No entity number specified." unless $entity;
while(<>) {
  next if /^#|^$/;
  ($beg, $siz) = split;
  print "INSERT INTO occurrence VALUES($entity, $beg, $siz);\n";
}
