
package MyElements::listSearchFields;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://webservice.cdb.ebi.ac.uk/' }

__PACKAGE__->__set_name('listSearchFields');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();
use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    MyTypes::listSearchFields
);

}

1;


=pod

=head1 NAME

MyElements::listSearchFields

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
listSearchFields from the namespace http://webservice.cdb.ebi.ac.uk/.







=head1 METHODS

=head2 new

 my $element = MyElements::listSearchFields->new($data);

Constructor. The following data structure may be passed to new():

 { # MyTypes::listSearchFields
   email =>  $some_value, # string
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

