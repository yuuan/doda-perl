package Entity;

use common::sense;
use base qw/Class::Accessor::Fast/;
use Util;

__PACKAGE__->mk_accessors(qw/value/);

sub is_number {
	my $self = shift;
	return ($self->value =~ /\A[0-9]+\z/);
}

sub is_string {
	my $self = shift;
	return ($self->value =~ /\A[a-zA-Z]+\z/);
}

sub to_number {
	my $self = shift;

	return $self->value if ($self->is_number);
	die unless ($self->is_string);

	my $sum = 0;

	for my $char (split //, $self->value) {
		$sum *= 52;
		$sum += Util::char_to_num($char);
	}

	return $sum;
}

sub to_string {
	my $self = shift;

	return $self->value if ($self->is_string);
	die unless ($self->is_number);

	my $str = '';
	my $value = $self->value;

	while ($value > 0) {
		my $mod = $value % 52;
		$str = Util::num_to_char($mod) . $str;
		$value = int($value / 52);
	}

	return $str;
}

1;
