package MyTypes::dbCrossReferenceInfo;
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

my %info1_of :ATTR(:get<info1>);
my %info2_of :ATTR(:get<info2>);
my %info3_of :ATTR(:get<info3>);
my %info4_of :ATTR(:get<info4>);

__PACKAGE__->_factory(
    [ qw(        info1
        info2
        info3
        info4

    ) ],
    {
        'info1' => \%info1_of,
        'info2' => \%info2_of,
        'info3' => \%info3_of,
        'info4' => \%info4_of,
    },
    {
        'info1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'info2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'info3' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'info4' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'info1' => 'info1',
        'info2' => 'info2',
        'info3' => 'info3',
        'info4' => 'info4',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::dbCrossReferenceInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
dbCrossReferenceInfo from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * info1


=item * info2


=item * info3


=item * info4




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::dbCrossReferenceInfo
   info1 =>  $some_value, # string
   info2 =>  $some_value, # string
   info3 =>  $some_value, # string
   info4 =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

