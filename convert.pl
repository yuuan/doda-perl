#!/usr/bin/perl

use common::sense;
use Entity;

die 'Argument not found' if (scalar @ARGV == 0);

my $entity = new Entity({ value => $ARGV[0] });

my $result;

if ($entity->is_string) {
	$result = $entity->to_number;
}
elsif ($entity->is_number) {
	$result = $entity->to_string;
}
else {
	die 'Validation error';
}

print $result . "\n";

1;
