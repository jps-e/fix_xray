#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my ($id, $xray, @res);
GetOptions(
           "id=i" => \$id,
           "xray=s" => \$xray
          );
die "No entity id specified." unless $id;
die "No xray input file specified." unless $xray;
my $select = "select start,length from occurrence where entity = $id;";
@res = `echo "$select" | sqlite3 $xray | sed -e 's/|/\t/g'`;
print @res;
