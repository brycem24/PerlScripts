#!/usr/bin/perl
#A program to help me study verbs with the conditional tense in french.

my @pronouns = ("je","tu","il","elle","on","nous","vous","ils","elles");

my @verbs = ("voir", "avoir", "devoir", "etre", "faire", "pouvoir", "venir",
	     "savoir", "mourir", "etre", "payer", "tenir", "devoir", "envoyer", "revenir",
	     "revoir", "se marier", "acheter", "aller", "pouvoir", "porter", "vouloir",
	     "venir", "dire", "payer", "faire", "gagner", "visiter", "se bloquer", "devoir",
	     "avoir", "aider", "pouvoir", "repondre", "etre", "pouvoir");

print "How many questions? \n";
my $questions = <STDIN>;

for (my $i = 1; $i <= $questions; $i++)
{
    my $pronoun = $pronouns[int rand @pronouns];
    my $verb = $verbs[int rand @verbs];
    print $i . ". " . $pronoun . " " . $verb . "\n";
}   
