#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($desc, $entity, $source, $wild, $upd);
my $fmt = 'UPDATE "entity_description" SET text=\'%s\'';
GetOptions(
           "desc=s" => \$desc,
           "entity=i" => \$entity,
           "source=i" => \$source,
           "wildcard=s" => \$wild
          );
die "must supply desc" unless $desc;
die "must supply entity" unless $entity;
$upd = sprintf $fmt, $desc;
$upd = join ", ", $upd, "source = $source" if $source;
$upd = join ", ", $upd, "source_wildcard = \"$wild\"" if $wild;
$upd = join " ", $upd, "WHERE entity = $entity;";
print "$upd\n";
