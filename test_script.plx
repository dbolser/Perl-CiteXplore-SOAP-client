#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

use lib qw(CXPSC);
use MyInterfaces::WSCitationImplService::WSCitationImplPort;

my $service =
  MyInterfaces::WSCitationImplService::WSCitationImplPort->new();


## Test the most basic method
my $result1 = $service->listSearchFields({
  #email => 'dbolser@ebi.ac.uk'
});
die "DIED1\n$result1\n" if not $result1;
#print $result1, "\n";

## Test a propper method
my $result2 = $service->searchPublications({
  queryString => 'auth:Bolser',
  #dataSet => 'metadata',
  resultType => 'lite',
  offSet => '0',
  synonym => 'true',
  #email => 'dbolser@ebi.ac.uk',
});
die "DIED2\n$result2\n" if not $result2;
#print $result2, "\n";

## Test a propper method
my $result3 = $service->getCitations({
  id => 'PMC3245082',
  source => 'PMC',
  offSet => '0',
  #email => 'dbolser@ebi.ac.uk',
});
die "DIED3\n$result3\n" if not $result3;
print $result3, "\n";
