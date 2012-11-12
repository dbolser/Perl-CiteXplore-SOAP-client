package MyTypes::result;
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

my %request_of :ATTR(:get<request>);
my %citationId_of :ATTR(:get<citationId>);
my %id_of :ATTR(:get<id>);
my %source_of :ATTR(:get<source>);
my %pmid_of :ATTR(:get<pmid>);
my %pmcid_of :ATTR(:get<pmcid>);
my %DOI_of :ATTR(:get<DOI>);
my %title_of :ATTR(:get<title>);
my %authorList_of :ATTR(:get<authorList>);
my %authorString_of :ATTR(:get<authorString>);
my %journalInfo_of :ATTR(:get<journalInfo>);
my %journalTitle_of :ATTR(:get<journalTitle>);
my %issue_of :ATTR(:get<issue>);
my %journalVolume_of :ATTR(:get<journalVolume>);
my %pubYear_of :ATTR(:get<pubYear>);
my %journalIssn_of :ATTR(:get<journalIssn>);
my %pageInfo_of :ATTR(:get<pageInfo>);
my %abstractText_of :ATTR(:get<abstractText>);
my %affiliation_of :ATTR(:get<affiliation>);
my %language_of :ATTR(:get<language>);
my %pubModel_of :ATTR(:get<pubModel>);
my %pubType_of :ATTR(:get<pubType>);
my %pubTypeList_of :ATTR(:get<pubTypeList>);
my %brSummary_of :ATTR(:get<brSummary>);
my %bookOrReportDetails_of :ATTR(:get<bookOrReportDetails>);
my %patentDetails_of :ATTR(:get<patentDetails>);
my %grantsList_of :ATTR(:get<grantsList>);
my %meshHeadingList_of :ATTR(:get<meshHeadingList>);
my %keywordList_of :ATTR(:get<keywordList>);
my %chemicalList_of :ATTR(:get<chemicalList>);
my %subsetList_of :ATTR(:get<subsetList>);
my %fullTextUrlList_of :ATTR(:get<fullTextUrlList>);
my %commentCorrectionList_of :ATTR(:get<commentCorrectionList>);
my %extCommentList_of :ATTR(:get<extCommentList>);
my %isOpenAccess_of :ATTR(:get<isOpenAccess>);
my %inUKPMC_of :ATTR(:get<inUKPMC>);
my %inPMC_of :ATTR(:get<inPMC>);
my %citedByCount_of :ATTR(:get<citedByCount>);
my %hasReferences_of :ATTR(:get<hasReferences>);
my %hasTextMinedTerms_of :ATTR(:get<hasTextMinedTerms>);
my %hasDbCrossReferences_of :ATTR(:get<hasDbCrossReferences>);
my %dbCrossReferenceList_of :ATTR(:get<dbCrossReferenceList>);
my %hasSupplementary_of :ATTR(:get<hasSupplementary>);
my %hasFullTextXML_of :ATTR(:get<hasFullTextXML>);
my %hasPDF_of :ATTR(:get<hasPDF>);
my %dateOfCompletion_of :ATTR(:get<dateOfCompletion>);
my %dateOfCreation_of :ATTR(:get<dateOfCreation>);
my %dateOfRevision_of :ATTR(:get<dateOfRevision>);
my %fullText_of :ATTR(:get<fullText>);
my %supplementaryFiles_of :ATTR(:get<supplementaryFiles>);
my %luceneScore_of :ATTR(:get<luceneScore>);

__PACKAGE__->_factory(
    [ qw(        request
        citationId
        id
        source
        pmid
        pmcid
        DOI
        title
        authorList
        authorString
        journalInfo
        journalTitle
        issue
        journalVolume
        pubYear
        journalIssn
        pageInfo
        abstractText
        affiliation
        language
        pubModel
        pubType
        pubTypeList
        brSummary
        bookOrReportDetails
        patentDetails
        grantsList
        meshHeadingList
        keywordList
        chemicalList
        subsetList
        fullTextUrlList
        commentCorrectionList
        extCommentList
        isOpenAccess
        inUKPMC
        inPMC
        citedByCount
        hasReferences
        hasTextMinedTerms
        hasDbCrossReferences
        dbCrossReferenceList
        hasSupplementary
        hasFullTextXML
        hasPDF
        dateOfCompletion
        dateOfCreation
        dateOfRevision
        fullText
        supplementaryFiles
        luceneScore

    ) ],
    {
        'request' => \%request_of,
        'citationId' => \%citationId_of,
        'id' => \%id_of,
        'source' => \%source_of,
        'pmid' => \%pmid_of,
        'pmcid' => \%pmcid_of,
        'DOI' => \%DOI_of,
        'title' => \%title_of,
        'authorList' => \%authorList_of,
        'authorString' => \%authorString_of,
        'journalInfo' => \%journalInfo_of,
        'journalTitle' => \%journalTitle_of,
        'issue' => \%issue_of,
        'journalVolume' => \%journalVolume_of,
        'pubYear' => \%pubYear_of,
        'journalIssn' => \%journalIssn_of,
        'pageInfo' => \%pageInfo_of,
        'abstractText' => \%abstractText_of,
        'affiliation' => \%affiliation_of,
        'language' => \%language_of,
        'pubModel' => \%pubModel_of,
        'pubType' => \%pubType_of,
        'pubTypeList' => \%pubTypeList_of,
        'brSummary' => \%brSummary_of,
        'bookOrReportDetails' => \%bookOrReportDetails_of,
        'patentDetails' => \%patentDetails_of,
        'grantsList' => \%grantsList_of,
        'meshHeadingList' => \%meshHeadingList_of,
        'keywordList' => \%keywordList_of,
        'chemicalList' => \%chemicalList_of,
        'subsetList' => \%subsetList_of,
        'fullTextUrlList' => \%fullTextUrlList_of,
        'commentCorrectionList' => \%commentCorrectionList_of,
        'extCommentList' => \%extCommentList_of,
        'isOpenAccess' => \%isOpenAccess_of,
        'inUKPMC' => \%inUKPMC_of,
        'inPMC' => \%inPMC_of,
        'citedByCount' => \%citedByCount_of,
        'hasReferences' => \%hasReferences_of,
        'hasTextMinedTerms' => \%hasTextMinedTerms_of,
        'hasDbCrossReferences' => \%hasDbCrossReferences_of,
        'dbCrossReferenceList' => \%dbCrossReferenceList_of,
        'hasSupplementary' => \%hasSupplementary_of,
        'hasFullTextXML' => \%hasFullTextXML_of,
        'hasPDF' => \%hasPDF_of,
        'dateOfCompletion' => \%dateOfCompletion_of,
        'dateOfCreation' => \%dateOfCreation_of,
        'dateOfRevision' => \%dateOfRevision_of,
        'fullText' => \%fullText_of,
        'supplementaryFiles' => \%supplementaryFiles_of,
        'luceneScore' => \%luceneScore_of,
    },
    {
        'request' => 'MyTypes::request',
        'citationId' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'source' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pmid' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pmcid' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DOI' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'title' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'authorList' => 'MyTypes::authorsList',
        'authorString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'journalInfo' => 'MyTypes::journalInfo',
        'journalTitle' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'issue' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'journalVolume' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pubYear' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'journalIssn' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pageInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'abstractText' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'affiliation' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'language' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pubModel' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pubType' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'pubTypeList' => 'MyTypes::pubTypeList',
        'brSummary' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'bookOrReportDetails' => 'MyTypes::bookOrReportDetails',
        'patentDetails' => 'MyTypes::patentDetailsInfo',
        'grantsList' => 'MyTypes::grantsList',
        'meshHeadingList' => 'MyTypes::meshHeadingsList',
        'keywordList' => 'MyTypes::keywordList',
        'chemicalList' => 'MyTypes::chemicalList',
        'subsetList' => 'MyTypes::subSetList',
        'fullTextUrlList' => 'MyTypes::fullTextUrlList',
        'commentCorrectionList' => 'MyTypes::commentCorrectionList',
        'extCommentList' => 'MyTypes::extCommentBean',
        'isOpenAccess' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'inUKPMC' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'inPMC' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'citedByCount' => 'SOAP::WSDL::XSD::Typelib::Builtin::int',
        'hasReferences' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'hasTextMinedTerms' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'hasDbCrossReferences' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'dbCrossReferenceList' => 'MyTypes::crossReferencesList',
        'hasSupplementary' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'hasFullTextXML' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'hasPDF' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'dateOfCompletion' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'dateOfCreation' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'dateOfRevision' => 'SOAP::WSDL::XSD::Typelib::Builtin::dateTime',
        'fullText' => 'MyTypes::swaRef',
        'supplementaryFiles' => 'MyTypes::swaRef',
        'luceneScore' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'request' => 'request',
        'citationId' => 'citationId',
        'id' => 'id',
        'source' => 'source',
        'pmid' => 'pmid',
        'pmcid' => 'pmcid',
        'DOI' => 'DOI',
        'title' => 'title',
        'authorList' => 'authorList',
        'authorString' => 'authorString',
        'journalInfo' => 'journalInfo',
        'journalTitle' => 'journalTitle',
        'issue' => 'issue',
        'journalVolume' => 'journalVolume',
        'pubYear' => 'pubYear',
        'journalIssn' => 'journalIssn',
        'pageInfo' => 'pageInfo',
        'abstractText' => 'abstractText',
        'affiliation' => 'affiliation',
        'language' => 'language',
        'pubModel' => 'pubModel',
        'pubType' => 'pubType',
        'pubTypeList' => 'pubTypeList',
        'brSummary' => 'brSummary',
        'bookOrReportDetails' => 'bookOrReportDetails',
        'patentDetails' => 'patentDetails',
        'grantsList' => 'grantsList',
        'meshHeadingList' => 'meshHeadingList',
        'keywordList' => 'keywordList',
        'chemicalList' => 'chemicalList',
        'subsetList' => 'subsetList',
        'fullTextUrlList' => 'fullTextUrlList',
        'commentCorrectionList' => 'commentCorrectionList',
        'extCommentList' => 'extCommentList',
        'isOpenAccess' => 'isOpenAccess',
        'inUKPMC' => 'inUKPMC',
        'inPMC' => 'inPMC',
        'citedByCount' => 'citedByCount',
        'hasReferences' => 'hasReferences',
        'hasTextMinedTerms' => 'hasTextMinedTerms',
        'hasDbCrossReferences' => 'hasDbCrossReferences',
        'dbCrossReferenceList' => 'dbCrossReferenceList',
        'hasSupplementary' => 'hasSupplementary',
        'hasFullTextXML' => 'hasFullTextXML',
        'hasPDF' => 'hasPDF',
        'dateOfCompletion' => 'dateOfCompletion',
        'dateOfCreation' => 'dateOfCreation',
        'dateOfRevision' => 'dateOfRevision',
        'fullText' => 'fullText',
        'supplementaryFiles' => 'supplementaryFiles',
        'luceneScore' => 'luceneScore',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

MyTypes::result

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
result from the namespace http://webservice.cdb.ebi.ac.uk/.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * request


=item * citationId


=item * id


=item * source


=item * pmid


=item * pmcid


=item * DOI


=item * title


=item * authorList


=item * authorString


=item * journalInfo


=item * journalTitle


=item * issue


=item * journalVolume


=item * pubYear


=item * journalIssn


=item * pageInfo


=item * abstractText


=item * affiliation


=item * language


=item * pubModel


=item * pubType


=item * pubTypeList


=item * brSummary


=item * bookOrReportDetails


=item * patentDetails


=item * grantsList


=item * meshHeadingList


=item * keywordList


=item * chemicalList


=item * subsetList


=item * fullTextUrlList


=item * commentCorrectionList


=item * extCommentList


=item * isOpenAccess


=item * inUKPMC


=item * inPMC


=item * citedByCount


=item * hasReferences


=item * hasTextMinedTerms


=item * hasDbCrossReferences


=item * dbCrossReferenceList


=item * hasSupplementary


=item * hasFullTextXML


=item * hasPDF


=item * dateOfCompletion


=item * dateOfCreation


=item * dateOfRevision


=item * fullText


=item * supplementaryFiles


=item * luceneScore




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # MyTypes::result
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




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

