# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Finance-Quote-Sberbank.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use encoding 'utf8';
use Test::More tests => 5;

BEGIN { 
	use_ok('Finance::Quote');
	use_ok('Finance::Quote::Sberbank');
#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.


my $quoter = Finance::Quote->new("Sberbank");

ok(defined $quoter, "created");

my %info = $quoter->fetch("sberbank", "SBRF.PD");

ok(%info, "fetched");

ok($info{"SBRF.PD", "name"}, "palladium");

};
