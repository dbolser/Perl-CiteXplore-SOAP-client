package MyTypes::referenceInfo;
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

my %id_of :ATTR(:get<id>);
my %source_of :ATTR(:get<source>);
my %citationType_of :ATTR(:get<citationType>);
my %title_of :ATTR(:get<title>);
my %authorString_of :ATTR(:get<authorString>);
my %journalAbbreviation_of :ATTR(:get<journalAbbreviation>);
my %issue_of :ATTR(:get<issue>);
my %pubYear_of :ATTR(:get<pubYear>);
my %volume_of :ATTR(:get<volume>);
my %ISSN_of :ATTR(:get<ISSN>);
my %ESSN_of :ATTR(:get<ESSN>);
my %ISBN_of :ATTR(:get<ISBN>);
my %pageInfo_of :ATTR(:get<pageInfo>);
my %publicationTitle_of :ATTR(:get<publicationTitle>);
my %publisherLoc_of :ATTR(:get<publisherLoc>);
my %publisherName_of :ATTR(:get<publisherName>);
my %seriesName_of :ATTR(:get<seriesName>);
my %edition_of :ATTR(:get<edition>);
my %editors_of :ATTR(:get<editors>);
my %doi_of :ATTR(:get<doi>);
my %unstructuredInformation_of :ATTR(:get<unstructuredInformation>);
my %externalLink_of :ATTR(:get<externalLink>);
my %comments_of :ATTR(:get<comments>);
my %citedOrder_of :ATTR(:get<citedOrder>);
my %match_of :ATTR(:get<match>);

__PACKAGE__->_factory(
    [ qw(        id
        source
        citationType
        title
        authorString
        journalAbbreviation
        issue
        pubYear
        volume
        ISSN
        ESSN
        ISBN
        pageInfo
        publicationTitle
        publisherLoc
        publisherName
        seriesName
        edition
        editors
        doi
        unstructuredInformation
        externalLink
        comments
        citedOrder
        match

    ) ],
    {
        'id' => \%id_of,
        'source' => \%source_of,
        'citationType' => \%citationType_of,
        'title' => \%title_of,
        'authorString' => \%authorString_of,
        'journalAbbreviation' => \%journalAbbreviation_of,
        'issue' => \%issue_of,
        'pubYear' => \%pubYear_of,
        'volume' => \%volume_of,
        'ISSN' => \%ISSN_of,
        'ESSN' => \%ESSN_of,
        'ISBN' => \%ISBN_of,
        'pageInfo' => \%pageInfo_of,
        'publicationTitle' => \%publicationTitle_of,
        'publisherLoc' => \%publisherLoc_of,
        'publisherName' => \%publisherName_of,
        'seriesName' => \%seriesName_of,
        'edition' => \%edition_of,
        'editors' => \%editors_of,
        'doi' => \%doi_of,
        'unstructuredInformation' => \%unstructuredInformation_of,
        'externalLink' => \%externalLink_of,
        'comments' => \%comments_of,
        'citedOrder' => \%citedOrder_of,
        'match' => \%match_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'source' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'citationType' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'title' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'authorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'journalAbbreviation' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'issue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pubYear' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'volume' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ISSN' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ESSN' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ISBN' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pageInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'publicationTitle' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'publisherLoc' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'publisherName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'seriesName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'edition' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'editors' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'doi' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'unstructuredInformation' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'externalLink' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'comments' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'citedOrder' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'match' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'id' => 'id',
        'source' => 'source',
        'citationType' => 'citationType',
        'title' => 'title',
        'authorString' => 'authorString',
        'journalAbbreviation' => 'journalAbbreviation',
        'issue' => 'issue',
        'pubYear' => 'pubYear',
        'volume' => 'volume',
        'ISSN' => 'ISSN',
        'ESSN' => 'ESSN',
        'ISBN' => 'ISBN',
        'pageInfo' => 'pageInfo',
        'publicationTitle' => 'publicationTitle',
        'publisherLoc' => 'publisherLoc',
        'publisherName' => 'publisherName',
        'seriesName' => 'seriesName',
        'edition' => 'edition',
        'editors' => 'editors',
        'doi' => 'doi',
        'unstructuredInformation' => 'unstructuredInformation',
        'externalLink' => 'externalLink',
        'comments' => 'comments',
        'citedOrder' => 'citedOrder',
        'match' => 'match',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::referenceInfo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
referenceInfo from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * id


=item * source


=item * citationType


=item * title


=item * authorString


=item * journalAbbreviation


=item * issue


=item * pubYear


=item * volume


=item * ISSN


=item * ESSN


=item * ISBN


=item * pageInfo


=item * publicationTitle


=item * publisherLoc


=item * publisherName


=item * seriesName


=item * edition


=item * editors


=item * doi


=item * unstructuredInformation


=item * externalLink


=item * comments


=item * citedOrder


=item * match




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::referenceInfo
   id =>  $some_value, # string
   source =>  $some_value, # string
   citationType =>  $some_value, # string
   title =>  $some_value, # string
   authorString =>  $some_value, # string
   journalAbbreviation =>  $some_value, # string
   issue =>  $some_value, # string
   pubYear =>  $some_value, # int
   volume =>  $some_value, # string
   ISSN =>  $some_value, # string
   ESSN =>  $some_value, # string
   ISBN =>  $some_value, # string
   pageInfo =>  $some_value, # string
   publicationTitle =>  $some_value, # string
   publisherLoc =>  $some_value, # string
   publisherName =>  $some_value, # string
   seriesName =>  $some_value, # string
   edition =>  $some_value, # string
   editors =>  $some_value, # string
   doi =>  $some_value, # string
   unstructuredInformation =>  $some_value, # string
   externalLink =>  $some_value, # string
   comments =>  $some_value, # string
   citedOrder =>  $some_value, # int
   match =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

