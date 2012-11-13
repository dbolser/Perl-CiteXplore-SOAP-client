#!/usr/bin/perl

use strict;
use warnings;

## For debugging
use Data::Dumper;

## Since we output XML, we better encode it as utf-8
## (and I find IO layers confusing)
use Encode qw(encode);

## Bring in the SOAP client code
use lib qw(CXPSC);
use MyInterfaces::WSCitationImplService::WSCitationImplPort;

## 
my $service =
  MyInterfaces::WSCitationImplService::WSCitationImplPort->new();

## Test the most basic method
my $result1 = $service->listSearchFields;
die "DIED1\n$result1\n" if not $result1;
#print encode('utf-8', $result1), "\n";

## Test a propper method
my $result2 = $service->searchPublications({
  queryString => 'auth:Bolser',
  #dataSet => 'metadata',
  resultType => 'lite',
  offSet => '0',
  synonym => 'true',
});
die "DIED2\n$result2\n" if not $result2;
print encode('utf-8', $result2), "\n";

## Test a propper method
my $result3 = $service->getCitations({
  id => '22086956',
  source => 'MED',
  offSet => '0',
});
die "DIED3\n$result3\n" if not $result3;
#print encode('utf-8', $result3), "\n";

