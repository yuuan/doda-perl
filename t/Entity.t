use common::sense;
use Test::More;

BEGIN {
	::use_ok('Entity');
}

subtest 'string to number' => sub {
	my $entity = new Entity({value => 'aaa'});

	::ok( !$entity->is_number, 'not is number' );
	::ok( $entity->is_string, 'is string' );

	::is( $entity->to_number, 2757, 'to number' );
};

subtest 'mber to string' => sub {
	my $entity = new Entity({value => 2757});

	::ok( $entity->is_number, 'is number' );
	::ok( !$entity->is_string, 'not is string' );

	::is( $entity->to_string, 'aaa', 'to string');
};

done_testing;
