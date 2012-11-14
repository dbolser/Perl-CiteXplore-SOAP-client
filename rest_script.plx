#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

use Mojolicious::Lite;

use lib qw(CXPSC);
use MyInterfaces::WSCitationImplService::WSCitationImplPort;

## Get a service 'connection'
my $service =
  MyInterfaces::WSCitationImplService::WSCitationImplPort->new();

## Default route
get '/' => sub {
    my $self = shift;
    $self->render(text => "REST API!");
};

## Use something like this to handle different format requests
get '/hello' => sub {
    my $self = shift;
    $self->respond_to(
        html => {text => 'hihi'},
        json => {json => {hello => 'world'}},
        xml  => {text => '<hello>world</hello>'},
        any  => {data => '', status => 204}
        );
};
        

## Handle GET or POST requests (we're not tight)
any [qw(GET POST)] =>

    ## We expect a method name
    '/:method' =>
    
    ## but only one from this list
    [method => [qw(
      searchPublications
      profilePublications
      getCitations
      getReferences
      getTextMinedTerms
      getDatabaseLinks
      getSupplementaryFiles
      getFulltextXML
      listSearchFields)]
    ] =>
    
    ## Now just call the method ...
    sub {
        my $self = shift;
        my $method = $self->param('method');
        my @params = $self->param;
        
        ## With all given arguments (without validation or defaults)
        my %method_args;
        for(@params){
            next if $_ eq 'method';
            $method_args{$_} = $self->param($_);
        }
        
        ## Debugging
        #$self->render(text => "Calling $method...\n". Dumper \%method_args);
        #print Dumper \%method_args;
        
        ## Call it!
        my $result = $service->$method( \%method_args );
        
        ## Spew results?
        if($result){
            $self->render(text => $result);
        }
        else{
            $self->render(text => "FAILED! : $result");
        }
};

## Silently ignore everything else? (or redirect_to? or render_not_found?)
any '/*whatever' => {text => ''};

# Start the Mojolicious command system
app->start;

