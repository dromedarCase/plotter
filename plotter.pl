#!/usr/bin/perl

$xmax =  60;
$xmin = -20;
$ymax =  20;
$ymin = -20;

sub function
{
	my $x = $_[0];
	return 20*sin(0.2*$x);
}

for $i ($ymin..$ymax)
{
	$y = $ymax + $ymin - $i;

	print "$y\t";

	for $x ($xmin..$xmax)
	{
		$value = function($x);
		print ((($y <= $value + 0.5) && ($y > $value - 0.5))? "X" : " ");
	}
	print "\n";		
}

print "\n\t";
for $x ($xmin..$xmax)
{
	print (abs($x)%10);
}

print "\n\t";
for $x ($xmin..$xmax)
{
	print ((abs($x)%10 == 0)?abs($x)/10:" ");
}

print "\n";
