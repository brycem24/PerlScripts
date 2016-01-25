print "How many terms should be displayed\n";
my $max_value = <STDIN>;

for ($i = 1; $i <= $max_value; $i++)
{
	if ($i % 3 == 0 && $i % 5 == 0) {
		print ("Fizz Buzz, ");
	}
	elsif ($i % 3 == 0) {
		print ("Fizz, ");
	}
	elsif ($i % 5 == 0) {
		print ("Buzz, ");
	}
	else {
		print ($i . ", ");
	}
}
