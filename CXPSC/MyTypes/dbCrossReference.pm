package MyTypes::dbCrossReference;
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

my %dbName_of :ATTR(:get<dbName>);
my %dbCount_of :ATTR(:get<dbCount>);
my %dbCrossReferenceInfo_of :ATTR(:get<dbCrossReferenceInfo>);

__PACKAGE__->_factory(
    [ qw(        dbName
        dbCount
        dbCrossReferenceInfo

    ) ],
    {
        'dbName' => \%dbName_of,
        'dbCount' => \%dbCount_of,
        'dbCrossReferenceInfo' => \%dbCrossReferenceInfo_of,
    },
    {
        'dbName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'dbCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'dbCrossReferenceInfo' => 'MyTypes::dbCrossReferenceInfo',
    },
    {

        'dbName' => 'dbName',
        'dbCount' => 'dbCount',
        'dbCrossReferenceInfo' => 'dbCrossReferenceInfo',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::dbCrossReference

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
dbCrossReference from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * dbName


=item * dbCount


=item * dbCrossReferenceInfo




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::dbCrossReference
   dbName =>  $some_value, # string
   dbCount =>  $some_value, # int
   dbCrossReferenceInfo =>  { # MyTypes::dbCrossReferenceInfo
     info1 =>  $some_value, # string
     info2 =>  $some_value, # string
     info3 =>  $some_value, # string
     info4 =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
