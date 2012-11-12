package MyTypes::journalInfo;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(0);

sub get_xmlns { 'http://webservice.cdb.ebi.ac.uk/' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %issue_of :ATTR(:get<issue>);
my %volume_of :ATTR(:get<volume>);
my %journalIssueId_of :ATTR(:get<journalIssueId>);
my %dateOfPublication_of :ATTR(:get<dateOfPublication>);
my %monthOfPublication_of :ATTR(:get<monthOfPublication>);
my %yearOfPublication_of :ATTR(:get<yearOfPublication>);
my %journal_of :ATTR(:get<journal>);

__PACKAGE__->_factory(
    [ qw(        issue
        volume
        journalIssueId
        dateOfPublication
        monthOfPublication
        yearOfPublication
        journal

    ) ],
    {
        'issue' => \%issue_of,
        'volume' => \%volume_of,
        'journalIssueId' => \%journalIssueId_of,
        'dateOfPublication' => \%dateOfPublication_of,
        'monthOfPublication' => \%monthOfPublication_of,
        'yearOfPublication' => \%yearOfPublication_of,
        'journal' => \%journal_of,
    },
    {
        'issue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'volume' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'journalIssueId' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'dateOfPublication' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'monthOfPublication' => 'SOAP::WSDL::XSD::Typelib::Builtin::byte',
        'yearOfPublication' => 'SOAP::WSDL::XSD::Typelib::Builtin::short',
        'journal' => 'MyTypes::journal',
    },
    {

        'issue' => 'issue',
        'volume' => 'volume',
        'journalIssueId' => 'journalIssueId',
        'dateOfPublication' => 'dateOfPublication',
        'monthOfPublication' => 'monthOfPublication',
        'yearOfPublication' => 'yearOfPublication',
        'journal' => 'journal',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::journalInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
journalInfo from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * issue


=item * volume


=item * journalIssueId


=item * dateOfPublication


=item * monthOfPublication


=item * yearOfPublication


=item * journal




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::journalInfo
   issue =>  $some_value, # string
   volume =>  $some_value, # string
   journalIssueId =>  $some_value, # int
   dateOfPublication =>  $some_value, # string
   monthOfPublication =>  $some_value, # byte
   yearOfPublication =>  $some_value, # short
   journal =>  { # MyTypes::journal
     title =>  $some_value, # string
     ISOAbbreviation =>  $some_value, # string
     medlineAbbreviation =>  $some_value, # string
     NLMid =>  $some_value, # string
     ISSN =>  $some_value, # string
     ESSN =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

