use common::sense;
use Test::More;

BEGIN {
	::use_ok('Util');
}

subtest 'char_to_num' => sub {
	::is( Util::char_to_num('a'), 1 );
	::is( Util::char_to_num('A'), 27 );
};

subtest 'num_to_char' => sub {
	::is( Util::num_to_char(1), 'a' );
	::is( Util::num_to_char(27), 'A' );
};

done_testing;
