package MyTypes::responseWrapper;
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

my %version_of :ATTR(:get<version>);
my %hitCount_of :ATTR(:get<hitCount>);
my %request_of :ATTR(:get<request>);
my %profileList_of :ATTR(:get<profileList>);
my %resultList_of :ATTR(:get<resultList>);
my %dbCountList_of :ATTR(:get<dbCountList>);
my %dbCrossReferenceList_of :ATTR(:get<dbCrossReferenceList>);
my %citationList_of :ATTR(:get<citationList>);
my %referenceList_of :ATTR(:get<referenceList>);
my %semanticTypeCountList_of :ATTR(:get<semanticTypeCountList>);
my %semanticTypeList_of :ATTR(:get<semanticTypeList>);
my %searchTermList_of :ATTR(:get<searchTermList>);

__PACKAGE__->_factory(
    [ qw(        version
        hitCount
        request
        profileList
        resultList
        dbCountList
        dbCrossReferenceList
        citationList
        referenceList
        semanticTypeCountList
        semanticTypeList
        searchTermList

    ) ],
    {
        'version' => \%version_of,
        'hitCount' => \%hitCount_of,
        'request' => \%request_of,
        'profileList' => \%profileList_of,
        'resultList' => \%resultList_of,
        'dbCountList' => \%dbCountList_of,
        'dbCrossReferenceList' => \%dbCrossReferenceList_of,
        'citationList' => \%citationList_of,
        'referenceList' => \%referenceList_of,
        'semanticTypeCountList' => \%semanticTypeCountList_of,
        'semanticTypeList' => \%semanticTypeList_of,
        'searchTermList' => \%searchTermList_of,
    },
    {
        'version' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'hitCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'request' => 'MyTypes::request',
        'profileList' => 'MyTypes::profileListBean',
        'resultList' => 'MyTypes::resultList',
        'dbCountList' => 'MyTypes::dbCountList',
        'dbCrossReferenceList' => 'MyTypes::dbCrossReferenceList',
        'citationList' => 'MyTypes::citationList',
        'referenceList' => 'MyTypes::referencesList',
        'semanticTypeCountList' => 'MyTypes::semanticTypeCounts',
        'semanticTypeList' => 'MyTypes::minedTermsList',
        'searchTermList' => 'MyTypes::searchTerms',
    },
    {

        'version' => 'version',
        'hitCount' => 'hitCount',
        'request' => 'request',
        'profileList' => 'profileList',
        'resultList' => 'resultList',
        'dbCountList' => 'dbCountList',
        'dbCrossReferenceList' => 'dbCrossReferenceList',
        'citationList' => 'citationList',
        'referenceList' => 'referenceList',
        'semanticTypeCountList' => 'semanticTypeCountList',
        'semanticTypeList' => 'semanticTypeList',
        'searchTermList' => 'searchTermList',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::responseWrapper

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
responseWrapper from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * version


=item * hitCount


=item * request


=item * profileList


=item * resultList


=item * dbCountList


=item * dbCrossReferenceList


=item * citationList


=item * referenceList


=item * semanticTypeCountList


=item * semanticTypeList


=item * searchTermList




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::responseWrapper
   version =>  $some_value, # string
   hitCount =>  $some_value, # int
   request =>  { # MyTypes::request
     queryString =>  $some_value, # string
     dataSet =>  $some_value, # string
     resultType =>  $some_value, # string
     profileType =>  $some_value, # string
     id =>  $some_value, # string
     source =>  $some_value, # string
     offSet =>  $some_value, # int
     database =>  $some_value, # string
     semanticType =>  $some_value, # string
     synonym =>  $some_value, # boolean
     email =>  $some_value, # string
   },
   profileList =>  { # MyTypes::profileListBean
     pubType =>  { # MyTypes::profile
     },
     source =>  { # MyTypes::profile
     },
     subset =>  { # MyTypes::profile
     },
   },
   resultList =>  { # MyTypes::resultList
     result =>  { # MyTypes::result
       request =>  { # MyTypes::request
         queryString =>  $some_value, # string
         dataSet =>  $some_value, # string
         resultType =>  $some_value, # string
         profileType =>  $some_value, # string
         id =>  $some_value, # string
         source =>  $some_value, # string
         offSet =>  $some_value, # int
         database =>  $some_value, # string
         semanticType =>  $some_value, # string
         synonym =>  $some_value, # boolean
         email =>  $some_value, # string
       },
       citationId =>  $some_value, # int
       id =>  $some_value, # string
       source =>  $some_value, # string
       pmid =>  $some_value, # string
       pmcid =>  $some_value, # string
       DOI =>  $some_value, # string
       title =>  $some_value, # string
       authorList =>  { # MyTypes::authorsList
         author =>  { # MyTypes::authors
           collectiveName =>  $some_value, # string
           fullName =>  $some_value, # string
           initials =>  $some_value, # string
           lastName =>  $some_value, # string
         },
       },
       authorString =>  $some_value, # string
       journalInfo =>  { # MyTypes::journalInfo
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
       journalTitle =>  $some_value, # string
       issue =>  $some_value, # string
       journalVolume =>  $some_value, # string
       pubYear =>  $some_value, # string
       journalIssn =>  $some_value, # string
       pageInfo =>  $some_value, # string
       abstractText =>  $some_value, # string
       affiliation =>  $some_value, # string
       language =>  $some_value, # string
       pubModel =>  $some_value, # string
       pubType =>  $some_value, # string
       pubTypeList =>  { # MyTypes::pubTypeList
         pubType =>  $some_value, # string
       },
       brSummary =>  $some_value, # string
       bookOrReportDetails =>  { # MyTypes::bookOrReportDetails
         publisher =>  $some_value, # string
         dayOfPublication =>  $some_value, # byte
         monthOfPublication =>  $some_value, # byte
         yearOfPublication =>  $some_value, # short
         numberOfPages =>  $some_value, # string
         edition =>  $some_value, # string
         isbn10 =>  $some_value, # string
         isbn13 =>  $some_value, # string
         seriesName =>  $some_value, # string
         seriesIssn =>  $some_value, # string
         comprisingTitle =>  $some_value, # string
         comprisingTitleNonAscii =>  $some_value, # string
         extraInformation =>  $some_value, # string
       },
       patentDetails =>  { # MyTypes::patentDetailsInfo
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
       grantsList =>  { # MyTypes::grantsList
         grant =>  { # MyTypes::grantInfo
           grantId =>  $some_value, # string
           agency =>  $some_value, # string
           acronym =>  $some_value, # string
           orderIn =>  $some_value, # short
         },
       },
       meshHeadingList =>  { # MyTypes::meshHeadingsList
         meshHeading =>  { # MyTypes::meshHeadingInfo
           majorTopic_YN =>  $some_value, # string
           descriptorName =>  $some_value, # string
           meshQualifierList =>  { # MyTypes::meshQualifierList
             meshQualifier =>  { # MyTypes::meshQualifierInfo
               abbreviation =>  $some_value, # string
               qualifierName =>  $some_value, # string
               majorTopic_YN =>  $some_value, # string
             },
           },
         },
       },
       keywordList =>  { # MyTypes::keywordList
         keyword =>  $some_value, # string
       },
       chemicalList =>  { # MyTypes::chemicalList
         chemical =>  { # MyTypes::chemicalInfo
           name =>  $some_value, # string
           registryNumber =>  $some_value, # string
         },
       },
       subsetList =>  { # MyTypes::subSetList
         subset =>  { # MyTypes::subSet
           code =>  $some_value, # string
           name =>  $some_value, # string
         },
       },
       fullTextUrlList =>  { # MyTypes::fullTextUrlList
         fullTextUrl =>  { # MyTypes::fullTextURLInfo
           availability =>  $some_value, # string
           availabilityCode =>  $some_value, # string
           documentStyle =>  $some_value, # string
           site =>  $some_value, # string
           url =>  $some_value, # string
         },
       },
       commentCorrectionList =>  { # MyTypes::commentCorrectionList
         commentCorrection =>  { # MyTypes::commentCorrection
           id =>  $some_value, # string
           source =>  $some_value, # string
           reference =>  $some_value, # string
           type =>  $some_value, # string
           note =>  $some_value, # string
           orderIn =>  $some_value, # short
         },
       },
       extCommentList =>  { # MyTypes::extCommentBean
         extComment =>  { # MyTypes::extComment
           extCommentSource =>  $some_value, # string
           info1 =>  $some_value, # string
           info2 =>  $some_value, # string
         },
       },
       isOpenAccess =>  $some_value, # string
       inUKPMC =>  $some_value, # string
       inPMC =>  $some_value, # string
       citedByCount =>  $some_value, # int
       hasReferences =>  $some_value, # string
       hasTextMinedTerms =>  $some_value, # string
       hasDbCrossReferences =>  $some_value, # string
       dbCrossReferenceList =>  { # MyTypes::crossReferencesList
         dbName =>  $some_value, # string
       },
       hasSupplementary =>  $some_value, # string
       hasFullTextXML =>  $some_value, # string
       hasPDF =>  $some_value, # string
       dateOfCompletion =>  $some_value, # dateTime
       dateOfCreation =>  $some_value, # dateTime
       dateOfRevision =>  $some_value, # dateTime
       fullText => $some_value, # swaRef
       supplementaryFiles => $some_value, # swaRef
       luceneScore =>  $some_value, # string
     },
   },
   dbCountList =>  { # MyTypes::dbCountList
     db =>  { # MyTypes::dbCounts
       dbName =>  $some_value, # string
       count =>  $some_value, # int
     },
   },
   dbCrossReferenceList =>  { # MyTypes::dbCrossReferenceList
     dbCrossReference =>  { # MyTypes::dbCrossReference
       dbName =>  $some_value, # string
       dbCount =>  $some_value, # int
       dbCrossReferenceInfo =>  { # MyTypes::dbCrossReferenceInfo
         info1 =>  $some_value, # string
         info2 =>  $some_value, # string
         info3 =>  $some_value, # string
         info4 =>  $some_value, # string
       },
     },
   },
   citationList =>  { # MyTypes::citationList
     citation =>  { # MyTypes::CitationData
       id =>  $some_value, # string
       source =>  $some_value, # string
       citationType =>  $some_value, # string
       title =>  $some_value, # string
       authorString =>  $some_value, # string
       journalAbbreviation =>  $some_value, # string
       pubYear =>  $some_value, # int
       volume =>  $some_value, # string
       ISSN =>  $some_value, # string
       issue =>  $some_value, # string
       pageInfo =>  $some_value, # string
       citedByCount =>  $some_value, # int
       text =>  $some_value, # string
     },
   },
   referenceList =>  { # MyTypes::referencesList
     reference =>  { # MyTypes::referenceInfo
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
   },
   semanticTypeCountList =>  { # MyTypes::semanticTypeCounts
     semanticType =>  { # MyTypes::semanticCounts
       name =>  $some_value, # string
       count =>  $some_value, # int
     },
   },
   semanticTypeList =>  { # MyTypes::minedTermsList
     semanticType =>  { # MyTypes::minedTerms
       name =>  $some_value, # string
       total =>  $some_value, # int
       tmSummary =>  { # MyTypes::minedSummary
         term =>  $some_value, # string
         count =>  $some_value, # int
         altNameList =>  { # MyTypes::minedAltName
           altName =>  $some_value, # string
         },
         dbName =>  $some_value, # string
         dbIdList =>  { # MyTypes::minedDbIDs
           dbId =>  $some_value, # string
         },
       },
     },
   },
   searchTermList =>  { # MyTypes::searchTerms
     searchTerms =>  { # MyTypes::SearchTerm
       term =>  $some_value, # string
       dataSets =>  $some_value, # string
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

