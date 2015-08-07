#!/usr/bin/perl6
#######################################################################################
###
## Michael D. Hensley
## 08/05/2015
## Program to add a specific number of days to the current date.
## Version 1.5
##
#######################################################################################
use v6;
#######################################################################################
sub grub ( $offset? = 10) {
	my $b = DateTime.new(now).local;
	return $b.later(days => $offset).Date;
	#return $data.Date;
}
#######################################################################################
my Rat $VERSION = 1.5;
my $a;
my $offset;
#######################################################################################
multi sub MAIN( $offsetDays) {
	$a = grub($offsetDays);
	say "Date in $offsetDays days: $a";
}
#######################################################################################
multi sub MAIN() {
	run("clear");
	say "Day Adder v" ~ $VERSION ~ " Add the offset to the current date.";
	my $offset = prompt("Enter the offset or enter for default of 10: ");
	if !$offset { $a = grub(); $offset = 10; } else { $a = grub($offset.Int); }
	say "Current Date: " ~ DateTime.new(now).local.Date;
	say "Date in $offset days: $a";
}
#######################################################################################

