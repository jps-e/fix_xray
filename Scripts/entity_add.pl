#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($count, $id, $name, $source, $term, $text, $type);
my $wildcard = '';
my $fmt1 = "INSERT INTO \"entity\" VALUES(%d, '%s', NULL, %d, %d, 1);\n";
my $fmt2 = "INSERT INTO \"entity_description\" VALUES('%s', '%s', %d, %d);\n";
my $fmt3 = "INSERT INTO \"entity_description\" VALUES('%s', '%s', NULL, %d);\n";
GetOptions(
           "count=i"  => \$count,
           "id=i"     => \$id,
           "name=s"   => \$name,
           "source=i" => \$source,
           "term"     => \$term,
           "description=s" => \$text,
           "wildcard=s" => \$wildcard
          );
die "must supply count" unless $count;
die "must supply id" unless $id;
die "must supply description (text column)" unless $text;
if ($term) { $type = 2; } else { $type = 1; }
printf $fmt1, $id, $name, $type, $count;
if ($source) {
  printf $fmt2, $text, $wildcard, $source, $id;
} else {
  printf $fmt3, $text, $wildcard, $id;
}
