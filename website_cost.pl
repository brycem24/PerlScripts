#Calculates the cost I charge per website.

#Calculate it all by the tax.
my $taxes = 1.15;

my $range = 25;
my $minimum = 100;

#Profit
my $base_cost = int(rand($range)) + $minimum;

#Annual cost
my $domain_cost = 15.0;

#Per Month
my $hosting_cost = 12.0;

print "Number of months: ";

#How long the website should be accessible for.
#(1, 3, 6, 9, 12)
my $months = <STDIN>;

print "COST: ";
print $base_cost + ($domain_cost + ($hosting_cost * $months) * $taxes);
print "\n";
print "PROFIT: ";
print $base_cost;
print "\n";
print "\n";
