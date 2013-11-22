package Util;

use common::sense;

sub char_to_num {
	my $value = shift;

	return (ord $value) - 96 if ($value =~ /\A[a-z]\z/);
	return (ord $value) - 38 if ($value =~ /\A[A-Z]\z/);
	return;
}

sub num_to_char {
	my $value = shift;

	return chr ($value + 96) if (1 <= $value && $value <= 26);
	return chr ($value + 38) if (27 <= $value && $value <= 52);
	return;
}

1;
