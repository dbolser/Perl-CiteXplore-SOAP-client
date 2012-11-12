package MyInterfaces::WSCitationImplService::WSCitationImplPort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require MyTypemaps::WSCitationImplService
    if not MyTypemaps::WSCitationImplService->can('get_class');

sub START {
    $_[0]->set_proxy('http://www.ebi.ac.uk:80/webservices/citexplore/v3.0.1/service') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('MyTypemaps::WSCitationImplService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub searchPublications {
    my ($self, $body, $header) = @_;
    die "searchPublications must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'searchPublications',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::searchPublications )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub profilePublications {
    my ($self, $body, $header) = @_;
    die "profilePublications must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'profilePublications',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::profilePublications )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub getCitations {
    my ($self, $body, $header) = @_;
    die "getCitations must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getCitations',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getCitations )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub getReferences {
    my ($self, $body, $header) = @_;
    die "getReferences must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getReferences',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getReferences )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub getTextMinedTerms {
    my ($self, $body, $header) = @_;
    die "getTextMinedTerms must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getTextMinedTerms',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getTextMinedTerms )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub getDatabaseLinks {
    my ($self, $body, $header) = @_;
    die "getDatabaseLinks must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getDatabaseLinks',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getDatabaseLinks )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub getSupplementaryFiles {
    my ($self, $body, $header) = @_;
    die "getSupplementaryFiles must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getSupplementaryFiles',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getSupplementaryFiles )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub getFulltextXML {
    my ($self, $body, $header) = @_;
    die "getFulltextXML must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getFulltextXML',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getFulltextXML )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub listSearchFields {
    my ($self, $body, $header) = @_;
    die "listSearchFields must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'listSearchFields',
        soap_action => '',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::listSearchFields )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

MyInterfaces::WSCitationImplService::WSCitationImplPort - SOAP Interface for the WSCitationImplService Web Service

=head1 SYNOPSIS

 use MyInterfaces::WSCitationImplService::WSCitationImplPort;
 my $interface = MyInterfaces::WSCitationImplService::WSCitationImplPort->new();

 my $response;
 $response = $interface->searchPublications();
 $response = $interface->profilePublications();
 $response = $interface->getCitations();
 $response = $interface->getReferences();
 $response = $interface->getTextMinedTerms();
 $response = $interface->getDatabaseLinks();
 $response = $interface->getSupplementaryFiles();
 $response = $interface->getFulltextXML();
 $response = $interface->listSearchFields();



=head1 DESCRIPTION

SOAP Interface for the WSCitationImplService web service
located at http://www.ebi.ac.uk:80/webservices/citexplore/v3.0.1/service.

=head1 SERVICE WSCitationImplService



=head2 Port WSCitationImplPort



=head1 METHODS

=head2 General methods

=head3 new

Constructor.

All arguments are forwarded to L<SOAP::WSDL::Client|SOAP::WSDL::Client>.

=head2 SOAP Service methods

Method synopsis is displayed with hash refs as parameters.

The commented class names in the method's parameters denote that objects
of the corresponding class can be passed instead of the marked hash ref.

You may pass any combination of objects, hash and list refs to these
methods, as long as you meet the structure.

List items (i.e. multiple occurences) are not displayed in the synopsis.
You may generally pass a list ref of hash refs (or objects) instead of a hash
ref - this may result in invalid XML if used improperly, though. Note that
SOAP::WSDL always expects list references at maximum depth position.

XML attributes are not displayed in this synopsis and cannot be set using
hash refs. See the respective class' documentation for additional information.



=head3 searchPublications



Returns a L<MyElements::searchPublicationsResponse|MyElements::searchPublicationsResponse> object.

 $response = $interface->searchPublications( { # MyTypes::searchPublications
    queryString =>  $some_value, # string
    dataSet =>  $some_value, # string
    resultType =>  $some_value, # string
    offSet =>  $some_value, # int
    synonym =>  $some_value, # boolean
    email =>  $some_value, # string
  },,
 );

=head3 profilePublications



Returns a L<MyElements::profilePublicationsResponse|MyElements::profilePublicationsResponse> object.

 $response = $interface->profilePublications( { # MyTypes::profilePublications
    queryString =>  $some_value, # string
    dataSet =>  $some_value, # string
    profileType =>  $some_value, # string
    synonym =>  $some_value, # boolean
    email =>  $some_value, # string
  },,
 );

=head3 getCitations



Returns a L<MyElements::getCitationsResponse|MyElements::getCitationsResponse> object.

 $response = $interface->getCitations( { # MyTypes::getCitations
    id =>  $some_value, # string
    source =>  $some_value, # string
    offSet =>  $some_value, # int
    email =>  $some_value, # string
  },,
 );

=head3 getReferences



Returns a L<MyElements::getReferencesResponse|MyElements::getReferencesResponse> object.

 $response = $interface->getReferences( { # MyTypes::getReferences
    id =>  $some_value, # string
    source =>  $some_value, # string
    offSet =>  $some_value, # int
    email =>  $some_value, # string
  },,
 );

=head3 getTextMinedTerms



Returns a L<MyElements::getTextMinedTermsResponse|MyElements::getTextMinedTermsResponse> object.

 $response = $interface->getTextMinedTerms( { # MyTypes::getTextMinedTerms
    id =>  $some_value, # string
    source =>  $some_value, # string
    semanticType =>  $some_value, # string
    offSet =>  $some_value, # int
    email =>  $some_value, # string
  },,
 );

=head3 getDatabaseLinks



Returns a L<MyElements::getDatabaseLinksResponse|MyElements::getDatabaseLinksResponse> object.

 $response = $interface->getDatabaseLinks( { # MyTypes::getDatabaseLinks
    id =>  $some_value, # string
    source =>  $some_value, # string
    database =>  $some_value, # string
    offSet =>  $some_value, # int
    email =>  $some_value, # string
  },,
 );

=head3 getSupplementaryFiles



Returns a L<MyElements::getSupplementaryFilesResponse|MyElements::getSupplementaryFilesResponse> object.

 $response = $interface->getSupplementaryFiles( { # MyTypes::getSupplementaryFiles
    id =>  $some_value, # string
    source =>  $some_value, # string
    email =>  $some_value, # string
  },,
 );

=head3 getFulltextXML



Returns a L<MyElements::getFulltextXMLResponse|MyElements::getFulltextXMLResponse> object.

 $response = $interface->getFulltextXML( { # MyTypes::getFulltextXML
    id =>  $some_value, # string
    source =>  $some_value, # string
    email =>  $some_value, # string
  },,
 );

=head3 listSearchFields



Returns a L<MyElements::listSearchFieldsResponse|MyElements::listSearchFieldsResponse> object.

 $response = $interface->listSearchFields( { # MyTypes::listSearchFields
    email =>  $some_value, # string
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Mon Nov 12 20:51:43 2012

=cut
