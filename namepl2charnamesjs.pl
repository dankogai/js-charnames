#!/usr/bin/env perl
#
# $Id: namepl2charnamesjs.pl,v 0.0 2014/03/28 13:34:14 dankogai Exp dankogai $
#
use strict;
use warnings;
use feature 'say';
use JSON::XS;

my %charnames;
for my $line ( split /\n/, require "unicore/Name.pl" ) {
    my ( $hex, $name ) = split /\t/, $line;
    my $char = join "", map { chr hex $_ } split / /, $hex;
    $charnames{$char} ||= $name;
}
say "Charnames=", JSON::XS->new->ascii->canonical->encode( \%charnames ), ";";
