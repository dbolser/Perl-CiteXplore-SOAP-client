
package MyElements::getSupplementaryFiles;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://webservice.cdb.ebi.ac.uk/' }

__PACKAGE__->__set_name('getSupplementaryFiles');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();
use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    MyTypes::getSupplementaryFiles
);

}

1;


=pod

=head1 NAME

MyElements::getSupplementaryFiles

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
getSupplementaryFiles from the namespace http://webservice.cdb.ebi.ac.uk/.







=head1 METHODS

=head2 new

 my $element = MyElements::getSupplementaryFiles->new($data);

Constructor. The following data structure may be passed to new():

 { # MyTypes::getSupplementaryFiles
   id =>  $some_value, # string
   source =>  $some_value, # string
   email =>  $some_value, # string
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

