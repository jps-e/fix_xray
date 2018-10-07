#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($entity, $beg, $end, $name, $who);
my $fmt = "UPDATE \"occurrence\" SET entity=%d where start=%d AND length=%d;\n";
GetOptions(
           "entity=i" => \$entity,
           "who=s" => \$who
          );
die "must supply entity" unless $entity;
die "must supply who" unless $who;
while(<>) {
  ($beg, $end, $name) = split /\t|$/;
  printf $fmt, $entity, $beg, $end if $name =~ /$who/;
}
