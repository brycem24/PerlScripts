#Prints the front page of Reddit to the console.
#Sensitive information has been censored and can be returned from
#https://www.reddit.com/prefs/apps

use Reddit::Client;

my $reddit = new Reddit::Client(
	user_agent => "PerlFrontPage",
	client_id => "censored",
	secret => "censored",
	username => "brycem24",
	password => "censored"
);

my $front_page = $reddit->fetch_links(subreddit=>'all', limit=>10);

foreach my $post (@$front_page) {
	print $post->{title} . "\n";

	sleep(1);
}
