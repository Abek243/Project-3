#Assignment 3
#Author: Gavin Rostar
#Version: 10.14.2015
#Purpose: Coffee Shop Stuffs

use 5.14.1;
use warnings;

my ($zip, $age, $itemNum, $bye);
my ($continue);
use constant ZIP_CODE_GREATEST => 99950;
use constant ZIP_CODE_LOWEST => 00501;
use constant ITEM_NUM => 1;
use constant ITEM_NUM_HIGH => 12;
use constant AGE => 10;
use constant AGE_LOW => 110;

sub main {
     system ("cls");
     setZip();
     setAge();
     setItemNum();
     printBye();
     printByeBye();
}

main();

sub setZip {
     print "\n\nWhat is your zip code sir ma'am?";
          chomp ($zip = <STDIN>);
     if ($zip > ZIP_CODE_GREATEST && $zip || $zip < ZIP_CODE_LOWEST ) {
          print "Invalid zip code. Try again!";
          setZip();
     }
     elsif ($zip < ZIP_CODE_GREATEST && $zip > ZIP_CODE_LOWEST) {
     }
}

sub setAge {
     print "\n\nWhat's your age sir ma'am?";
     chomp ($age = <STDIN>);
     if ($age < AGE || $age > AGE_LOW) {
          print "Age not allowed. Try again";
          setAge();
     }
     if ($age > AGE && $age < AGE_LOW) {
     }
}

sub setItemNum {
;     print "\n\nHow many items are you ordering?";
     chomp ($itemNum = <STDIN>);
     if ($itemNum < ITEM_NUM ||$itemNum> ITEM_NUM_HIGH) {
          print "Invalid amount of items. Try again";
          setItemNum();
     if ($itemNum > ITEM_NUM && $age < ITEM_NUM_HIGH) {
          chomp ($itemNum = <STDIN>);
     }
     }
}

sub printBye {
     print "\n\nSo you are $age, ordering $itemNum items, and in zip code $zip. Do you wish to continue? (0=no, 1=yes)";
     chomp ($continue = <STDIN>);
     if ($continue == 0) {
          main();
     if ($continue == 1) {
          printByeBye();
     }
     }
}

sub printByeBye {
     system ("cls");
     print "Have a good day";
     chomp ($bye = <STDIN>);
}