package MyTypes::patentDetailsInfo;
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

my %countryCode_of :ATTR(:get<countryCode>);
my %country_of :ATTR(:get<country>);
my %typeCode_of :ATTR(:get<typeCode>);
my %typeDescription_of :ATTR(:get<typeDescription>);
my %classifierList_of :ATTR(:get<classifierList>);
my %application_of :ATTR(:get<application>);
my %priorityList_of :ATTR(:get<priorityList>);
my %familyList_of :ATTR(:get<familyList>);

__PACKAGE__->_factory(
    [ qw(        countryCode
        country
        typeCode
        typeDescription
        classifierList
        application
        priorityList
        familyList

    ) ],
    {
        'countryCode' => \%countryCode_of,
        'country' => \%country_of,
        'typeCode' => \%typeCode_of,
        'typeDescription' => \%typeDescription_of,
        'classifierList' => \%classifierList_of,
        'application' => \%application_of,
        'priorityList' => \%priorityList_of,
        'familyList' => \%familyList_of,
    },
    {
        'countryCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'country' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'typeCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'typeDescription' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'classifierList' => 'MyTypes::patentClassifierList',
        'application' => 'MyTypes::patentApplication',
        'priorityList' => 'MyTypes::patentPriorityList',
        'familyList' => 'MyTypes::patentFamilyList',
    },
    {

        'countryCode' => 'countryCode',
        'country' => 'country',
        'typeCode' => 'typeCode',
        'typeDescription' => 'typeDescription',
        'classifierList' => 'classifierList',
        'application' => 'application',
        'priorityList' => 'priorityList',
        'familyList' => 'familyList',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::patentDetailsInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
patentDetailsInfo from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * countryCode


=item * country


=item * typeCode


=item * typeDescription


=item * classifierList


=item * application


=item * priorityList


=item * familyList




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::patentDetailsInfo
   countryCode =>  $some_value, # string
   country =>  $some_value, # string
   typeCode =>  $some_value, # string
   typeDescription =>  $some_value, # string
   classifierList =>  { # MyTypes::patentClassifierList
     classifier =>  { # MyTypes::patentClassifierInfo
       classification =>  $some_value, # string
       classificationType =>  $some_value, # string
       hyperlink =>  $some_value, # string
     },
   },
   application =>  { # MyTypes::patentApplication
     applicationNumber =>  $some_value, # string
     applicationDate =>  $some_value, # dateTime
     orderIn =>  $some_value, # short
   },
   priorityList =>  { # MyTypes::patentPriorityList
     priority =>  { # MyTypes::patentPriorityData
       priorityNumber =>  $some_value, # string
       priorityDate =>  $some_value, # dateTime
       orderIn =>  $some_value, # short
     },
   },
   familyList =>  { # MyTypes::patentFamilyList
     family =>  { # MyTypes::patentFamilyData
       familyNumber =>  $some_value, # string
       orderIn =>  $some_value, # short
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

