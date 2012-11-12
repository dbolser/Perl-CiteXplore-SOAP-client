package MyTypes::keywordList;
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

my %keyword_of :ATTR(:get<keyword>);

__PACKAGE__->_factory(
    [ qw(        keyword

    ) ],
    {
        'keyword' => \%keyword_of,
    },
    {
        'keyword' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'keyword' => 'keyword',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::keywordList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
keywordList from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * keyword




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::keywordList
   keyword =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
