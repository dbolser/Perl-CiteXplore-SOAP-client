package MyTypes::searchTerms;
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

my %searchTerms_of :ATTR(:get<searchTerms>);

__PACKAGE__->_factory(
    [ qw(        searchTerms

    ) ],
    {
        'searchTerms' => \%searchTerms_of,
    },
    {
        'searchTerms' => 'MyTypes::SearchTerm',
    },
    {

        'searchTerms' => 'searchTerms',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::searchTerms

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
searchTerms from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * searchTerms




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::searchTerms
   searchTerms =>  { # MyTypes::SearchTerm
     term =>  $some_value, # string
     dataSets =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
