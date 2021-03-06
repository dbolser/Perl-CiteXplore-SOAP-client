package MyTypes::semanticCounts;
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

my %name_of :ATTR(:get<name>);
my %count_of :ATTR(:get<count>);

__PACKAGE__->_factory(
    [ qw(        name
        count

    ) ],
    {
        'name' => \%name_of,
        'count' => \%count_of,
    },
    {
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'count' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
    },
    {

        'name' => 'name',
        'count' => 'count',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::semanticCounts

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
semanticCounts from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * name


=item * count




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::semanticCounts
   name =>  $some_value, # string
   count =>  $some_value, # int
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

