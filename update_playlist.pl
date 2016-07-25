#This program is automatically run once a day at 5AM and 5PM.
#It deletes all of the music and redownloads it from YouTube.
#Making sure that my music is backed up, and in sync.

#!/usr/local/bin/perl

use POSIX qw(strftime);

my $playlist_url = "https://www.youtube.com/playlist?list=PLIlHGSsQ7rSYQ2JeGsTmhQidXSXuYKN9O";

while (true)
{
	my $time = strftime "%H", localtime;
	if ($time == "5" || $time == "17")
	{
		system("rm *.mp3");
		system("youtube-dl --extract-audio --audio-format mp3" . " " . $playlist_url);
	
		#Sleep for one hour (stop it from looping).
		sleep 3600;
	}
}

