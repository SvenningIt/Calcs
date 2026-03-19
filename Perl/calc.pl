use strict;
use warnings;

while (1)
{
    my $resultaat; 

    print "Getal 1: ";
    my $getal1 = <STDIN>;
    chomp($getal1);

    if ($getal1 eq 'stop') {
        exit;
    }

    print "Operator: ";
    my $operator = <STDIN>;
    chomp($operator);

    print "Getal 2: ";
    my $getal2 = <STDIN>;
    chomp($getal2);

    if ($operator eq '+') {
        $resultaat = $getal1 + $getal2;
    }
    elsif ($operator eq '-') {
        $resultaat = $getal1 - $getal2;
    }
    elsif ($operator eq '*') {
        $resultaat = $getal1 * $getal2;
    }
    elsif ($operator eq '/') {
        while ($getal2 == 0) {
            print "Niet 0, hoeveel keer moet ik het nog zeggen, opnieuw: ";
            $getal2 = <STDIN>;
            chomp($getal2);
        }
        $resultaat = $getal1 / $getal2;
    }
    else {
        print "Huh?";
        exit;
    }

    print "$getal1 $operator $getal2 = $resultaat\n";
}
